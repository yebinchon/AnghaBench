; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_write_texture_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_write_texture_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_32__*, %struct.TYPE_30__, %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__ }
%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i32 (%struct.TYPE_31__*, i32, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_31__*, i32)*, i32 (%struct.TYPE_31__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)* }
%struct.TYPE_40__ = type { i64, i64, i64, i64 }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i64 }

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
define dso_local void @gl_write_texture_span(%struct.TYPE_31__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i64 %13) #0 {
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  store i64 %13, i64* %28, align 8
  %42 = load i32, i32* @MAX_WIDTH, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %29, align 8
  %45 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %30, align 8
  %46 = load i64, i64* @GL_TRUE, align 8
  store i64 %46, i64* %31, align 8
  %47 = load i32, i32* @MAX_WIDTH, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %32, align 8
  %50 = load i32, i32* @MAX_WIDTH, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %33, align 8
  %53 = load i32, i32* @MAX_WIDTH, align 4
  %54 = zext i32 %53 to i64
  %55 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %34, align 8
  %56 = load i32, i32* @MAX_WIDTH, align 4
  %57 = zext i32 %56 to i64
  %58 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %35, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @MEMSET(i32* %45, i32 1, i32 %59)
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @WINCLIP_BIT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %14
  %68 = load i64, i64* %28, align 8
  %69 = load i64, i64* @GL_BITMAP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67, %14
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i64 @clip_span(%struct.TYPE_31__* %72, i32 %73, i32 %74, i32 %75, i32* %45)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %40, align 4
  br label %517

79:                                               ; preds = %71
  %80 = load i64, i64* @GL_FALSE, align 8
  store i64 %80, i64* %31, align 8
  br label %81

81:                                               ; preds = %79, %67
  %82 = load i64, i64* %28, align 8
  %83 = load i64, i64* @GL_BITMAP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %85, %81
  %93 = load i32*, i32** %24, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i32 @MEMCPY(i32* %49, i32* %93, i32 %97)
  %99 = load i32*, i32** %25, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @MEMCPY(i32* %52, i32* %99, i32 %103)
  %105 = load i32*, i32** %26, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i32 @MEMCPY(i32* %55, i32* %105, i32 %109)
  %111 = load i32*, i32** %27, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32 @MEMCPY(i32* %58, i32* %111, i32 %115)
  store i32* %49, i32** %36, align 8
  store i32* %52, i32** %37, align 8
  store i32* %55, i32** %38, align 8
  store i32* %58, i32** %39, align 8
  br label %122

117:                                              ; preds = %85
  %118 = load i32*, i32** %24, align 8
  store i32* %118, i32** %36, align 8
  %119 = load i32*, i32** %25, align 8
  store i32* %119, i32** %37, align 8
  %120 = load i32*, i32** %26, align 8
  store i32* %120, i32** %38, align 8
  %121 = load i32*, i32** %27, align 8
  store i32* %121, i32** %39, align 8
  br label %122

122:                                              ; preds = %117, %92
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ASSERT(i64 %126)
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i32*, i32** %20, align 8
  %131 = load i32*, i32** %21, align 8
  %132 = load i32*, i32** %22, align 8
  %133 = load i32*, i32** %23, align 8
  %134 = load i32*, i32** %36, align 8
  %135 = load i32*, i32** %37, align 8
  %136 = load i32*, i32** %38, align 8
  %137 = load i32*, i32** %39, align 8
  %138 = call i32 @gl_texture_pixels(%struct.TYPE_31__* %128, i32 %129, i32* %130, i32* %131, i32* %132, i32* %133, i32* %134, i32* %135, i32* %136, i32* %137)
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 10
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %122
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 9
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @GL_NICEST, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %161, label %151

151:                                              ; preds = %144
  %152 = load i64, i64* %28, align 8
  %153 = load i64, i64* @GL_BITMAP, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %151
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %155, %151, %144
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load i32*, i32** %19, align 8
  %165 = load i32*, i32** %36, align 8
  %166 = load i32*, i32** %37, align 8
  %167 = load i32*, i32** %38, align 8
  %168 = load i32*, i32** %39, align 8
  %169 = call i32 @gl_fog_color_pixels(%struct.TYPE_31__* %162, i32 %163, i32* %164, i32* %165, i32* %166, i32* %167, i32* %168)
  br label %170

170:                                              ; preds = %161, %155, %122
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %170
  %177 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %18, align 4
  %181 = call i64 @gl_scissor_span(%struct.TYPE_31__* %177, i32 %178, i32 %179, i32 %180, i32* %45)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  store i32 1, i32* %40, align 4
  br label %517

184:                                              ; preds = %176
  %185 = load i64, i64* @GL_FALSE, align 8
  store i64 %185, i64* %31, align 8
  br label %186

186:                                              ; preds = %184, %170
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load i64, i64* %28, align 8
  %194 = load i64, i64* @GL_POLYGON, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %18, align 4
  %201 = call i32 @stipple_polygon_span(%struct.TYPE_31__* %197, i32 %198, i32 %199, i32 %200, i32* %45)
  %202 = load i64, i64* @GL_FALSE, align 8
  store i64 %202, i64* %31, align 8
  br label %203

203:                                              ; preds = %196, %192, %186
  %204 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %203
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load i32*, i32** %39, align 8
  %213 = call i64 @gl_alpha_test(%struct.TYPE_31__* %210, i32 %211, i32* %212, i32* %45)
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  store i32 1, i32* %40, align 4
  br label %517

216:                                              ; preds = %209
  %217 = load i64, i64* @GL_FALSE, align 8
  store i64 %217, i64* %31, align 8
  br label %218

218:                                              ; preds = %216, %203
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %218
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %18, align 4
  %229 = call i64 @gl_stencil_span(%struct.TYPE_31__* %225, i32 %226, i32 %227, i32 %228, i32* %45)
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  store i32 1, i32* %40, align 4
  br label %517

232:                                              ; preds = %224
  %233 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* %18, align 4
  %237 = load i32*, i32** %19, align 8
  %238 = call i32 @gl_depth_stencil_span(%struct.TYPE_31__* %233, i32 %234, i32 %235, i32 %236, i32* %237, i32* %45)
  %239 = load i64, i64* @GL_FALSE, align 8
  store i64 %239, i64* %31, align 8
  br label %268

240:                                              ; preds = %218
  %241 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %267

246:                                              ; preds = %240
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 0
  %250 = load i32 (%struct.TYPE_31__*, i32, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_31__*, i32, i32, i32, i32*, i32*)** %249, align 8
  %251 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %18, align 4
  %255 = load i32*, i32** %19, align 8
  %256 = call i32 %250(%struct.TYPE_31__* %251, i32 %252, i32 %253, i32 %254, i32* %255, i32* %45)
  store i32 %256, i32* %41, align 4
  %257 = load i32, i32* %41, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %246
  store i32 1, i32* %40, align 4
  br label %517

260:                                              ; preds = %246
  %261 = load i32, i32* %41, align 4
  %262 = load i32, i32* %16, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = load i64, i64* @GL_FALSE, align 8
  store i64 %265, i64* %31, align 8
  br label %266

266:                                              ; preds = %264, %260
  br label %267

267:                                              ; preds = %266, %240
  br label %268

268:                                              ; preds = %267, %232
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @NO_DRAW_BIT, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %268
  store i32 1, i32* %40, align 4
  br label %517

276:                                              ; preds = %268
  %277 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %276
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %284 = load i32, i32* %16, align 4
  %285 = load i32, i32* %17, align 4
  %286 = load i32, i32* %18, align 4
  %287 = load i32*, i32** %36, align 8
  %288 = load i32*, i32** %37, align 8
  %289 = load i32*, i32** %38, align 8
  %290 = load i32*, i32** %39, align 8
  %291 = call i32 @gl_logicop_rgba_span(%struct.TYPE_31__* %283, i32 %284, i32 %285, i32 %286, i32* %287, i32* %288, i32* %289, i32* %290, i32* %45)
  br label %309

292:                                              ; preds = %276
  %293 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %294 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %292
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %300 = load i32, i32* %16, align 4
  %301 = load i32, i32* %17, align 4
  %302 = load i32, i32* %18, align 4
  %303 = load i32*, i32** %36, align 8
  %304 = load i32*, i32** %37, align 8
  %305 = load i32*, i32** %38, align 8
  %306 = load i32*, i32** %39, align 8
  %307 = call i32 @gl_blend_span(%struct.TYPE_31__* %299, i32 %300, i32 %301, i32 %302, i32* %303, i32* %304, i32* %305, i32* %306, i32* %45)
  br label %308

308:                                              ; preds = %298, %292
  br label %309

309:                                              ; preds = %308, %282
  %310 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %311 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %325

315:                                              ; preds = %309
  %316 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %317 = load i32, i32* %16, align 4
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* %18, align 4
  %320 = load i32*, i32** %36, align 8
  %321 = load i32*, i32** %37, align 8
  %322 = load i32*, i32** %38, align 8
  %323 = load i32*, i32** %39, align 8
  %324 = call i32 @gl_mask_color_span(%struct.TYPE_31__* %316, i32 %317, i32 %318, i32 %319, i32* %320, i32* %321, i32* %322, i32* %323)
  br label %325

325:                                              ; preds = %315, %309
  %326 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %327, i32 0, i32 2
  %329 = load i32 (%struct.TYPE_31__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_31__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)** %328, align 8
  %330 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %331 = load i32, i32* %16, align 4
  %332 = load i32, i32* %17, align 4
  %333 = load i32, i32* %18, align 4
  %334 = load i32*, i32** %36, align 8
  %335 = load i32*, i32** %37, align 8
  %336 = load i32*, i32** %38, align 8
  %337 = load i32*, i32** %39, align 8
  %338 = load i64, i64* %31, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %325
  br label %342

341:                                              ; preds = %325
  br label %342

342:                                              ; preds = %341, %340
  %343 = phi i32* [ null, %340 ], [ %45, %341 ]
  %344 = call i32 %329(%struct.TYPE_31__* %330, i32 %331, i32 %332, i32 %333, i32* %334, i32* %335, i32* %336, i32* %337, i32* %343)
  %345 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %346 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @ALPHABUF_BIT, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %364

351:                                              ; preds = %342
  %352 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* %17, align 4
  %355 = load i32, i32* %18, align 4
  %356 = load i32*, i32** %39, align 8
  %357 = load i64, i64* %31, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %351
  br label %361

360:                                              ; preds = %351
  br label %361

361:                                              ; preds = %360, %359
  %362 = phi i32* [ null, %359 ], [ %45, %360 ]
  %363 = call i32 @gl_write_alpha_span(%struct.TYPE_31__* %352, i32 %353, i32 %354, i32 %355, i32* %356, i32* %362)
  br label %364

364:                                              ; preds = %361, %342
  %365 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %366 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %516

371:                                              ; preds = %364
  %372 = load i32*, i32** %24, align 8
  %373 = load i32, i32* %16, align 4
  %374 = sext i32 %373 to i64
  %375 = mul i64 %374, 4
  %376 = trunc i64 %375 to i32
  %377 = call i32 @MEMCPY(i32* %49, i32* %372, i32 %376)
  %378 = load i32*, i32** %25, align 8
  %379 = load i32, i32* %16, align 4
  %380 = sext i32 %379 to i64
  %381 = mul i64 %380, 4
  %382 = trunc i64 %381 to i32
  %383 = call i32 @MEMCPY(i32* %52, i32* %378, i32 %382)
  %384 = load i32*, i32** %26, align 8
  %385 = load i32, i32* %16, align 4
  %386 = sext i32 %385 to i64
  %387 = mul i64 %386, 4
  %388 = trunc i64 %387 to i32
  %389 = call i32 @MEMCPY(i32* %55, i32* %384, i32 %388)
  %390 = load i32*, i32** %27, align 8
  %391 = load i32, i32* %16, align 4
  %392 = sext i32 %391 to i64
  %393 = mul i64 %392, 4
  %394 = trunc i64 %393 to i32
  %395 = call i32 @MEMCPY(i32* %58, i32* %390, i32 %394)
  %396 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %397 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %397, i32 0, i32 1
  %399 = load i32 (%struct.TYPE_31__*, i32)*, i32 (%struct.TYPE_31__*, i32)** %398, align 8
  %400 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %401 = load i32, i32* @GL_BACK, align 4
  %402 = call i32 %399(%struct.TYPE_31__* %400, i32 %401)
  %403 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %404 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %404, i32 0, i32 2
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %418

408:                                              ; preds = %371
  %409 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %410 = load i32, i32* %16, align 4
  %411 = load i32, i32* %17, align 4
  %412 = load i32, i32* %18, align 4
  %413 = load i32*, i32** %36, align 8
  %414 = load i32*, i32** %37, align 8
  %415 = load i32*, i32** %38, align 8
  %416 = load i32*, i32** %39, align 8
  %417 = call i32 @gl_logicop_rgba_span(%struct.TYPE_31__* %409, i32 %410, i32 %411, i32 %412, i32* %413, i32* %414, i32* %415, i32* %416, i32* %45)
  br label %435

418:                                              ; preds = %371
  %419 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %420 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %419, i32 0, i32 3
  %421 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %434

424:                                              ; preds = %418
  %425 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %426 = load i32, i32* %16, align 4
  %427 = load i32, i32* %17, align 4
  %428 = load i32, i32* %18, align 4
  %429 = load i32*, i32** %36, align 8
  %430 = load i32*, i32** %37, align 8
  %431 = load i32*, i32** %38, align 8
  %432 = load i32*, i32** %39, align 8
  %433 = call i32 @gl_blend_span(%struct.TYPE_31__* %425, i32 %426, i32 %427, i32 %428, i32* %429, i32* %430, i32* %431, i32* %432, i32* %45)
  br label %434

434:                                              ; preds = %424, %418
  br label %435

435:                                              ; preds = %434, %408
  %436 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %437 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %436, i32 0, i32 3
  %438 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %451

441:                                              ; preds = %435
  %442 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %443 = load i32, i32* %16, align 4
  %444 = load i32, i32* %17, align 4
  %445 = load i32, i32* %18, align 4
  %446 = load i32*, i32** %36, align 8
  %447 = load i32*, i32** %37, align 8
  %448 = load i32*, i32** %38, align 8
  %449 = load i32*, i32** %39, align 8
  %450 = call i32 @gl_mask_color_span(%struct.TYPE_31__* %442, i32 %443, i32 %444, i32 %445, i32* %446, i32* %447, i32* %448, i32* %449)
  br label %451

451:                                              ; preds = %441, %435
  %452 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %453 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %452, i32 0, i32 2
  %454 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %453, i32 0, i32 2
  %455 = load i32 (%struct.TYPE_31__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_31__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)** %454, align 8
  %456 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %457 = load i32, i32* %16, align 4
  %458 = load i32, i32* %17, align 4
  %459 = load i32, i32* %18, align 4
  %460 = load i32*, i32** %36, align 8
  %461 = load i32*, i32** %37, align 8
  %462 = load i32*, i32** %38, align 8
  %463 = load i32*, i32** %39, align 8
  %464 = load i64, i64* %31, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %451
  br label %468

467:                                              ; preds = %451
  br label %468

468:                                              ; preds = %467, %466
  %469 = phi i32* [ null, %466 ], [ %45, %467 ]
  %470 = call i32 %455(%struct.TYPE_31__* %456, i32 %457, i32 %458, i32 %459, i32* %460, i32* %461, i32* %462, i32* %463, i32* %469)
  %471 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %472 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %471, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %472, i32 0, i32 1
  %474 = load i32 (%struct.TYPE_31__*, i32)*, i32 (%struct.TYPE_31__*, i32)** %473, align 8
  %475 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %476 = load i32, i32* @GL_FRONT, align 4
  %477 = call i32 %474(%struct.TYPE_31__* %475, i32 %476)
  %478 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %479 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* @ALPHABUF_BIT, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %515

484:                                              ; preds = %468
  %485 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %486 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %485, i32 0, i32 1
  %487 = load %struct.TYPE_32__*, %struct.TYPE_32__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %491 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %490, i32 0, i32 1
  %492 = load %struct.TYPE_32__*, %struct.TYPE_32__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %492, i32 0, i32 1
  store i32 %489, i32* %493, align 4
  %494 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %495 = load i32, i32* %16, align 4
  %496 = load i32, i32* %17, align 4
  %497 = load i32, i32* %18, align 4
  %498 = load i32*, i32** %39, align 8
  %499 = load i64, i64* %31, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %502

501:                                              ; preds = %484
  br label %503

502:                                              ; preds = %484
  br label %503

503:                                              ; preds = %502, %501
  %504 = phi i32* [ null, %501 ], [ %45, %502 ]
  %505 = call i32 @gl_write_alpha_span(%struct.TYPE_31__* %494, i32 %495, i32 %496, i32 %497, i32* %498, i32* %504)
  %506 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %507 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %506, i32 0, i32 1
  %508 = load %struct.TYPE_32__*, %struct.TYPE_32__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %512 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %511, i32 0, i32 1
  %513 = load %struct.TYPE_32__*, %struct.TYPE_32__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %513, i32 0, i32 1
  store i32 %510, i32* %514, align 4
  br label %515

515:                                              ; preds = %503, %468
  br label %516

516:                                              ; preds = %515, %364
  store i32 0, i32* %40, align 4
  br label %517

517:                                              ; preds = %516, %275, %259, %231, %215, %183, %78
  %518 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %518)
  %519 = load i32, i32* %40, align 4
  switch i32 %519, label %521 [
    i32 0, label %520
    i32 1, label %520
  ]

520:                                              ; preds = %517, %517
  ret void

521:                                              ; preds = %517
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MEMSET(i32*, i32, i32) #2

declare dso_local i64 @clip_span(%struct.TYPE_31__*, i32, i32, i32, i32*) #2

declare dso_local i32 @MEMCPY(i32*, i32*, i32) #2

declare dso_local i32 @ASSERT(i64) #2

declare dso_local i32 @gl_texture_pixels(%struct.TYPE_31__*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @gl_fog_color_pixels(%struct.TYPE_31__*, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @gl_scissor_span(%struct.TYPE_31__*, i32, i32, i32, i32*) #2

declare dso_local i32 @stipple_polygon_span(%struct.TYPE_31__*, i32, i32, i32, i32*) #2

declare dso_local i64 @gl_alpha_test(%struct.TYPE_31__*, i32, i32*, i32*) #2

declare dso_local i64 @gl_stencil_span(%struct.TYPE_31__*, i32, i32, i32, i32*) #2

declare dso_local i32 @gl_depth_stencil_span(%struct.TYPE_31__*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @gl_logicop_rgba_span(%struct.TYPE_31__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @gl_blend_span(%struct.TYPE_31__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @gl_mask_color_span(%struct.TYPE_31__*, i32, i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @gl_write_alpha_span(%struct.TYPE_31__*, i32, i32, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
