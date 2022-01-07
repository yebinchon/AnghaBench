; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.TYPE_2__*, i32, %struct.ao_pull_state* }
%struct.TYPE_2__ = type { i32 (%struct.ao*)* }
%struct.ao_pull_state = type { i32, i32* }

@AO_STATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.ao_pull_state*, align 8
  %4 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 3
  %7 = load %struct.ao_pull_state*, %struct.ao_pull_state** %6, align 8
  store %struct.ao_pull_state* %7, %struct.ao_pull_state** %3, align 8
  %8 = load %struct.ao*, %struct.ao** %2, align 8
  %9 = getelementptr inbounds %struct.ao, %struct.ao* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %1
  %13 = load %struct.ao*, %struct.ao** %2, align 8
  %14 = getelementptr inbounds %struct.ao, %struct.ao* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %16, align 8
  %18 = icmp ne i32 (%struct.ao*)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.ao*, %struct.ao** %2, align 8
  %21 = getelementptr inbounds %struct.ao, %struct.ao* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %23, align 8
  %25 = load %struct.ao*, %struct.ao** %2, align 8
  %26 = call i32 %24(%struct.ao* %25)
  br label %27

27:                                               ; preds = %19, %12, %1
  %28 = load %struct.ao*, %struct.ao** %2, align 8
  %29 = load i32, i32* @AO_STATE_NONE, align 4
  %30 = call i32 @set_state(%struct.ao* %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %46, %27
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ao*, %struct.ao** %2, align 8
  %34 = getelementptr inbounds %struct.ao, %struct.ao* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.ao_pull_state*, %struct.ao_pull_state** %3, align 8
  %39 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mp_ring_reset(i32 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %31

49:                                               ; preds = %31
  %50 = load %struct.ao_pull_state*, %struct.ao_pull_state** %3, align 8
  %51 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %50, i32 0, i32 0
  %52 = call i32 @atomic_store(i32* %51, i32 0)
  ret void
}

declare dso_local i32 @set_state(%struct.ao*, i32) #1

declare dso_local i32 @mp_ring_reset(i32) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
