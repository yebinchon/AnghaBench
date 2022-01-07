; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_stsd.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_stsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"stsd\00", align 1
@NGX_RTMP_MP4_VIDEO_TRACK = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @ngx_rtmp_mp4_write_stsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_write_stsd(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32* @ngx_rtmp_mp4_start_box(i32* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ngx_rtmp_mp4_field_32(i32* %10, i32 0)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ngx_rtmp_mp4_field_32(i32* %12, i32 1)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @NGX_RTMP_MP4_VIDEO_TRACK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ngx_rtmp_mp4_write_video(i32* %18, i32* %19)
  br label %25

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ngx_rtmp_mp4_write_audio(i32* %22, i32* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @ngx_rtmp_mp4_update_box_size(i32* %26, i32* %27)
  %29 = load i32, i32* @NGX_OK, align 4
  ret i32 %29
}

declare dso_local i32* @ngx_rtmp_mp4_start_box(i32*, i8*) #1

declare dso_local i32 @ngx_rtmp_mp4_field_32(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_write_video(i32*, i32*) #1

declare dso_local i32 @ngx_rtmp_mp4_write_audio(i32*, i32*) #1

declare dso_local i32 @ngx_rtmp_mp4_update_box_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
