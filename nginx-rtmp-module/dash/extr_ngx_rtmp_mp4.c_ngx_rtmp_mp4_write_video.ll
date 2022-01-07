; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_video.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@ngx_rtmp_codec_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"avc1\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ngx_rtmp_mp4_write_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_write_video(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %9 = call %struct.TYPE_3__* @ngx_rtmp_get_module_ctx(i32* %7, i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @ngx_rtmp_mp4_start_box(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ngx_rtmp_mp4_field_32(i32* %12, i32 0)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ngx_rtmp_mp4_field_16(i32* %14, i32 0)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ngx_rtmp_mp4_field_16(i32* %16, i32 1)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ngx_rtmp_mp4_field_16(i32* %18, i32 0)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ngx_rtmp_mp4_field_16(i32* %20, i32 0)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ngx_rtmp_mp4_field_32(i32* %22, i32 0)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ngx_rtmp_mp4_field_32(i32* %24, i32 0)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @ngx_rtmp_mp4_field_32(i32* %26, i32 0)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @ngx_rtmp_mp4_field_16(i32* %28, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @ngx_rtmp_mp4_field_16(i32* %34, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @ngx_rtmp_mp4_field_32(i32* %40, i32 4718592)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ngx_rtmp_mp4_field_32(i32* %42, i32 4718592)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ngx_rtmp_mp4_field_32(i32* %44, i32 0)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @ngx_rtmp_mp4_field_16(i32* %46, i32 1)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @ngx_rtmp_mp4_field_32(i32* %48, i32 0)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @ngx_rtmp_mp4_field_32(i32* %50, i32 0)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @ngx_rtmp_mp4_field_32(i32* %52, i32 0)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ngx_rtmp_mp4_field_32(i32* %54, i32 0)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @ngx_rtmp_mp4_field_32(i32* %56, i32 0)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @ngx_rtmp_mp4_field_32(i32* %58, i32 0)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @ngx_rtmp_mp4_field_32(i32* %60, i32 0)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @ngx_rtmp_mp4_field_32(i32* %62, i32 0)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @ngx_rtmp_mp4_field_16(i32* %64, i32 24)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @ngx_rtmp_mp4_field_16(i32* %66, i32 65535)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @ngx_rtmp_mp4_write_avcc(i32* %68, i32* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ngx_rtmp_mp4_update_box_size(i32* %71, i32* %72)
  %74 = load i32, i32* @NGX_OK, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_3__* @ngx_rtmp_get_module_ctx(i32*, i32) #1

declare dso_local i32* @ngx_rtmp_mp4_start_box(i32*, i8*) #1

declare dso_local i32 @ngx_rtmp_mp4_field_32(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_field_16(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_write_avcc(i32*, i32*) #1

declare dso_local i32 @ngx_rtmp_mp4_update_box_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
