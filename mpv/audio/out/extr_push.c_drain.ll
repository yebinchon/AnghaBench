; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_push.c_drain.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_push.c_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { double, %struct.TYPE_2__*, i64, %struct.ao_push_state* }
%struct.TYPE_2__ = type { i32 (%struct.ao*)* }
%struct.ao_push_state = type { i32, i32, i32, i32, i64, i64 }
%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"draining...\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Draining is taking too long, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.ao_push_state*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.timespec, align 4
  %6 = alloca double, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %7 = load %struct.ao*, %struct.ao** %2, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 3
  %9 = load %struct.ao_push_state*, %struct.ao_push_state** %8, align 8
  store %struct.ao_push_state* %9, %struct.ao_push_state** %3, align 8
  %10 = load %struct.ao*, %struct.ao** %2, align 8
  %11 = getelementptr inbounds %struct.ao, %struct.ao* %10, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = load %struct.ao*, %struct.ao** %2, align 8
  %14 = getelementptr inbounds %struct.ao, %struct.ao* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = sitofp i64 %15 to double
  %17 = fdiv double %12, %16
  %18 = fadd double %17, 1.000000e+00
  store double %18, double* %4, align 8
  %19 = load %struct.ao*, %struct.ao** %2, align 8
  %20 = call i32 @MP_VERBOSE(%struct.ao* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %22 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %21, i32 0, i32 1
  %23 = call i32 @pthread_mutex_lock(i32* %22)
  %24 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %25 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %87

29:                                               ; preds = %1
  %30 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %31 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.ao*, %struct.ao** %2, align 8
  %33 = call i32 @wakeup_playthread(%struct.ao* %32)
  %34 = load double, double* %4, align 8
  %35 = call i32 @mp_rel_time_to_timespec(double %34)
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %60, %29
  %38 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %39 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %44 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @mp_audio_buffer_samples(i32 %45)
  %47 = icmp sgt i64 %46, 0
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i1 [ false, %37 ], [ %47, %42 ]
  br i1 %49, label %50, label %61

50:                                               ; preds = %48
  %51 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %52 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %51, i32 0, i32 2
  %53 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %54 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %53, i32 0, i32 1
  %55 = call i64 @pthread_cond_timedwait(i32* %52, i32* %54, %struct.timespec* %5)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.ao*, %struct.ao** %2, align 8
  %59 = call i32 @MP_WARN(%struct.ao* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %87

60:                                               ; preds = %50
  br label %37

61:                                               ; preds = %48
  %62 = load %struct.ao*, %struct.ao** %2, align 8
  %63 = getelementptr inbounds %struct.ao, %struct.ao* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %65, align 8
  %67 = icmp ne i32 (%struct.ao*)* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.ao*, %struct.ao** %2, align 8
  %70 = getelementptr inbounds %struct.ao, %struct.ao* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %72, align 8
  %74 = load %struct.ao*, %struct.ao** %2, align 8
  %75 = call i32 %73(%struct.ao* %74)
  br label %86

76:                                               ; preds = %61
  %77 = load %struct.ao*, %struct.ao** %2, align 8
  %78 = call double @unlocked_get_delay(%struct.ao* %77)
  store double %78, double* %6, align 8
  %79 = load double, double* %6, align 8
  %80 = load double, double* %4, align 8
  %81 = call i32 @MPMIN(double %79, double %80)
  %82 = sitofp i32 %81 to double
  %83 = fmul double %82, 1.000000e+06
  %84 = fptosi double %83 to i32
  %85 = call i32 @mp_sleep_us(i32 %84)
  br label %86

86:                                               ; preds = %76, %68
  br label %87

87:                                               ; preds = %86, %57, %28
  %88 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %89 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %88, i32 0, i32 1
  %90 = call i32 @pthread_mutex_unlock(i32* %89)
  %91 = load %struct.ao*, %struct.ao** %2, align 8
  %92 = call i32 @reset(%struct.ao* %91)
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @wakeup_playthread(%struct.ao*) #1

declare dso_local i32 @mp_rel_time_to_timespec(double) #1

declare dso_local i64 @mp_audio_buffer_samples(i32) #1

declare dso_local i64 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @MP_WARN(%struct.ao*, i8*) #1

declare dso_local double @unlocked_get_delay(%struct.ao*) #1

declare dso_local i32 @mp_sleep_us(i32) #1

declare dso_local i32 @MPMIN(double, double) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @reset(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
