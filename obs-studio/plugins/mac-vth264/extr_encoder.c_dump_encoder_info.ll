; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_dump_encoder_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_dump_encoder_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_h264_encoder = type { i8*, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [357 x i8] c"settings:\0A\09vt_encoder_id          %s\0A\09bitrate:               %d (kbps)\0A\09fps_num:               %d\0A\09fps_den:               %d\0A\09width:                 %d\0A\09height:                %d\0A\09keyint:                %d (s)\0A\09limit_bitrate:         %s\0A\09rc_max_bitrate:        %d (kbps)\0A\09rc_max_bitrate_window: %f (s)\0A\09hw_enc:                %s\0A\09profile:               %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_h264_encoder*)* @dump_encoder_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_encoder_info(%struct.vt_h264_encoder* %0) #0 {
  %2 = alloca %struct.vt_h264_encoder*, align 8
  store %struct.vt_h264_encoder* %0, %struct.vt_h264_encoder** %2, align 8
  %3 = load i32, i32* @LOG_INFO, align 4
  %4 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %5 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %4, i32 0, i32 11
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %8 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %17 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %20 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %23 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %26 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %31 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %32 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %35 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %38 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %43 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %44 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %1
  %48 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %49 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %2, align 8
  %55 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  br label %58

57:                                               ; preds = %47, %1
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i8* [ %56, %53 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %57 ]
  %60 = call i32 @VT_BLOG(i32 %3, i8* getelementptr inbounds ([357 x i8], [357 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i8* %30, i32 %33, i32 %36, i8* %42, i8* %59)
  ret void
}

declare dso_local i32 @VT_BLOG(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
