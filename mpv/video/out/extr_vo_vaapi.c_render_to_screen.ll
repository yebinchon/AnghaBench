; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_render_to_screen.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_render_to_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32, %struct.vaapi_osd_part*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_8__, i64, %struct.mp_image*, i32 }
%struct.vaapi_osd_part = type { %struct.vaapi_subpic, i64 }
%struct.vaapi_subpic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mp_image = type { i32 }

@VA_INVALID_ID = common dso_local global i64 0, align 8
@IMGFMT_420P = common dso_local global i32 0, align 4
@IMGFMT_VAAPI = common dso_local global i32 0, align 4
@MAX_OSD_PARTS = common dso_local global i32 0, align 4
@VA_SUBPICTURE_DESTINATION_IS_SCREEN_COORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"vaAssociateSubpicture()\00", align 1
@VA_FRAME_PICTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"vaPutSurface()\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vaDeassociateSubpicture()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, %struct.mp_image*)* @render_to_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @render_to_screen(%struct.priv* %0, %struct.mp_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_image*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vaapi_osd_part*, align 8
  %14 = alloca %struct.vaapi_subpic*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.vaapi_osd_part*, align 8
  %19 = alloca %struct.vaapi_subpic*, align 8
  store %struct.priv* %0, %struct.priv** %4, align 8
  store %struct.mp_image* %1, %struct.mp_image** %5, align 8
  %20 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %21 = call i64 @va_surface_id(%struct.mp_image* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @VA_INVALID_ID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %86

25:                                               ; preds = %2
  %26 = load %struct.priv*, %struct.priv** %4, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 8
  %28 = load %struct.mp_image*, %struct.mp_image** %27, align 8
  %29 = icmp ne %struct.mp_image* %28, null
  br i1 %29, label %81, label %30

30:                                               ; preds = %25
  %31 = load %struct.priv*, %struct.priv** %4, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load %struct.priv*, %struct.priv** %4, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @IMGFMT_420P, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.priv*, %struct.priv** %4, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IMGFMT_VAAPI, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.mp_image* @mp_image_pool_get(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.priv*, %struct.priv** %4, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 8
  store %struct.mp_image* %46, %struct.mp_image** %48, align 8
  %49 = load %struct.priv*, %struct.priv** %4, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 8
  %51 = load %struct.mp_image*, %struct.mp_image** %50, align 8
  %52 = icmp ne %struct.mp_image* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %30
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call %struct.mp_image* @mp_image_alloc(i32 %54, i32 %55, i32 %56)
  store %struct.mp_image* %57, %struct.mp_image** %11, align 8
  %58 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %59 = icmp ne %struct.mp_image* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %53
  %61 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @mp_image_clear(%struct.mp_image* %61, i32 0, i32 0, i32 %62, i32 %63)
  %65 = load %struct.priv*, %struct.priv** %4, align 8
  %66 = load %struct.priv*, %struct.priv** %4, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 8
  %68 = load %struct.mp_image*, %struct.mp_image** %67, align 8
  %69 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %70 = call i64 @va_surface_upload(%struct.priv* %65, %struct.mp_image* %68, %struct.mp_image* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load %struct.priv*, %struct.priv** %4, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 8
  %75 = call i32 @mp_image_unrefp(%struct.mp_image** %74)
  br label %76

76:                                               ; preds = %72, %60
  %77 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %78 = call i32 @talloc_free(%struct.mp_image* %77)
  br label %79

79:                                               ; preds = %76, %53
  br label %80

80:                                               ; preds = %79, %30
  br label %81

81:                                               ; preds = %80, %25
  %82 = load %struct.priv*, %struct.priv** %4, align 8
  %83 = getelementptr inbounds %struct.priv, %struct.priv* %82, i32 0, i32 8
  %84 = load %struct.mp_image*, %struct.mp_image** %83, align 8
  %85 = call i64 @va_surface_id(%struct.mp_image* %84)
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %81, %2
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* @VA_INVALID_ID, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %269

91:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %154, %91
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @MAX_OSD_PARTS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %157

96:                                               ; preds = %92
  %97 = load %struct.priv*, %struct.priv** %4, align 8
  %98 = getelementptr inbounds %struct.priv, %struct.priv* %97, i32 0, i32 2
  %99 = load %struct.vaapi_osd_part*, %struct.vaapi_osd_part** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.vaapi_osd_part, %struct.vaapi_osd_part* %99, i64 %101
  store %struct.vaapi_osd_part* %102, %struct.vaapi_osd_part** %13, align 8
  %103 = load %struct.vaapi_osd_part*, %struct.vaapi_osd_part** %13, align 8
  %104 = getelementptr inbounds %struct.vaapi_osd_part, %struct.vaapi_osd_part* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %153

107:                                              ; preds = %96
  %108 = load %struct.vaapi_osd_part*, %struct.vaapi_osd_part** %13, align 8
  %109 = getelementptr inbounds %struct.vaapi_osd_part, %struct.vaapi_osd_part* %108, i32 0, i32 0
  store %struct.vaapi_subpic* %109, %struct.vaapi_subpic** %14, align 8
  store i32 0, i32* %15, align 4
  %110 = load %struct.priv*, %struct.priv** %4, align 8
  %111 = getelementptr inbounds %struct.priv, %struct.priv* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @VA_SUBPICTURE_DESTINATION_IS_SCREEN_COORD, align 4
  %116 = load i32, i32* %15, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.priv*, %struct.priv** %4, align 8
  %120 = getelementptr inbounds %struct.priv, %struct.priv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.vaapi_subpic*, %struct.vaapi_subpic** %14, align 8
  %123 = getelementptr inbounds %struct.vaapi_subpic, %struct.vaapi_subpic* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.vaapi_subpic*, %struct.vaapi_subpic** %14, align 8
  %126 = getelementptr inbounds %struct.vaapi_subpic, %struct.vaapi_subpic* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.vaapi_subpic*, %struct.vaapi_subpic** %14, align 8
  %129 = getelementptr inbounds %struct.vaapi_subpic, %struct.vaapi_subpic* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.vaapi_subpic*, %struct.vaapi_subpic** %14, align 8
  %132 = getelementptr inbounds %struct.vaapi_subpic, %struct.vaapi_subpic* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.vaapi_subpic*, %struct.vaapi_subpic** %14, align 8
  %135 = getelementptr inbounds %struct.vaapi_subpic, %struct.vaapi_subpic* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vaapi_subpic*, %struct.vaapi_subpic** %14, align 8
  %138 = getelementptr inbounds %struct.vaapi_subpic, %struct.vaapi_subpic* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.vaapi_subpic*, %struct.vaapi_subpic** %14, align 8
  %141 = getelementptr inbounds %struct.vaapi_subpic, %struct.vaapi_subpic* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.vaapi_subpic*, %struct.vaapi_subpic** %14, align 8
  %144 = getelementptr inbounds %struct.vaapi_subpic, %struct.vaapi_subpic* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.vaapi_subpic*, %struct.vaapi_subpic** %14, align 8
  %147 = getelementptr inbounds %struct.vaapi_subpic, %struct.vaapi_subpic* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @vaAssociateSubpicture(i32 %121, i32 %124, i64* %7, i32 1, i32 %127, i32 %130, i32 %133, i32 %136, i32 %139, i32 %142, i32 %145, i32 %148, i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load %struct.priv*, %struct.priv** %4, align 8
  %152 = call i32 @CHECK_VA_STATUS(%struct.priv* %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %118, %96
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %92

157:                                              ; preds = %92
  %158 = load %struct.priv*, %struct.priv** %4, align 8
  %159 = getelementptr inbounds %struct.priv, %struct.priv* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @va_get_colorspace_flag(i32 %162)
  %164 = load %struct.priv*, %struct.priv** %4, align 8
  %165 = getelementptr inbounds %struct.priv, %struct.priv* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %163, %166
  %168 = load i32, i32* @VA_FRAME_PICTURE, align 4
  %169 = or i32 %167, %168
  store i32 %169, i32* %16, align 4
  %170 = load %struct.priv*, %struct.priv** %4, align 8
  %171 = getelementptr inbounds %struct.priv, %struct.priv* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i64, i64* %7, align 8
  %174 = load %struct.priv*, %struct.priv** %4, align 8
  %175 = getelementptr inbounds %struct.priv, %struct.priv* %174, i32 0, i32 5
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.priv*, %struct.priv** %4, align 8
  %182 = getelementptr inbounds %struct.priv, %struct.priv* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.priv*, %struct.priv** %4, align 8
  %186 = getelementptr inbounds %struct.priv, %struct.priv* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.priv*, %struct.priv** %4, align 8
  %190 = getelementptr inbounds %struct.priv, %struct.priv* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.priv*, %struct.priv** %4, align 8
  %194 = getelementptr inbounds %struct.priv, %struct.priv* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %192, %196
  %198 = load %struct.priv*, %struct.priv** %4, align 8
  %199 = getelementptr inbounds %struct.priv, %struct.priv* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.priv*, %struct.priv** %4, align 8
  %203 = getelementptr inbounds %struct.priv, %struct.priv* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %201, %205
  %207 = load %struct.priv*, %struct.priv** %4, align 8
  %208 = getelementptr inbounds %struct.priv, %struct.priv* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.priv*, %struct.priv** %4, align 8
  %212 = getelementptr inbounds %struct.priv, %struct.priv* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.priv*, %struct.priv** %4, align 8
  %216 = getelementptr inbounds %struct.priv, %struct.priv* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.priv*, %struct.priv** %4, align 8
  %220 = getelementptr inbounds %struct.priv, %struct.priv* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = sub nsw i64 %218, %222
  %224 = load %struct.priv*, %struct.priv** %4, align 8
  %225 = getelementptr inbounds %struct.priv, %struct.priv* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.priv*, %struct.priv** %4, align 8
  %229 = getelementptr inbounds %struct.priv, %struct.priv* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = sub nsw i64 %227, %231
  %233 = load i32, i32* %16, align 4
  %234 = call i32 @vaPutSurface(i32 %172, i64 %173, i32 %180, i64 %184, i64 %188, i64 %197, i64 %206, i64 %210, i64 %214, i64 %223, i64 %232, i32* null, i32 0, i32 %233)
  store i32 %234, i32* %6, align 4
  %235 = load %struct.priv*, %struct.priv** %4, align 8
  %236 = call i32 @CHECK_VA_STATUS(%struct.priv* %235, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %237

237:                                              ; preds = %265, %157
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* @MAX_OSD_PARTS, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %268

241:                                              ; preds = %237
  %242 = load %struct.priv*, %struct.priv** %4, align 8
  %243 = getelementptr inbounds %struct.priv, %struct.priv* %242, i32 0, i32 2
  %244 = load %struct.vaapi_osd_part*, %struct.vaapi_osd_part** %243, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.vaapi_osd_part, %struct.vaapi_osd_part* %244, i64 %246
  store %struct.vaapi_osd_part* %247, %struct.vaapi_osd_part** %18, align 8
  %248 = load %struct.vaapi_osd_part*, %struct.vaapi_osd_part** %18, align 8
  %249 = getelementptr inbounds %struct.vaapi_osd_part, %struct.vaapi_osd_part* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %241
  %253 = load %struct.vaapi_osd_part*, %struct.vaapi_osd_part** %18, align 8
  %254 = getelementptr inbounds %struct.vaapi_osd_part, %struct.vaapi_osd_part* %253, i32 0, i32 0
  store %struct.vaapi_subpic* %254, %struct.vaapi_subpic** %19, align 8
  %255 = load %struct.priv*, %struct.priv** %4, align 8
  %256 = getelementptr inbounds %struct.priv, %struct.priv* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.vaapi_subpic*, %struct.vaapi_subpic** %19, align 8
  %259 = getelementptr inbounds %struct.vaapi_subpic, %struct.vaapi_subpic* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @vaDeassociateSubpicture(i32 %257, i32 %260, i64* %7, i32 1)
  store i32 %261, i32* %6, align 4
  %262 = load %struct.priv*, %struct.priv** %4, align 8
  %263 = call i32 @CHECK_VA_STATUS(%struct.priv* %262, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %264

264:                                              ; preds = %252, %241
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %17, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %17, align 4
  br label %237

268:                                              ; preds = %237
  store i32 1, i32* %3, align 4
  br label %269

269:                                              ; preds = %268, %90
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i64 @va_surface_id(%struct.mp_image*) #1

declare dso_local %struct.mp_image* @mp_image_pool_get(i32, i32, i32, i32) #1

declare dso_local %struct.mp_image* @mp_image_alloc(i32, i32, i32) #1

declare dso_local i32 @mp_image_clear(%struct.mp_image*, i32, i32, i32, i32) #1

declare dso_local i64 @va_surface_upload(%struct.priv*, %struct.mp_image*, %struct.mp_image*) #1

declare dso_local i32 @mp_image_unrefp(%struct.mp_image**) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local i32 @vaAssociateSubpicture(i32, i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHECK_VA_STATUS(%struct.priv*, i8*) #1

declare dso_local i32 @va_get_colorspace_flag(i32) #1

declare dso_local i32 @vaPutSurface(i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32, i32) #1

declare dso_local i32 @vaDeassociateSubpicture(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
