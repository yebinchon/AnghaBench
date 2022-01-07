; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, i32, %struct.TYPE_2__*, i64, %struct.ao_pull_state* }
%struct.TYPE_2__ = type { {}* }
%struct.ao_pull_state = type { i32, i32* }

@AO_STATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.ao_pull_state*, align 8
  %4 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 5
  %7 = load %struct.ao_pull_state*, %struct.ao_pull_state** %6, align 8
  store %struct.ao_pull_state* %7, %struct.ao_pull_state** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ao*, %struct.ao** %2, align 8
  %11 = getelementptr inbounds %struct.ao, %struct.ao* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.ao*, %struct.ao** %2, align 8
  %16 = load %struct.ao*, %struct.ao** %2, align 8
  %17 = getelementptr inbounds %struct.ao, %struct.ao* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ao*, %struct.ao** %2, align 8
  %20 = getelementptr inbounds %struct.ao, %struct.ao* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = call i32 @mp_ring_new(%struct.ao* %15, i32 %22)
  %24 = load %struct.ao_pull_state*, %struct.ao_pull_state** %3, align 8
  %25 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load %struct.ao_pull_state*, %struct.ao_pull_state** %3, align 8
  %35 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %34, i32 0, i32 0
  %36 = load i32, i32* @AO_STATE_NONE, align 4
  %37 = call i32 @atomic_store(i32* %35, i32 %36)
  %38 = load %struct.ao*, %struct.ao** %2, align 8
  %39 = getelementptr inbounds %struct.ao, %struct.ao* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.ao*)**
  %43 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %42, align 8
  %44 = call i32 @assert(i32 (%struct.ao*)* %43)
  %45 = load %struct.ao*, %struct.ao** %2, align 8
  %46 = getelementptr inbounds %struct.ao, %struct.ao* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %33
  %50 = load %struct.ao*, %struct.ao** %2, align 8
  %51 = getelementptr inbounds %struct.ao, %struct.ao* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.ao*)**
  %55 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %54, align 8
  %56 = load %struct.ao*, %struct.ao** %2, align 8
  %57 = call i32 %55(%struct.ao* %56)
  br label %58

58:                                               ; preds = %49, %33
  ret i32 0
}

declare dso_local i32 @mp_ring_new(%struct.ao*, i32) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @assert(i32 (%struct.ao*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
