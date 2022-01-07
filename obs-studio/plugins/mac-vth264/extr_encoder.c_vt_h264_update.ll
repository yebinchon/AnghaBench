; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_vt_h264_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_vt_h264_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_h264_encoder = type { i64, i32, i32, i32, i32 }

@noErr = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to set bitrate to session\00", align 1
@kVTCompressionPropertyKey_AverageBitRate = common dso_local global i32 0, align 4
@kCFNumberIntType = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"failed to update current session  bitrate from %d->%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @vt_h264_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_h264_update(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vt_h264_encoder*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.vt_h264_encoder*
  store %struct.vt_h264_encoder* %13, %struct.vt_h264_encoder** %6, align 8
  %14 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %15 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %18 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @update_params(%struct.vt_h264_encoder* %20, i32* %21)
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %31 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %82

35:                                               ; preds = %28, %2
  %36 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %37 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %40 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %43 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %46 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %49 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @session_set_bitrate(i32 %38, i64 %41, i32 %44, i32 %47, i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @noErr, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %35
  %56 = load i32, i32* @LOG_WARNING, align 4
  %57 = call i32 (i32, i8*, ...) @VT_BLOG(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %35
  %59 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %60 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @kVTCompressionPropertyKey_AverageBitRate, align 4
  %63 = call i32 @VTSessionCopyProperty(i32 %61, i32 %62, i32* null, i32* %10)
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @kCFNumberIntType, align 4
  %66 = call i32 @CFNumberGetValue(i32 %64, i32 %65, i64* %11)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @CFRelease(i32 %67)
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %58
  %73 = load i32, i32* @LOG_WARNING, align 4
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %76 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i32, i8*, ...) @VT_BLOG(i32 %73, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %77)
  br label %79

79:                                               ; preds = %72, %58
  %80 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %81 = call i32 @dump_encoder_info(%struct.vt_h264_encoder* %80)
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %34
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @update_params(%struct.vt_h264_encoder*, i32*) #1

declare dso_local i64 @session_set_bitrate(i32, i64, i32, i32, i32) #1

declare dso_local i32 @VT_BLOG(i32, i8*, ...) #1

declare dso_local i32 @VTSessionCopyProperty(i32, i32, i32*, i32*) #1

declare dso_local i32 @CFNumberGetValue(i32, i32, i64*) #1

declare dso_local i32 @CFRelease(i32) #1

declare dso_local i32 @dump_encoder_info(%struct.vt_h264_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
