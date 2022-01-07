; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_aspect.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_aspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.track***, %struct.TYPE_8__*, %struct.command_ctx* }
%struct.TYPE_10__ = type { float }
%struct.track = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.mp_codec_params* }
%struct.mp_codec_params = type { float, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mp_image_params }
%struct.mp_image_params = type { i64, i64 }
%struct.command_ctx = type { i32, i32* }
%struct.m_config_option = type { %struct.m_option* }
%struct.m_option = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"video-aspect-override\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"Warning: property 'video-aspect' is deprecated, refer to 'video-params/aspect' and 'video-aspect-override'.\0A\00", align 1
@STREAM_VIDEO = common dso_local global i64 0, align 8
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%.3f (original)\00", align 1
@M_PROPERTY_ERROR = common dso_local global i32 0, align 4
@M_PROPERTY_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_aspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_aspect(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.m_config_option*, align 8
  %12 = alloca %struct.command_ctx*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.mp_image_params*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.track*, align 8
  %19 = alloca %struct.mp_codec_params*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %10, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bstr0(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = call %struct.m_config_option* @m_config_get_co_raw(i32 %24, i32 %25)
  store %struct.m_config_option* %26, %struct.m_config_option** %11, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = load %struct.command_ctx*, %struct.command_ctx** %28, align 8
  store %struct.command_ctx* %29, %struct.command_ctx** %12, align 8
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %51, %4
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.command_ctx*, %struct.command_ctx** %12, align 8
  %33 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.command_ctx*, %struct.command_ctx** %12, align 8
  %38 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.m_property*, %struct.m_property** %7, align 8
  %45 = getelementptr inbounds %struct.m_property, %struct.m_property* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @strcmp(i32 %43, i64 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %69

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = call i32 @MP_WARN(%struct.TYPE_11__* %55, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.command_ctx*, %struct.command_ctx** %12, align 8
  %58 = load %struct.command_ctx*, %struct.command_ctx** %12, align 8
  %59 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.command_ctx*, %struct.command_ctx** %12, align 8
  %62 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.m_property*, %struct.m_property** %7, align 8
  %65 = getelementptr inbounds %struct.m_property, %struct.m_property* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @MP_TARRAY_APPEND(%struct.command_ctx* %57, i32* %60, i32 %63, i8* %67)
  br label %69

69:                                               ; preds = %54, %49
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load float, float* %73, align 4
  store float %74, float* %14, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = icmp ne %struct.TYPE_8__* %77, null
  br i1 %78, label %79, label %110

79:                                               ; preds = %69
  %80 = load float, float* %14, align 4
  %81 = fcmp ole float %80, 0.000000e+00
  br i1 %81, label %82, label %110

82:                                               ; preds = %79
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store %struct.mp_image_params* %88, %struct.mp_image_params** %15, align 8
  %89 = load %struct.mp_image_params*, %struct.mp_image_params** %15, align 8
  %90 = icmp ne %struct.mp_image_params* %89, null
  br i1 %90, label %91, label %109

91:                                               ; preds = %82
  %92 = load %struct.mp_image_params*, %struct.mp_image_params** %15, align 8
  %93 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load %struct.mp_image_params*, %struct.mp_image_params** %15, align 8
  %98 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.mp_image_params*, %struct.mp_image_params** %15, align 8
  %103 = call i32 @mp_image_params_get_dsize(%struct.mp_image_params* %102, i32* %16, i32* %17)
  %104 = load i32, i32* %16, align 4
  %105 = sitofp i32 %104 to float
  %106 = load i32, i32* %17, align 4
  %107 = sitofp i32 %106 to float
  %108 = fdiv float %105, %107
  store float %108, float* %14, align 4
  br label %109

109:                                              ; preds = %101, %96, %91, %82
  br label %110

110:                                              ; preds = %109, %79, %69
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load %struct.track***, %struct.track**** %112, align 8
  %114 = getelementptr inbounds %struct.track**, %struct.track*** %113, i64 0
  %115 = load %struct.track**, %struct.track*** %114, align 8
  %116 = load i64, i64* @STREAM_VIDEO, align 8
  %117 = getelementptr inbounds %struct.track*, %struct.track** %115, i64 %116
  %118 = load %struct.track*, %struct.track** %117, align 8
  store %struct.track* %118, %struct.track** %18, align 8
  %119 = load %struct.track*, %struct.track** %18, align 8
  %120 = icmp ne %struct.track* %119, null
  br i1 %120, label %121, label %154

121:                                              ; preds = %110
  %122 = load %struct.track*, %struct.track** %18, align 8
  %123 = getelementptr inbounds %struct.track, %struct.track* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = icmp ne %struct.TYPE_9__* %124, null
  br i1 %125, label %126, label %154

126:                                              ; preds = %121
  %127 = load float, float* %14, align 4
  %128 = fcmp ole float %127, 0.000000e+00
  br i1 %128, label %129, label %154

129:                                              ; preds = %126
  %130 = load %struct.track*, %struct.track** %18, align 8
  %131 = getelementptr inbounds %struct.track, %struct.track* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.mp_codec_params*, %struct.mp_codec_params** %133, align 8
  store %struct.mp_codec_params* %134, %struct.mp_codec_params** %19, align 8
  %135 = load %struct.mp_codec_params*, %struct.mp_codec_params** %19, align 8
  %136 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %129
  %140 = load %struct.mp_codec_params*, %struct.mp_codec_params** %19, align 8
  %141 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %140, i32 0, i32 0
  %142 = load float, float* %141, align 8
  %143 = fcmp une float %142, 0.000000e+00
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load %struct.mp_codec_params*, %struct.mp_codec_params** %19, align 8
  %146 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = sitofp i64 %147 to float
  %149 = load %struct.mp_codec_params*, %struct.mp_codec_params** %19, align 8
  %150 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %149, i32 0, i32 0
  %151 = load float, float* %150, align 8
  %152 = fdiv float %148, %151
  store float %152, float* %14, align 4
  br label %153

153:                                              ; preds = %144, %139, %129
  br label %154

154:                                              ; preds = %153, %126, %121, %110
  %155 = load i32, i32* %8, align 4
  switch i32 %155, label %196 [
    i32 130, label %156
    i32 129, label %165
    i32 131, label %179
    i32 128, label %184
  ]

156:                                              ; preds = %154
  %157 = load i8*, i8** %9, align 8
  %158 = bitcast i8* %157 to %struct.m_option*
  %159 = load %struct.m_config_option*, %struct.m_config_option** %11, align 8
  %160 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %159, i32 0, i32 0
  %161 = load %struct.m_option*, %struct.m_option** %160, align 8
  %162 = bitcast %struct.m_option* %158 to i8*
  %163 = bitcast %struct.m_option* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 4 %163, i64 4, i1 false)
  %164 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %164, i32* %5, align 4
  br label %198

165:                                              ; preds = %154
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load float, float* %169, align 4
  %171 = fcmp olt float %170, 0.000000e+00
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = load float, float* %14, align 4
  %174 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), float %173)
  %175 = load i8*, i8** %9, align 8
  %176 = bitcast i8* %175 to i8**
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %177, i32* %5, align 4
  br label %198

178:                                              ; preds = %165
  br label %196

179:                                              ; preds = %154
  %180 = load float, float* %14, align 4
  %181 = load i8*, i8** %9, align 8
  %182 = bitcast i8* %181 to float*
  store float %180, float* %182, align 4
  %183 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %183, i32* %5, align 4
  br label %198

184:                                              ; preds = %154
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.m_config_option*, %struct.m_config_option** %11, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @m_config_set_option_raw_direct(i32 %187, %struct.m_config_option* %188, i8* %189, i32 0)
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i32, i32* @M_PROPERTY_ERROR, align 4
  store i32 %193, i32* %5, align 4
  br label %198

194:                                              ; preds = %184
  %195 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %195, i32* %5, align 4
  br label %198

196:                                              ; preds = %154, %178
  %197 = load i32, i32* @M_PROPERTY_NOT_IMPLEMENTED, align 4
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %196, %194, %192, %179, %172, %156
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local %struct.m_config_option* @m_config_get_co_raw(i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i64 @strcmp(i32, i64) #1

declare dso_local i32 @MP_WARN(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.command_ctx*, i32*, i32, i8*) #1

declare dso_local i32 @mp_image_params_get_dsize(%struct.mp_image_params*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @talloc_asprintf(i32*, i8*, float) #1

declare dso_local i32 @m_config_set_option_raw_direct(i32, %struct.m_config_option*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
