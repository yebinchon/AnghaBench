; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_push.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_push.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64, i32, i32, i32, i32, %struct.ao_push_state* }
%struct.ao_push_state = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Couldn't probe device buffer size.\0A\00", align 1
@playthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.ao_push_state*, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %5 = load %struct.ao*, %struct.ao** %3, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 5
  %7 = load %struct.ao_push_state*, %struct.ao_push_state** %6, align 8
  store %struct.ao_push_state* %7, %struct.ao_push_state** %4, align 8
  %8 = load %struct.ao_push_state*, %struct.ao_push_state** %4, align 8
  %9 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %8, i32 0, i32 4
  %10 = call i32 @pthread_mutex_init(i32* %9, i32* null)
  %11 = load %struct.ao_push_state*, %struct.ao_push_state** %4, align 8
  %12 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %11, i32 0, i32 3
  %13 = call i32 @pthread_cond_init(i32* %12, i32* null)
  %14 = load %struct.ao_push_state*, %struct.ao_push_state** %4, align 8
  %15 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mp_make_wakeup_pipe(i32 %16)
  %18 = load %struct.ao*, %struct.ao** %3, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.ao*, %struct.ao** %3, align 8
  %24 = call i32 @MP_FATAL(%struct.ao* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %57

25:                                               ; preds = %1
  %26 = load %struct.ao*, %struct.ao** %3, align 8
  %27 = call i32 @mp_audio_buffer_create(%struct.ao* %26)
  %28 = load %struct.ao_push_state*, %struct.ao_push_state** %4, align 8
  %29 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ao_push_state*, %struct.ao_push_state** %4, align 8
  %31 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ao*, %struct.ao** %3, align 8
  %34 = getelementptr inbounds %struct.ao, %struct.ao* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ao*, %struct.ao** %3, align 8
  %37 = getelementptr inbounds %struct.ao, %struct.ao* %36, i32 0, i32 3
  %38 = load %struct.ao*, %struct.ao** %3, align 8
  %39 = getelementptr inbounds %struct.ao, %struct.ao* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mp_audio_buffer_reinit_fmt(i32 %32, i32 %35, i32* %37, i32 %40)
  %42 = load %struct.ao_push_state*, %struct.ao_push_state** %4, align 8
  %43 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ao*, %struct.ao** %3, align 8
  %46 = getelementptr inbounds %struct.ao, %struct.ao* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mp_audio_buffer_preallocate_min(i32 %44, i32 %47)
  %49 = load %struct.ao_push_state*, %struct.ao_push_state** %4, align 8
  %50 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %49, i32 0, i32 0
  %51 = load i32, i32* @playthread, align 4
  %52 = load %struct.ao*, %struct.ao** %3, align 8
  %53 = call i64 @pthread_create(i32* %50, i32* null, i32 %51, %struct.ao* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %25
  br label %57

56:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %60

57:                                               ; preds = %55, %22
  %58 = load %struct.ao*, %struct.ao** %3, align 8
  %59 = call i32 @destroy_no_thread(%struct.ao* %58)
  store i32 -1, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @mp_make_wakeup_pipe(i32) #1

declare dso_local i32 @MP_FATAL(%struct.ao*, i8*) #1

declare dso_local i32 @mp_audio_buffer_create(%struct.ao*) #1

declare dso_local i32 @mp_audio_buffer_reinit_fmt(i32, i32, i32*, i32) #1

declare dso_local i32 @mp_audio_buffer_preallocate_min(i32, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.ao*) #1

declare dso_local i32 @destroy_no_thread(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
