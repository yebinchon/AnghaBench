; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_media.c_mp_media_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_media.c_mp_media_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"mp_media_thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @mp_media_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_media_thread(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = call i32 @os_set_thread_name(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i32 @init_avformat(%struct.TYPE_11__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i32 @mp_media_reset(%struct.TYPE_11__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %105

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %103, %99, %65, %18
  store i32 0, i32* %7, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 5
  %22 = call i32 @pthread_mutex_lock(i32* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 5
  %28 = call i32 @pthread_mutex_unlock(i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %19
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @os_sem_wait(i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %105

38:                                               ; preds = %31
  br label %42

39:                                               ; preds = %19
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = call i32 @mp_media_sleepto(%struct.TYPE_11__* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %38
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 5
  %45 = call i32 @pthread_mutex_lock(i32* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %5, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 5
  %58 = call i32 @pthread_mutex_unlock(i32* %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %42
  br label %104

62:                                               ; preds = %42
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = call i32 @mp_media_reset(%struct.TYPE_11__* %66)
  br label %19

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %103, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = call i32 @mp_media_next_video(%struct.TYPE_11__* %80, i32 0)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = call i32 @mp_media_next_audio(%struct.TYPE_11__* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = call i32 @mp_media_prepare_frames(%struct.TYPE_11__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %105

95:                                               ; preds = %90
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = call i64 @mp_media_eof(%struct.TYPE_11__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %19

100:                                              ; preds = %95
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = call i32 @mp_media_calc_next_ns(%struct.TYPE_11__* %101)
  br label %103

103:                                              ; preds = %100, %71, %68
  br label %19

104:                                              ; preds = %61
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %94, %37, %17, %12
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @os_set_thread_name(i8*) #1

declare dso_local i32 @init_avformat(%struct.TYPE_11__*) #1

declare dso_local i32 @mp_media_reset(%struct.TYPE_11__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @os_sem_wait(i32) #1

declare dso_local i32 @mp_media_sleepto(%struct.TYPE_11__*) #1

declare dso_local i32 @mp_media_next_video(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mp_media_next_audio(%struct.TYPE_11__*) #1

declare dso_local i32 @mp_media_prepare_frames(%struct.TYPE_11__*) #1

declare dso_local i64 @mp_media_eof(%struct.TYPE_11__*) #1

declare dso_local i32 @mp_media_calc_next_ns(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
