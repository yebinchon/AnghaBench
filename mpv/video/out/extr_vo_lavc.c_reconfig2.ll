; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_lavc.c_reconfig2.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_lavc.c_reconfig2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.mp_image = type { %struct.mp_image_params }
%struct.mp_image_params = type { i32, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Ignoring mid-stream parameter changes!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"resolution changes not supported.\0A\00", align 1
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Format %s not supported by lavc.\0A\00", align 1
@on_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, %struct.mp_image*)* @reconfig2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconfig2(%struct.vo* %0, %struct.mp_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.mp_image_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.vo* %0, %struct.vo** %4, align 8
  store %struct.mp_image* %1, %struct.mp_image** %5, align 8
  %15 = load %struct.vo*, %struct.vo** %4, align 8
  %16 = getelementptr inbounds %struct.vo, %struct.vo* %15, i32 0, i32 0
  %17 = load %struct.priv*, %struct.priv** %16, align 8
  store %struct.priv* %17, %struct.priv** %6, align 8
  %18 = load %struct.priv*, %struct.priv** %6, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %7, align 8
  %23 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %24 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %23, i32 0, i32 0
  store %struct.mp_image_params* %24, %struct.mp_image_params** %8, align 8
  %25 = load %struct.mp_image_params*, %struct.mp_image_params** %8, align 8
  %26 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @imgfmt2pixfmt(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %30 = load %struct.mp_image_params*, %struct.mp_image_params** %8, align 8
  %31 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %34 = load %struct.mp_image_params*, %struct.mp_image_params** %8, align 8
  %35 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  store i32 0, i32* %38, align 4
  %39 = load %struct.mp_image_params*, %struct.mp_image_params** %8, align 8
  %40 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.mp_image_params*, %struct.mp_image_params** %8, align 8
  %43 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.priv*, %struct.priv** %6, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %165

50:                                               ; preds = %2
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = call i64 @avcodec_is_open(%struct.TYPE_13__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.vo*, %struct.vo** %4, align 8
  %74 = call i32 @MP_ERR(%struct.vo* %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %165

75:                                               ; preds = %66, %60, %54
  %76 = load %struct.vo*, %struct.vo** %4, align 8
  %77 = call i32 @MP_ERR(%struct.vo* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %162

78:                                               ; preds = %50
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.vo*, %struct.vo** %4, align 8
  %84 = load %struct.mp_image_params*, %struct.mp_image_params** %8, align 8
  %85 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mp_imgfmt_to_name(i32 %86)
  %88 = call i32 @MP_FATAL(%struct.vo* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %162

89:                                               ; preds = %78
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 7
  %92 = bitcast %struct.TYPE_12__* %91 to i8*
  %93 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 4 %93, i64 16, i1 false)
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.mp_image_params*, %struct.mp_image_params** %8, align 8
  %104 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mp_csp_to_avcol_spc(i32 %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 4
  %110 = load %struct.mp_image_params*, %struct.mp_image_params** %8, align 8
  %111 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mp_csp_levels_to_avcol_range(i32 %113)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 24000, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %14, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %125 = icmp ne %struct.TYPE_12__* %124, null
  br i1 %125, label %126, label %144

126:                                              ; preds = %89
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %126
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %135 = bitcast %struct.TYPE_12__* %13 to { i64, i64 }*
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 4
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 1
  %139 = load i64, i64* %138, align 4
  %140 = call i64 @av_find_nearest_q_idx(i64 %137, i64 %139, %struct.TYPE_12__* %134)
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i64 %140
  %142 = bitcast %struct.TYPE_12__* %13 to i8*
  %143 = bitcast %struct.TYPE_12__* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 16, i1 false)
  br label %144

144:                                              ; preds = %132, %126, %89
  %145 = bitcast %struct.TYPE_12__* %13 to { i64, i64 }*
  %146 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 4
  %148 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %145, i32 0, i32 1
  %149 = load i64, i64* %148, align 4
  %150 = call i32 @av_inv_q(i64 %147, i64 %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.priv*, %struct.priv** %6, align 8
  %154 = getelementptr inbounds %struct.priv, %struct.priv* %153, i32 0, i32 1
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = load i32, i32* @on_ready, align 4
  %157 = load %struct.vo*, %struct.vo** %4, align 8
  %158 = call i32 @encoder_init_codec_and_muxer(%struct.TYPE_14__* %155, i32 %156, %struct.vo* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %144
  br label %162

161:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %165

162:                                              ; preds = %160, %82, %75
  %163 = load %struct.priv*, %struct.priv** %6, align 8
  %164 = getelementptr inbounds %struct.priv, %struct.priv* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  store i32 -1, i32* %3, align 4
  br label %165

165:                                              ; preds = %162, %161, %72, %49
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @imgfmt2pixfmt(i32) #1

declare dso_local i64 @avcodec_is_open(%struct.TYPE_13__*) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*, i32) #1

declare dso_local i32 @mp_imgfmt_to_name(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_csp_to_avcol_spc(i32) #1

declare dso_local i32 @mp_csp_levels_to_avcol_range(i32) #1

declare dso_local i64 @av_find_nearest_q_idx(i64, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @av_inv_q(i64, i64) #1

declare dso_local i32 @encoder_init_codec_and_muxer(%struct.TYPE_14__*, i32, %struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
