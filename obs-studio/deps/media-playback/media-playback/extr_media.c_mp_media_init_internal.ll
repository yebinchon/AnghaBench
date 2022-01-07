; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_media.c_mp_media_init_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_media.c_mp_media_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, i32, i32 }
%struct.mp_media_info = type { i32, i64, i64 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"MP: Failed to init mutex\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"MP: Failed to init semaphore\00", align 1
@mp_media_thread_start = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"MP: Could not create media thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.mp_media_info*)* @mp_media_init_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_media_init_internal(%struct.TYPE_4__* %0, %struct.mp_media_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.mp_media_info*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.mp_media_info* %1, %struct.mp_media_info** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 6
  %8 = call i64 @pthread_mutex_init(i32* %7, i32* null)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @LOG_WARNING, align 4
  %12 = call i32 @blog(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %67

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  %16 = call i64 @os_sem_init(i32* %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @LOG_WARNING, align 4
  %20 = call i32 @blog(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %67

21:                                               ; preds = %13
  %22 = load %struct.mp_media_info*, %struct.mp_media_info** %5, align 8
  %23 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.mp_media_info*, %struct.mp_media_info** %5, align 8
  %28 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32* @bstrdup(i64 %29)
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32* [ %30, %26 ], [ null, %31 ]
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  store i32* %33, i32** %35, align 8
  %36 = load %struct.mp_media_info*, %struct.mp_media_info** %5, align 8
  %37 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.mp_media_info*, %struct.mp_media_info** %5, align 8
  %42 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32* @bstrdup(i64 %43)
  br label %46

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i32* [ %44, %40 ], [ null, %45 ]
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load %struct.mp_media_info*, %struct.mp_media_info** %5, align 8
  %51 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* @mp_media_thread_start, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = call i64 @pthread_create(i32* %56, i32* null, i32 %57, %struct.TYPE_4__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %46
  %62 = load i32, i32* @LOG_WARNING, align 4
  %63 = call i32 @blog(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %67

64:                                               ; preds = %46
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %61, %18, %10
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64 @os_sem_init(i32*, i32) #1

declare dso_local i32* @bstrdup(i64) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
