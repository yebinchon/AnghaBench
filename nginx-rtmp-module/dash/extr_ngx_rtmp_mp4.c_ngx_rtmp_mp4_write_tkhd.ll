; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_tkhd.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_tkhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@ngx_rtmp_codec_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tkhd\00", align 1
@NGX_RTMP_MP4_VIDEO_TRACK = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @ngx_rtmp_mp4_write_tkhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_write_tkhd(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %11 = call %struct.TYPE_3__* @ngx_rtmp_get_module_ctx(i32* %9, i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @ngx_rtmp_mp4_start_box(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @ngx_rtmp_mp4_field_8(i32* %14, i32 0)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ngx_rtmp_mp4_field_24(i32* %16, i32 15)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @ngx_rtmp_mp4_field_32(i32* %18, i32 0)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ngx_rtmp_mp4_field_32(i32* %20, i32 0)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ngx_rtmp_mp4_field_32(i32* %22, i32 1)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ngx_rtmp_mp4_field_32(i32* %24, i32 0)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @ngx_rtmp_mp4_field_32(i32* %26, i32 0)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @ngx_rtmp_mp4_field_32(i32* %28, i32 0)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ngx_rtmp_mp4_field_32(i32* %30, i32 0)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ngx_rtmp_mp4_field_32(i32* %32, i32 0)
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @NGX_RTMP_MP4_VIDEO_TRACK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 256
  %40 = call i32 @ngx_rtmp_mp4_field_16(i32* %34, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @ngx_rtmp_mp4_field_16(i32* %41, i32 0)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @ngx_rtmp_mp4_write_matrix(i32* %43, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0)
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @NGX_RTMP_MP4_VIDEO_TRACK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %3
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 16
  %55 = call i32 @ngx_rtmp_mp4_field_32(i32* %49, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = shl i32 %60, 16
  %62 = call i32 @ngx_rtmp_mp4_field_32(i32* %56, i32 %61)
  br label %68

63:                                               ; preds = %3
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @ngx_rtmp_mp4_field_32(i32* %64, i32 0)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @ngx_rtmp_mp4_field_32(i32* %66, i32 0)
  br label %68

68:                                               ; preds = %63, %48
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @ngx_rtmp_mp4_update_box_size(i32* %69, i32* %70)
  %72 = load i32, i32* @NGX_OK, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_3__* @ngx_rtmp_get_module_ctx(i32*, i32) #1

declare dso_local i32* @ngx_rtmp_mp4_start_box(i32*, i8*) #1

declare dso_local i32 @ngx_rtmp_mp4_field_8(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_field_24(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_field_32(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_field_16(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_write_matrix(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_update_box_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
