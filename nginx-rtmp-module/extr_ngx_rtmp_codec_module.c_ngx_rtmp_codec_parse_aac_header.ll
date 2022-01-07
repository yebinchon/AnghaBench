; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_codec_module.c_ngx_rtmp_codec_parse_aac_header.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_codec_module.c_ngx_rtmp_codec_parse_aac_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@ngx_rtmp_codec_parse_aac_header.aac_sample_rates = internal global [16 x i32] [i32 96000, i32 88200, i32 64000, i32 48000, i32 44100, i32 32000, i32 24000, i32 22050, i32 16000, i32 12000, i32 11025, i32 8000, i32 7350, i32 0, i32 0, i32 0], align 16
@ngx_rtmp_codec_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"codec: aac header profile=%ui, sample_rate=%ui, chan_conf=%ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*)* @ngx_rtmp_codec_parse_aac_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_codec_parse_aac_header(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %10 = call %struct.TYPE_15__* @ngx_rtmp_get_module_ctx(%struct.TYPE_14__* %8, i32 %9)
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ngx_rtmp_bit_init_reader(i32* %7, i32 %15, i32 %20)
  %22 = call i64 @ngx_rtmp_bit_read(i32* %7, i32 16)
  %23 = call i64 @ngx_rtmp_bit_read(i32* %7, i32 5)
  %24 = trunc i64 %23 to i32
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 31
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = call i64 @ngx_rtmp_bit_read(i32* %7, i32 6)
  %33 = trunc i64 %32 to i32
  %34 = add nsw i32 %33, 32
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %2
  %38 = call i64 @ngx_rtmp_bit_read(i32* %7, i32 4)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 15
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = call i64 @ngx_rtmp_bit_read(i32* %7, i32 24)
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %54

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* @ngx_rtmp_codec_parse_aac_header.aac_sample_rates, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = call i64 @ngx_rtmp_bit_read(i32* %7, i32 4)
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 5
  br i1 %62, label %68, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 29
  br i1 %67, label %68, label %111

68:                                               ; preds = %63, %54
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 29
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 4
  store i32 1, i32* %78, align 4
  %79 = call i64 @ngx_rtmp_bit_read(i32* %7, i32 4)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 15
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = call i64 @ngx_rtmp_bit_read(i32* %7, i32 24)
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %95

88:                                               ; preds = %76
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* @ngx_rtmp_codec_parse_aac_header.aac_sample_rates, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %83
  %96 = call i64 @ngx_rtmp_bit_read(i32* %7, i32 5)
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 31
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = call i64 @ngx_rtmp_bit_read(i32* %7, i32 6)
  %106 = trunc i64 %105 to i32
  %107 = add nsw i32 %106, 32
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %95
  br label %111

111:                                              ; preds = %110, %63
  %112 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ngx_log_debug3(i32 %112, i32 %117, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %123, i32 %126)
  ret void
}

declare dso_local %struct.TYPE_15__* @ngx_rtmp_get_module_ctx(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_rtmp_bit_init_reader(i32*, i32, i32) #1

declare dso_local i64 @ngx_rtmp_bit_read(i32*, i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
