; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_esds.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_esds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }

@ngx_rtmp_codec_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"esds\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*)* @ngx_rtmp_mp4_write_esds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_write_esds(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %13 = call %struct.TYPE_15__* @ngx_rtmp_get_module_ctx(i32* %11, i32 %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %10, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %15 = icmp eq %struct.TYPE_15__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = icmp eq %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @NGX_ERROR, align 4
  store i32 %22, i32* %3, align 4
  br label %98

23:                                               ; preds = %16
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %9, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %30 = icmp eq %struct.TYPE_16__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @NGX_ERROR, align 4
  store i32 %32, i32* %3, align 4
  br label %98

33:                                               ; preds = %23
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ugt i32* %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @NGX_ERROR, align 4
  store i32 %44, i32* %3, align 4
  br label %98

45:                                               ; preds = %33
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  store i64 %53, i64* %6, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = call i32* @ngx_rtmp_mp4_start_box(%struct.TYPE_16__* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %55, i32** %7, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = call i32 @ngx_rtmp_mp4_field_32(%struct.TYPE_16__* %56, i32 0)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add i64 23, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @ngx_rtmp_mp4_put_descr(%struct.TYPE_16__* %58, i32 3, i32 %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = call i32 @ngx_rtmp_mp4_field_16(%struct.TYPE_16__* %63, i32 1)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = call i32 @ngx_rtmp_mp4_field_8(%struct.TYPE_16__* %65, i32 0)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 15, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @ngx_rtmp_mp4_put_descr(%struct.TYPE_16__* %67, i32 4, i32 %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = call i32 @ngx_rtmp_mp4_field_8(%struct.TYPE_16__* %72, i32 64)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = call i32 @ngx_rtmp_mp4_field_8(%struct.TYPE_16__* %74, i32 21)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = call i32 @ngx_rtmp_mp4_field_24(%struct.TYPE_16__* %76, i32 0)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = call i32 @ngx_rtmp_mp4_field_32(%struct.TYPE_16__* %78, i32 127313)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = call i32 @ngx_rtmp_mp4_field_32(%struct.TYPE_16__* %80, i32 127309)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @ngx_rtmp_mp4_put_descr(%struct.TYPE_16__* %82, i32 5, i32 %84)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @ngx_rtmp_mp4_data(%struct.TYPE_16__* %86, i32* %87, i64 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = call i32 @ngx_rtmp_mp4_put_descr(%struct.TYPE_16__* %90, i32 6, i32 1)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = call i32 @ngx_rtmp_mp4_field_8(%struct.TYPE_16__* %92, i32 2)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @ngx_rtmp_mp4_update_box_size(%struct.TYPE_16__* %94, i32* %95)
  %97 = load i32, i32* @NGX_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %45, %43, %31, %21
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_15__* @ngx_rtmp_get_module_ctx(i32*, i32) #1

declare dso_local i32* @ngx_rtmp_mp4_start_box(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @ngx_rtmp_mp4_field_32(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_put_descr(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_field_16(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_field_8(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_field_24(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_data(%struct.TYPE_16__*, i32*, i64) #1

declare dso_local i32 @ngx_rtmp_mp4_update_box_size(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
