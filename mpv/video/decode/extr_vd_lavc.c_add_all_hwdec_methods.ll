; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_add_all_hwdec_methods.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_add_all_hwdec_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwdec_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i8* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_CODEC_CAP_HARDWARE = common dso_local global i32 0, align 4
@AV_CODEC_CAP_HYBRID = common dso_local global i32 0, align 4
@AV_CODEC_HW_CONFIG_METHOD_HW_FRAMES_CTX = common dso_local global i32 0, align 4
@AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cuda\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"nvdec\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AV_CODEC_HW_CONFIG_METHOD_INTERNAL = common dso_local global i32 0, align 4
@hwdec_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwdec_info**, i32*)* @add_all_hwdec_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_all_hwdec_methods(%struct.hwdec_info** %0, i32* %1) #0 {
  %3 = alloca %struct.hwdec_info**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hwdec_info, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.hwdec_info, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.hwdec_info, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.hwdec_info, align 8
  store %struct.hwdec_info** %0, %struct.hwdec_info*** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  store i8* null, i8** %6, align 8
  br label %17

17:                                               ; preds = %2, %32, %193
  %18 = call %struct.TYPE_8__* @av_codec_iterate(i8** %6)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %194

22:                                               ; preds = %17
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = call i32 @av_codec_is_decoder(%struct.TYPE_8__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %22
  br label %17

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %7, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %7, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %7, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %7, i32 0, i32 3
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %7, i32 0, i32 4
  %39 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %7, i32 0, i32 5
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %7, i32 0, i32 6
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %41, align 8
  store i8* null, i8** %8, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AV_CODEC_CAP_HARDWARE, align 4
  %47 = load i32, i32* @AV_CODEC_CAP_HYBRID, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %33
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %51, %33
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %173, %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.TYPE_7__* @avcodec_get_hw_config(%struct.TYPE_8__* %57, i32 %58)
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %11, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %176

63:                                               ; preds = %56
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AV_CODEC_HW_CONFIG_METHOD_HW_FRAMES_CTX, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %134

77:                                               ; preds = %70, %63
  %78 = bitcast %struct.hwdec_info* %12 to i8*
  %79 = bitcast %struct.hwdec_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 32, i1 false)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %12, i32 0, i32 5
  store i32 %82, i32* %83, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %12, i32 0, i32 4
  store i32 %86, i32* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @av_hwdevice_get_type_name(i32 %90)
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @assert(i8* %92)
  %94 = load i8*, i8** %13, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %77
  %98 = load i8*, i8** %8, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %101

101:                                              ; preds = %100, %97, %77
  %102 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %12, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @snprintf(i32 %103, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AV_CODEC_HW_CONFIG_METHOD_HW_FRAMES_CTX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %12, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %116

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %12, i32 0, i32 1
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = load %struct.hwdec_info**, %struct.hwdec_info*** %3, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @add_hwdec_item(%struct.hwdec_info** %117, i32* %118, %struct.hwdec_info* byval(%struct.hwdec_info) align 8 %12)
  %120 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %12, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %12, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %12, i32 0, i32 1
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %116
  %131 = load %struct.hwdec_info**, %struct.hwdec_info*** %3, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @add_hwdec_item(%struct.hwdec_info** %131, i32* %132, %struct.hwdec_info* byval(%struct.hwdec_info) align 8 %12)
  store i32 1, i32* %9, align 4
  br label %172

134:                                              ; preds = %70
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @AV_CODEC_HW_CONFIG_METHOD_INTERNAL, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %171

141:                                              ; preds = %134
  %142 = bitcast %struct.hwdec_info* %14 to i8*
  %143 = bitcast %struct.hwdec_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 32, i1 false)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %14, i32 0, i32 4
  store i32 %146, i32* %147, align 8
  %148 = load i8*, i8** %8, align 8
  store i8* %148, i8** %15, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %14, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @av_get_pix_fmt_name(i32 %153)
  store i8* %154, i8** %15, align 8
  br label %155

155:                                              ; preds = %151, %141
  %156 = load i8*, i8** %15, align 8
  %157 = call i32 @assert(i8* %156)
  %158 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %14, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %15, align 8
  %161 = call i32 @snprintf(i32 %159, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %160)
  %162 = load %struct.hwdec_info**, %struct.hwdec_info*** %3, align 8
  %163 = load i32*, i32** %4, align 8
  %164 = call i32 @add_hwdec_item(%struct.hwdec_info** %162, i32* %163, %struct.hwdec_info* byval(%struct.hwdec_info) align 8 %14)
  %165 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %14, i32 0, i32 2
  store i32 1, i32* %165, align 8
  %166 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %167 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %14, i32 0, i32 4
  store i32 %166, i32* %167, align 8
  %168 = load %struct.hwdec_info**, %struct.hwdec_info*** %3, align 8
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @add_hwdec_item(%struct.hwdec_info** %168, i32* %169, %struct.hwdec_info* byval(%struct.hwdec_info) align 8 %14)
  store i32 1, i32* %9, align 4
  br label %171

171:                                              ; preds = %155, %134
  br label %172

172:                                              ; preds = %171, %130
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %56

176:                                              ; preds = %62
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %193, label %179

179:                                              ; preds = %176
  %180 = load i8*, i8** %8, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %193

182:                                              ; preds = %179
  %183 = bitcast %struct.hwdec_info* %16 to i8*
  %184 = bitcast %struct.hwdec_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %183, i8* align 8 %184, i64 32, i1 false)
  %185 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %16, i32 0, i32 2
  store i32 1, i32* %185, align 8
  %186 = getelementptr inbounds %struct.hwdec_info, %struct.hwdec_info* %16, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i8*, i8** %8, align 8
  %189 = call i32 @snprintf(i32 %187, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %188)
  %190 = load %struct.hwdec_info**, %struct.hwdec_info*** %3, align 8
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @add_hwdec_item(%struct.hwdec_info** %190, i32* %191, %struct.hwdec_info* byval(%struct.hwdec_info) align 8 %16)
  br label %193

193:                                              ; preds = %182, %179, %176
  br label %17

194:                                              ; preds = %21
  %195 = load %struct.hwdec_info**, %struct.hwdec_info*** %3, align 8
  %196 = load %struct.hwdec_info*, %struct.hwdec_info** %195, align 8
  %197 = load i32*, i32** %4, align 8
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @hwdec_compare, align 4
  %200 = call i32 @qsort(%struct.hwdec_info* %196, i32 %198, i32 32, i32 %199)
  ret void
}

declare dso_local %struct.TYPE_8__* @av_codec_iterate(i8**) #1

declare dso_local i32 @av_codec_is_decoder(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @avcodec_get_hw_config(%struct.TYPE_8__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @av_hwdevice_get_type_name(i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @add_hwdec_item(%struct.hwdec_info**, i32*, %struct.hwdec_info* byval(%struct.hwdec_info) align 8) #1

declare dso_local i8* @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @qsort(%struct.hwdec_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
