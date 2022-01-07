; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_parse_aac_header.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_parse_aac_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }

@ngx_rtmp_codec_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"hls: unsupported adts object type:%ui\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"hls: unsupported adts sample rate:%ui\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"hls: aac object_type:%ui, sample_rate_index:%ui, channel_config:%ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32*, i32*, i32*)* @ngx_rtmp_hls_parse_aac_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_hls_parse_aac_header(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %17 = call %struct.TYPE_14__* @ngx_rtmp_get_module_ctx(%struct.TYPE_13__* %15, i32 %16)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %11, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %12, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = call i64 @ngx_rtmp_hls_copy(%struct.TYPE_13__* %26, i32* null, i32** %12, i32 2, %struct.TYPE_15__** %11)
  %28 = load i64, i64* @NGX_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @NGX_ERROR, align 8
  store i64 %31, i64* %5, align 8
  br label %116

32:                                               ; preds = %4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = call i64 @ngx_rtmp_hls_copy(%struct.TYPE_13__* %33, i32* %13, i32** %12, i32 1, %struct.TYPE_15__** %11)
  %35 = load i64, i64* @NGX_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @NGX_ERROR, align 8
  store i64 %38, i64* %5, align 8
  br label %116

39:                                               ; preds = %32
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = call i64 @ngx_rtmp_hls_copy(%struct.TYPE_13__* %40, i32* %14, i32** %12, i32 1, %struct.TYPE_15__** %11)
  %42 = load i64, i64* @NGX_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @NGX_ERROR, align 8
  store i64 %45, i64* %5, align 8
  br label %116

46:                                               ; preds = %39
  %47 = load i32, i32* %13, align 4
  %48 = ashr i32 %47, 3
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 31
  br i1 %56, label %57, label %68

57:                                               ; preds = %53, %46
  %58 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ngx_log_debug1(i32 %58, i32 %63, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* @NGX_ERROR, align 8
  store i64 %67, i64* %5, align 8
  br label %116

68:                                               ; preds = %53
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 4
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32*, i32** %7, align 8
  store i32 2, i32* %73, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i32, i32* %13, align 4
  %76 = shl i32 %75, 1
  %77 = and i32 %76, 15
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %78, 128
  %80 = ashr i32 %79, 7
  %81 = or i32 %77, %80
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 15
  br i1 %85, label %86, label %97

86:                                               ; preds = %74
  %87 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ngx_log_debug1(i32 %87, i32 %92, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i64, i64* @NGX_ERROR, align 8
  store i64 %96, i64* %5, align 8
  br label %116

97:                                               ; preds = %74
  %98 = load i32, i32* %14, align 4
  %99 = ashr i32 %98, 3
  %100 = and i32 %99, 15
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ngx_log_debug3(i32 %102, i32 %107, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %111, i32 %113)
  %115 = load i64, i64* @NGX_OK, align 8
  store i64 %115, i64* %5, align 8
  br label %116

116:                                              ; preds = %97, %86, %57, %44, %37, %30
  %117 = load i64, i64* %5, align 8
  ret i64 %117
}

declare dso_local %struct.TYPE_14__* @ngx_rtmp_get_module_ctx(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ngx_rtmp_hls_copy(%struct.TYPE_13__*, i32*, i32**, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
