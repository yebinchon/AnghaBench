; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_zimg.c_setup_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_zimg.c_setup_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.mp_zimg_repack = type { i32*, i32, i32, i32, %struct.mp_image_params }
%struct.mp_image_params = type { i64, i64, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.mp_zimg_context = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.mp_regular_imgfmt = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }

@ZIMG_API_VERSION = common dso_local global i32 0, align 4
@ZIMG_COLOR_YUV = common dso_local global i64 0, align 8
@ZIMG_COLOR_GREY = common dso_local global i64 0, align 8
@MP_CSP_RGB = common dso_local global i64 0, align 8
@MP_CSP_XYZ = common dso_local global i64 0, align 8
@ZIMG_COLOR_RGB = common dso_local global i64 0, align 8
@MP_COMPONENT_TYPE_UINT = common dso_local global i64 0, align 8
@ZIMG_PIXEL_BYTE = common dso_local global i32 0, align 4
@ZIMG_PIXEL_WORD = common dso_local global i32 0, align 4
@MP_COMPONENT_TYPE_FLOAT = common dso_local global i64 0, align 8
@ZIMG_PIXEL_HALF = common dso_local global i32 0, align 4
@ZIMG_PIXEL_FLOAT = common dso_local global i32 0, align 4
@MP_CSP_LEVELS_PC = common dso_local global i64 0, align 8
@ZIMG_RANGE_FULL = common dso_local global i32 0, align 4
@ZIMG_RANGE_LIMITED = common dso_local global i32 0, align 4
@ZIMG_TRANSFER_IEC_61966_2_1 = common dso_local global i32 0, align 4
@ZIMG_TRANSFER_BT709 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.mp_zimg_repack*, %struct.mp_zimg_context*)* @setup_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_format(%struct.TYPE_12__* %0, %struct.mp_zimg_repack* %1, %struct.mp_zimg_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.mp_zimg_repack*, align 8
  %7 = alloca %struct.mp_zimg_context*, align 8
  %8 = alloca %struct.mp_image_params, align 8
  %9 = alloca %struct.mp_regular_imgfmt, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.mp_zimg_repack* %1, %struct.mp_zimg_repack** %6, align 8
  store %struct.mp_zimg_context* %2, %struct.mp_zimg_context** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = load i32, i32* @ZIMG_API_VERSION, align 4
  %14 = call i32 @zimg_image_format_default(%struct.TYPE_12__* %12, i32 %13)
  %15 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %16 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %15, i32 0, i32 4
  %17 = bitcast %struct.mp_image_params* %8 to i8*
  %18 = bitcast %struct.mp_image_params* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 56, i1 false)
  %19 = call i32 @mp_image_params_guess_csp(%struct.mp_image_params* %8)
  %20 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %23 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %25 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %30 = call i32 @setup_nv_packer(%struct.mp_zimg_repack* %29)
  br label %31

31:                                               ; preds = %28, %3
  %32 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %33 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %38 = call i32 @setup_misc_packer(%struct.mp_zimg_repack* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %41 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %46 = call i32 @setup_regular_rgb_packer(%struct.mp_zimg_repack* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %49 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mp_get_regular_imgfmt(%struct.mp_regular_imgfmt* %9, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %326

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 3
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MP_IS_POWER_OF_2(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @MP_IS_POWER_OF_2(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63, %58, %54
  store i32 0, i32* %4, align 4
  br label %326

69:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %110, %69
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %113

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 6
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %326

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 6
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %100, label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %11, align 4
  %99 = icmp sgt i32 %98, 3
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %85
  store i32 0, i32* %4, align 4
  br label %326

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %104 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 %102, i32* %109, align 4
  br label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %70

113:                                              ; preds = %70
  %114 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %6, align 8
  %117 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @MP_ALIGN_UP(i64 %119, i32 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @MP_ALIGN_UP(i64 %127, i32 %129)
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %136, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %113
  %141 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 12
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i64 %142, i64* %145, align 8
  br label %146

146:                                              ; preds = %140, %113
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %149, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 12
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  store i64 %155, i64* %158, align 8
  br label %159

159:                                              ; preds = %153, %146
  %160 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @mp_log2(i32 %161)
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 11
  store i8* %162, i8** %164, align 8
  %165 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @mp_log2(i32 %166)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 10
  store i8* %167, i8** %169, align 8
  %170 = load i64, i64* @ZIMG_COLOR_YUV, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  %173 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %180

176:                                              ; preds = %159
  %177 = load i64, i64* @ZIMG_COLOR_GREY, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  br label %197

180:                                              ; preds = %159
  %181 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @MP_CSP_RGB, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @MP_CSP_XYZ, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %186, %180
  %193 = load i64, i64* @ZIMG_COLOR_RGB, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %192, %186
  br label %197

197:                                              ; preds = %196, %176
  %198 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @MP_COMPONENT_TYPE_UINT, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load i32, i32* @ZIMG_PIXEL_BYTE, align 4
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 9
  store i32 %207, i32* %209, align 8
  br label %253

210:                                              ; preds = %202, %197
  %211 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @MP_COMPONENT_TYPE_UINT, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load i32, i32* @ZIMG_PIXEL_WORD, align 4
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 9
  store i32 %220, i32* %222, align 8
  br label %252

223:                                              ; preds = %215, %210
  %224 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @MP_COMPONENT_TYPE_FLOAT, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i32, i32* @ZIMG_PIXEL_HALF, align 4
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 9
  store i32 %233, i32* %235, align 8
  br label %251

236:                                              ; preds = %228, %223
  %237 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @MP_COMPONENT_TYPE_FLOAT, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 4
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load i32, i32* @ZIMG_PIXEL_FLOAT, align 4
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 9
  store i32 %246, i32* %248, align 8
  br label %250

249:                                              ; preds = %241, %236
  store i32 0, i32* %4, align 4
  br label %326

250:                                              ; preds = %245
  br label %251

251:                                              ; preds = %250, %232
  br label %252

252:                                              ; preds = %251, %219
  br label %253

253:                                              ; preds = %252, %206
  %254 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = mul nsw i32 %255, 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @MPMIN(i32 0, i32 %259)
  %261 = add nsw i64 %257, %260
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 8
  store i64 %261, i64* %263, align 8
  %264 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @MP_CSP_LEVELS_PC, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %253
  %270 = load i32, i32* @ZIMG_RANGE_FULL, align 4
  br label %273

271:                                              ; preds = %253
  %272 = load i32, i32* @ZIMG_RANGE_LIMITED, align 4
  br label %273

273:                                              ; preds = %271, %269
  %274 = phi i32 [ %270, %269 ], [ %272, %271 ]
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 7
  store i32 %274, i32* %276, align 8
  %277 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @mp_to_z_matrix(i64 %279)
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 6
  store i32 %280, i32* %282, align 4
  %283 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @mp_to_z_trc(i32 %285)
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 8
  %289 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @mp_to_z_prim(i32 %291)
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 5
  store i32 %292, i32* %294, align 8
  %295 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %8, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @mp_to_z_chroma(i32 %296)
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 4
  store i32 %297, i32* %299, align 4
  %300 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %7, align 8
  %301 = icmp ne %struct.mp_zimg_context* %300, null
  br i1 %301, label %302, label %325

302:                                              ; preds = %273
  %303 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %7, align 8
  %304 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %325

308:                                              ; preds = %302
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @ZIMG_TRANSFER_IEC_61966_2_1, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %324

314:                                              ; preds = %308
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @ZIMG_COLOR_RGB, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %314
  %321 = load i32, i32* @ZIMG_TRANSFER_BT709, align 4
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 8
  br label %324

324:                                              ; preds = %320, %314, %308
  br label %325

325:                                              ; preds = %324, %302, %273
  store i32 1, i32* %4, align 4
  br label %326

326:                                              ; preds = %325, %249, %100, %84, %68, %53
  %327 = load i32, i32* %4, align 4
  ret i32 %327
}

declare dso_local i32 @zimg_image_format_default(%struct.TYPE_12__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_image_params_guess_csp(%struct.mp_image_params*) #1

declare dso_local i32 @setup_nv_packer(%struct.mp_zimg_repack*) #1

declare dso_local i32 @setup_misc_packer(%struct.mp_zimg_repack*) #1

declare dso_local i32 @setup_regular_rgb_packer(%struct.mp_zimg_repack*) #1

declare dso_local i32 @mp_get_regular_imgfmt(%struct.mp_regular_imgfmt*, i32) #1

declare dso_local i32 @MP_IS_POWER_OF_2(i32) #1

declare dso_local i8* @MP_ALIGN_UP(i64, i32) #1

declare dso_local i8* @mp_log2(i32) #1

declare dso_local i64 @MPMIN(i32, i32) #1

declare dso_local i32 @mp_to_z_matrix(i64) #1

declare dso_local i32 @mp_to_z_trc(i32) #1

declare dso_local i32 @mp_to_z_prim(i32) #1

declare dso_local i32 @mp_to_z_chroma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
