; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_drain.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64, %struct.ao_pull_state* }
%struct.ao_pull_state = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.ao_pull_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %6 = load %struct.ao*, %struct.ao** %2, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 1
  %8 = load %struct.ao_pull_state*, %struct.ao_pull_state** %7, align 8
  store %struct.ao_pull_state* %8, %struct.ao_pull_state** %3, align 8
  %9 = load %struct.ao_pull_state*, %struct.ao_pull_state** %3, align 8
  %10 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %9, i32 0, i32 2
  %11 = call i32 @atomic_load(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @IS_PLAYING(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %1
  %16 = load %struct.ao_pull_state*, %struct.ao_pull_state** %3, align 8
  %17 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %16, i32 0, i32 1
  %18 = call i32 @atomic_store(i32* %17, i32 1)
  %19 = load %struct.ao_pull_state*, %struct.ao_pull_state** %3, align 8
  %20 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call double @mp_ring_buffered(i32 %23)
  %25 = load %struct.ao*, %struct.ao** %2, align 8
  %26 = getelementptr inbounds %struct.ao, %struct.ao* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to double
  %29 = fdiv double %24, %28
  %30 = fmul double %29, 1.000000e+06
  %31 = fptosi double %30 to i32
  %32 = call i32 @mp_sleep_us(i32 %31)
  %33 = call i64 (...) @mp_time_us()
  %34 = add nsw i64 %33, 250000
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %46, %15
  %36 = call i64 (...) @mp_time_us()
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.ao*, %struct.ao** %2, align 8
  %41 = call i32 @get_eof(%struct.ao* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = call i32 @mp_sleep_us(i32 1)
  br label %35

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.ao*, %struct.ao** %2, align 8
  %51 = call i32 @reset(%struct.ao* %50)
  ret void
}

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local i64 @IS_PLAYING(i32) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @mp_sleep_us(i32) #1

declare dso_local double @mp_ring_buffered(i32) #1

declare dso_local i64 @mp_time_us(...) #1

declare dso_local i32 @get_eof(%struct.ao*) #1

declare dso_local i32 @reset(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
