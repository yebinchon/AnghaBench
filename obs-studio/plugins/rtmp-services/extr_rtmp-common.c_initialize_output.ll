; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_initialize_output.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_initialize_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_common = type { i64* }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"rtmp-common.c: [initialize_output] Could not find service '%s'\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"recommended\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtmp_common*, i32*, i32*, i32*)* @initialize_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_output(%struct.rtmp_common* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.rtmp_common*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.rtmp_common* %0, %struct.rtmp_common** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %13 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = call i32* @find_service(i32* %11, i64* %14, i32* null)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %4
  %19 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %20 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %25 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @LOG_WARNING, align 4
  %31 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %32 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 @blog(i32 %30, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64* %33)
  br label %35

35:                                               ; preds = %29, %23, %18
  br label %56

36:                                               ; preds = %4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32* @json_object_get(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %56

42:                                               ; preds = %36
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @apply_video_encoder_settings(i32* %46, i32* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32*, i32** %8, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @apply_audio_encoder_settings(i32* %53, i32* %54)
  br label %56

56:                                               ; preds = %35, %41, %52, %49
  ret void
}

declare dso_local i32* @find_service(i32*, i64*, i32*) #1

declare dso_local i32 @blog(i32, i8*, i64*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i32 @apply_video_encoder_settings(i32*, i32*) #1

declare dso_local i32 @apply_audio_encoder_settings(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
