; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_push.c_play.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_push.c_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.ao_push_state* }
%struct.ao_push_state = type { i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"samples=%d flags=%d r=%d\0A\00", align 1
@AOPLAY_FINAL_CHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i8**, i32, i32)* @play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play(%struct.ao* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ao_push_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ao*, %struct.ao** %5, align 8
  %14 = getelementptr inbounds %struct.ao, %struct.ao* %13, i32 0, i32 0
  %15 = load %struct.ao_push_state*, %struct.ao_push_state** %14, align 8
  store %struct.ao_push_state* %15, %struct.ao_push_state** %9, align 8
  %16 = load %struct.ao_push_state*, %struct.ao_push_state** %9, align 8
  %17 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %16, i32 0, i32 3
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  %19 = load %struct.ao_push_state*, %struct.ao_push_state** %9, align 8
  %20 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mp_audio_buffer_get_write_available(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @MPMIN(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ao*, %struct.ao** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @MP_TRACE(%struct.ao* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %34, %4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ao_push_state*, %struct.ao_push_state** %9, align 8
  %44 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mp_audio_buffer_append(i32 %45, i8** %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %39
  %52 = load %struct.ao_push_state*, %struct.ao_push_state** %9, align 8
  %53 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.ao_push_state*, %struct.ao_push_state** %9, align 8
  %58 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %59, %60
  br label %62

62:                                               ; preds = %56, %51, %39
  %63 = phi i1 [ true, %51 ], [ true, %39 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.ao_push_state*, %struct.ao_push_state** %9, align 8
  %67 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ao_push_state*, %struct.ao_push_state** %9, align 8
  %69 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load %struct.ao_push_state*, %struct.ao_push_state** %9, align 8
  %74 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.ao_push_state*, %struct.ao_push_state** %9, align 8
  %76 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.ao*, %struct.ao** %5, align 8
  %78 = call i32 @wakeup_playthread(%struct.ao* %77)
  br label %79

79:                                               ; preds = %72, %62
  %80 = load %struct.ao_push_state*, %struct.ao_push_state** %9, align 8
  %81 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %80, i32 0, i32 3
  %82 = call i32 @pthread_mutex_unlock(i32* %81)
  %83 = load i32, i32* %10, align 4
  ret i32 %83
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mp_audio_buffer_get_write_available(i32) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @MP_TRACE(%struct.ao*, i8*, i32, i32, i32) #1

declare dso_local i32 @mp_audio_buffer_append(i32, i8**, i32) #1

declare dso_local i32 @wakeup_playthread(%struct.ao*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
