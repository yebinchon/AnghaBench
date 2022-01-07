; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_write_color_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_write_color_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_39__, %struct.TYPE_29__*, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, i64 }
%struct.TYPE_39__ = type { i32 (%struct.TYPE_30__*, i32, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_30__*, i32)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)* }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_38__ = type { i64, i64, i64, i64 }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i64 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i64 0, align 8
@WINCLIP_BIT = common dso_local global i32 0, align 4
@GL_BITMAP = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i64 0, align 8
@FRONT_AND_BACK_BIT = common dso_local global i32 0, align 4
@GL_NICEST = common dso_local global i64 0, align 8
@GL_POLYGON = common dso_local global i64 0, align 8
@NO_DRAW_BIT = common dso_local global i32 0, align 4
@ALPHABUF_BIT = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_write_color_span(%struct.TYPE_30__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i64 %9, i64* %20, align 8
  %34 = load i32, i32* @MAX_WIDTH, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %21, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %22, align 8
  %38 = load i64, i64* @GL_TRUE, align 8
  store i64 %38, i64* %23, align 8
  %39 = load i32, i32* @MAX_WIDTH, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %24, align 8
  %42 = load i32, i32* @MAX_WIDTH, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %25, align 8
  %45 = load i32, i32* @MAX_WIDTH, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %26, align 8
  %48 = load i32, i32* @MAX_WIDTH, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %27, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @MEMSET(i32* %37, i32 1, i32 %51)
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WINCLIP_BIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %10
  %60 = load i64, i64* %20, align 8
  %61 = load i64, i64* @GL_BITMAP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59, %10
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i64 @clip_span(%struct.TYPE_30__* %64, i32 %65, i32 %66, i32 %67, i32* %37)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 1, i32* %32, align 4
  br label %498

71:                                               ; preds = %63
  %72 = load i64, i64* @GL_FALSE, align 8
  store i64 %72, i64* %23, align 8
  br label %73

73:                                               ; preds = %71, %59
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* @GL_BITMAP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 11
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %77, %73
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %82, %77
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @MEMCPY(i32* %41, i32* %90, i32 %94)
  %96 = load i32*, i32** %17, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = call i32 @MEMCPY(i32* %44, i32* %96, i32 %100)
  %102 = load i32*, i32** %18, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 @MEMCPY(i32* %47, i32* %102, i32 %106)
  %108 = load i32*, i32** %19, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i32 @MEMCPY(i32* %50, i32* %108, i32 %112)
  store i32* %41, i32** %28, align 8
  store i32* %44, i32** %29, align 8
  store i32* %47, i32** %30, align 8
  store i32* %50, i32** %31, align 8
  br label %119

114:                                              ; preds = %82
  %115 = load i32*, i32** %16, align 8
  store i32* %115, i32** %28, align 8
  %116 = load i32*, i32** %17, align 8
  store i32* %116, i32** %29, align 8
  %117 = load i32*, i32** %18, align 8
  store i32* %117, i32** %30, align 8
  %118 = load i32*, i32** %19, align 8
  store i32* %118, i32** %31, align 8
  br label %119

119:                                              ; preds = %114, %89
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 10
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %119
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @GL_NICEST, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %142, label %132

132:                                              ; preds = %125
  %133 = load i64, i64* %20, align 8
  %134 = load i64, i64* @GL_BITMAP, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %132
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %136, %132, %125
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32*, i32** %15, align 8
  %146 = load i32*, i32** %28, align 8
  %147 = load i32*, i32** %29, align 8
  %148 = load i32*, i32** %30, align 8
  %149 = load i32*, i32** %31, align 8
  %150 = call i32 @gl_fog_color_pixels(%struct.TYPE_30__* %143, i32 %144, i32* %145, i32* %146, i32* %147, i32* %148, i32* %149)
  br label %151

151:                                              ; preds = %142, %136, %119
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i64 @gl_scissor_span(%struct.TYPE_30__* %158, i32 %159, i32 %160, i32 %161, i32* %37)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i32 1, i32* %32, align 4
  br label %498

165:                                              ; preds = %157
  %166 = load i64, i64* @GL_FALSE, align 8
  store i64 %166, i64* %23, align 8
  br label %167

167:                                              ; preds = %165, %151
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %167
  %174 = load i64, i64* %20, align 8
  %175 = load i64, i64* @GL_POLYGON, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @stipple_polygon_span(%struct.TYPE_30__* %178, i32 %179, i32 %180, i32 %181, i32* %37)
  %183 = load i64, i64* @GL_FALSE, align 8
  store i64 %183, i64* %23, align 8
  br label %184

184:                                              ; preds = %177, %173, %167
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %184
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load i32*, i32** %31, align 8
  %194 = call i64 @gl_alpha_test(%struct.TYPE_30__* %191, i32 %192, i32* %193, i32* %37)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  store i32 1, i32* %32, align 4
  br label %498

197:                                              ; preds = %190
  %198 = load i64, i64* @GL_FALSE, align 8
  store i64 %198, i64* %23, align 8
  br label %199

199:                                              ; preds = %197, %184
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %221

205:                                              ; preds = %199
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %14, align 4
  %210 = call i64 @gl_stencil_span(%struct.TYPE_30__* %206, i32 %207, i32 %208, i32 %209, i32* %37)
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  store i32 1, i32* %32, align 4
  br label %498

213:                                              ; preds = %205
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %14, align 4
  %218 = load i32*, i32** %15, align 8
  %219 = call i32 @gl_depth_stencil_span(%struct.TYPE_30__* %214, i32 %215, i32 %216, i32 %217, i32* %218, i32* %37)
  %220 = load i64, i64* @GL_FALSE, align 8
  store i64 %220, i64* %23, align 8
  br label %249

221:                                              ; preds = %199
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %248

227:                                              ; preds = %221
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %229, i32 0, i32 0
  %231 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32*, i32*)** %230, align 8
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %14, align 4
  %236 = load i32*, i32** %15, align 8
  %237 = call i32 %231(%struct.TYPE_30__* %232, i32 %233, i32 %234, i32 %235, i32* %236, i32* %37)
  store i32 %237, i32* %33, align 4
  %238 = load i32, i32* %33, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %227
  store i32 1, i32* %32, align 4
  br label %498

241:                                              ; preds = %227
  %242 = load i32, i32* %33, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = load i64, i64* @GL_FALSE, align 8
  store i64 %246, i64* %23, align 8
  br label %247

247:                                              ; preds = %245, %241
  br label %248

248:                                              ; preds = %247, %221
  br label %249

249:                                              ; preds = %248, %213
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @NO_DRAW_BIT, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  store i32 1, i32* %32, align 4
  br label %498

257:                                              ; preds = %249
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %257
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* %14, align 4
  %268 = load i32*, i32** %28, align 8
  %269 = load i32*, i32** %29, align 8
  %270 = load i32*, i32** %30, align 8
  %271 = load i32*, i32** %31, align 8
  %272 = call i32 @gl_logicop_rgba_span(%struct.TYPE_30__* %264, i32 %265, i32 %266, i32 %267, i32* %268, i32* %269, i32* %270, i32* %271, i32* %37)
  br label %290

273:                                              ; preds = %257
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %273
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %14, align 4
  %284 = load i32*, i32** %28, align 8
  %285 = load i32*, i32** %29, align 8
  %286 = load i32*, i32** %30, align 8
  %287 = load i32*, i32** %31, align 8
  %288 = call i32 @gl_blend_span(%struct.TYPE_30__* %280, i32 %281, i32 %282, i32 %283, i32* %284, i32* %285, i32* %286, i32* %287, i32* %37)
  br label %289

289:                                              ; preds = %279, %273
  br label %290

290:                                              ; preds = %289, %263
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %290
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* %14, align 4
  %301 = load i32*, i32** %28, align 8
  %302 = load i32*, i32** %29, align 8
  %303 = load i32*, i32** %30, align 8
  %304 = load i32*, i32** %31, align 8
  %305 = call i32 @gl_mask_color_span(%struct.TYPE_30__* %297, i32 %298, i32 %299, i32 %300, i32* %301, i32* %302, i32* %303, i32* %304)
  br label %306

306:                                              ; preds = %296, %290
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %308, i32 0, i32 2
  %310 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)** %309, align 8
  %311 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* %14, align 4
  %315 = load i32*, i32** %28, align 8
  %316 = load i32*, i32** %29, align 8
  %317 = load i32*, i32** %30, align 8
  %318 = load i32*, i32** %31, align 8
  %319 = load i64, i64* %23, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %306
  br label %323

322:                                              ; preds = %306
  br label %323

323:                                              ; preds = %322, %321
  %324 = phi i32* [ null, %321 ], [ %37, %322 ]
  %325 = call i32 %310(%struct.TYPE_30__* %311, i32 %312, i32 %313, i32 %314, i32* %315, i32* %316, i32* %317, i32* %318, i32* %324)
  %326 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @ALPHABUF_BIT, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %345

332:                                              ; preds = %323
  %333 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* %13, align 4
  %336 = load i32, i32* %14, align 4
  %337 = load i32*, i32** %31, align 8
  %338 = load i64, i64* %23, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %332
  br label %342

341:                                              ; preds = %332
  br label %342

342:                                              ; preds = %341, %340
  %343 = phi i32* [ null, %340 ], [ %37, %341 ]
  %344 = call i32 @gl_write_alpha_span(%struct.TYPE_30__* %333, i32 %334, i32 %335, i32 %336, i32* %337, i32* %343)
  br label %345

345:                                              ; preds = %342, %323
  %346 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %347 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %497

352:                                              ; preds = %345
  %353 = load i32*, i32** %16, align 8
  %354 = load i32, i32* %12, align 4
  %355 = sext i32 %354 to i64
  %356 = mul i64 %355, 4
  %357 = trunc i64 %356 to i32
  %358 = call i32 @MEMCPY(i32* %41, i32* %353, i32 %357)
  %359 = load i32*, i32** %17, align 8
  %360 = load i32, i32* %12, align 4
  %361 = sext i32 %360 to i64
  %362 = mul i64 %361, 4
  %363 = trunc i64 %362 to i32
  %364 = call i32 @MEMCPY(i32* %44, i32* %359, i32 %363)
  %365 = load i32*, i32** %18, align 8
  %366 = load i32, i32* %12, align 4
  %367 = sext i32 %366 to i64
  %368 = mul i64 %367, 4
  %369 = trunc i64 %368 to i32
  %370 = call i32 @MEMCPY(i32* %47, i32* %365, i32 %369)
  %371 = load i32*, i32** %19, align 8
  %372 = load i32, i32* %12, align 4
  %373 = sext i32 %372 to i64
  %374 = mul i64 %373, 4
  %375 = trunc i64 %374 to i32
  %376 = call i32 @MEMCPY(i32* %50, i32* %371, i32 %375)
  %377 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %378 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %378, i32 0, i32 1
  %380 = load i32 (%struct.TYPE_30__*, i32)*, i32 (%struct.TYPE_30__*, i32)** %379, align 8
  %381 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %382 = load i32, i32* @GL_BACK, align 4
  %383 = call i32 %380(%struct.TYPE_30__* %381, i32 %382)
  %384 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %385 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %385, i32 0, i32 2
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %399

389:                                              ; preds = %352
  %390 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %391 = load i32, i32* %12, align 4
  %392 = load i32, i32* %13, align 4
  %393 = load i32, i32* %14, align 4
  %394 = load i32*, i32** %28, align 8
  %395 = load i32*, i32** %29, align 8
  %396 = load i32*, i32** %30, align 8
  %397 = load i32*, i32** %31, align 8
  %398 = call i32 @gl_logicop_rgba_span(%struct.TYPE_30__* %390, i32 %391, i32 %392, i32 %393, i32* %394, i32* %395, i32* %396, i32* %397, i32* %37)
  br label %416

399:                                              ; preds = %352
  %400 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %401 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %415

405:                                              ; preds = %399
  %406 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %407 = load i32, i32* %12, align 4
  %408 = load i32, i32* %13, align 4
  %409 = load i32, i32* %14, align 4
  %410 = load i32*, i32** %28, align 8
  %411 = load i32*, i32** %29, align 8
  %412 = load i32*, i32** %30, align 8
  %413 = load i32*, i32** %31, align 8
  %414 = call i32 @gl_blend_span(%struct.TYPE_30__* %406, i32 %407, i32 %408, i32 %409, i32* %410, i32* %411, i32* %412, i32* %413, i32* %37)
  br label %415

415:                                              ; preds = %405, %399
  br label %416

416:                                              ; preds = %415, %389
  %417 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %418 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %417, i32 0, i32 3
  %419 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %432

422:                                              ; preds = %416
  %423 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %424 = load i32, i32* %12, align 4
  %425 = load i32, i32* %13, align 4
  %426 = load i32, i32* %14, align 4
  %427 = load i32*, i32** %28, align 8
  %428 = load i32*, i32** %29, align 8
  %429 = load i32*, i32** %30, align 8
  %430 = load i32*, i32** %31, align 8
  %431 = call i32 @gl_mask_color_span(%struct.TYPE_30__* %423, i32 %424, i32 %425, i32 %426, i32* %427, i32* %428, i32* %429, i32* %430)
  br label %432

432:                                              ; preds = %422, %416
  %433 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %434 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %434, i32 0, i32 2
  %436 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)** %435, align 8
  %437 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %438 = load i32, i32* %12, align 4
  %439 = load i32, i32* %13, align 4
  %440 = load i32, i32* %14, align 4
  %441 = load i32*, i32** %28, align 8
  %442 = load i32*, i32** %29, align 8
  %443 = load i32*, i32** %30, align 8
  %444 = load i32*, i32** %31, align 8
  %445 = load i64, i64* %23, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %432
  br label %449

448:                                              ; preds = %432
  br label %449

449:                                              ; preds = %448, %447
  %450 = phi i32* [ null, %447 ], [ %37, %448 ]
  %451 = call i32 %436(%struct.TYPE_30__* %437, i32 %438, i32 %439, i32 %440, i32* %441, i32* %442, i32* %443, i32* %444, i32* %450)
  %452 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %453 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @ALPHABUF_BIT, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %489

458:                                              ; preds = %449
  %459 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %460 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %459, i32 0, i32 2
  %461 = load %struct.TYPE_29__*, %struct.TYPE_29__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %465 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %464, i32 0, i32 2
  %466 = load %struct.TYPE_29__*, %struct.TYPE_29__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %466, i32 0, i32 1
  store i32 %463, i32* %467, align 4
  %468 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %469 = load i32, i32* %12, align 4
  %470 = load i32, i32* %13, align 4
  %471 = load i32, i32* %14, align 4
  %472 = load i32*, i32** %31, align 8
  %473 = load i64, i64* %23, align 8
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %458
  br label %477

476:                                              ; preds = %458
  br label %477

477:                                              ; preds = %476, %475
  %478 = phi i32* [ null, %475 ], [ %37, %476 ]
  %479 = call i32 @gl_write_alpha_span(%struct.TYPE_30__* %468, i32 %469, i32 %470, i32 %471, i32* %472, i32* %478)
  %480 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %481 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %480, i32 0, i32 2
  %482 = load %struct.TYPE_29__*, %struct.TYPE_29__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %486 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %485, i32 0, i32 2
  %487 = load %struct.TYPE_29__*, %struct.TYPE_29__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %487, i32 0, i32 1
  store i32 %484, i32* %488, align 4
  br label %489

489:                                              ; preds = %477, %449
  %490 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %491 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %491, i32 0, i32 1
  %493 = load i32 (%struct.TYPE_30__*, i32)*, i32 (%struct.TYPE_30__*, i32)** %492, align 8
  %494 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %495 = load i32, i32* @GL_FRONT, align 4
  %496 = call i32 %493(%struct.TYPE_30__* %494, i32 %495)
  br label %497

497:                                              ; preds = %489, %345
  store i32 0, i32* %32, align 4
  br label %498

498:                                              ; preds = %497, %256, %240, %212, %196, %164, %70
  %499 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %499)
  %500 = load i32, i32* %32, align 4
  switch i32 %500, label %502 [
    i32 0, label %501
    i32 1, label %501
  ]

501:                                              ; preds = %498, %498
  ret void

502:                                              ; preds = %498
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MEMSET(i32*, i32, i32) #2

declare dso_local i64 @clip_span(%struct.TYPE_30__*, i32, i32, i32, i32*) #2

declare dso_local i32 @MEMCPY(i32*, i32*, i32) #2

declare dso_local i32 @gl_fog_color_pixels(%struct.TYPE_30__*, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @gl_scissor_span(%struct.TYPE_30__*, i32, i32, i32, i32*) #2

declare dso_local i32 @stipple_polygon_span(%struct.TYPE_30__*, i32, i32, i32, i32*) #2

declare dso_local i64 @gl_alpha_test(%struct.TYPE_30__*, i32, i32*, i32*) #2

declare dso_local i64 @gl_stencil_span(%struct.TYPE_30__*, i32, i32, i32, i32*) #2

declare dso_local i32 @gl_depth_stencil_span(%struct.TYPE_30__*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @gl_logicop_rgba_span(%struct.TYPE_30__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @gl_blend_span(%struct.TYPE_30__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @gl_mask_color_span(%struct.TYPE_30__*, i32, i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @gl_write_alpha_span(%struct.TYPE_30__*, i32, i32, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
