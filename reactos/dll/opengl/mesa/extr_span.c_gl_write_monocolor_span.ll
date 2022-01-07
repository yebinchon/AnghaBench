; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_write_monocolor_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_write_monocolor_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__ }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_36__ = type { i64 (%struct.TYPE_37__*, i64, i64, i64, i32*, i64*)*, i32 (%struct.TYPE_37__*, i32)*, i32 (%struct.TYPE_37__*, i64, i64, i64, i64*)*, i32 (%struct.TYPE_37__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*)* }
%struct.TYPE_35__ = type { i64, i64, i64, i64 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i64 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i64 0, align 8
@WINCLIP_BIT = common dso_local global i32 0, align 4
@GL_BITMAP = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i64 0, align 8
@GL_POLYGON = common dso_local global i64 0, align 8
@NO_DRAW_BIT = common dso_local global i32 0, align 4
@ALPHABUF_BIT = common dso_local global i32 0, align 4
@FRONT_AND_BACK_BIT = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_write_monocolor_span(%struct.TYPE_37__* %0, i64 %1, i64 %2, i64 %3, i32* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  %33 = load i32, i32* @MAX_WIDTH, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %22, align 8
  %36 = alloca i64, i64 %34, align 16
  store i64 %34, i64* %23, align 8
  %37 = load i64, i64* @GL_TRUE, align 8
  store i64 %37, i64* %24, align 8
  %38 = load i32, i32* @MAX_WIDTH, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i64, i64 %39, align 16
  store i64 %39, i64* %25, align 8
  %41 = load i32, i32* @MAX_WIDTH, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i64, i64 %42, align 16
  store i64 %42, i64* %26, align 8
  %44 = load i32, i32* @MAX_WIDTH, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i64, i64 %45, align 16
  store i64 %45, i64* %27, align 8
  %47 = load i32, i32* @MAX_WIDTH, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i64, i64 %48, align 16
  store i64 %48, i64* %28, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @MEMSET(i64* %36, i32 1, i64 %50)
  %52 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @WINCLIP_BIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %10
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* @GL_BITMAP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58, %10
  %63 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i64 @clip_span(%struct.TYPE_37__* %63, i64 %64, i64 %65, i64 %66, i64* %36)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 1, i32* %29, align 4
  br label %552

70:                                               ; preds = %62
  %71 = load i64, i64* @GL_FALSE, align 8
  store i64 %71, i64* %24, align 8
  br label %72

72:                                               ; preds = %70, %58
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i64 @gl_scissor_span(%struct.TYPE_37__* %79, i64 %80, i64 %81, i64 %82, i64* %36)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 1, i32* %29, align 4
  br label %552

86:                                               ; preds = %78
  %87 = load i64, i64* @GL_FALSE, align 8
  store i64 %87, i64* %24, align 8
  br label %88

88:                                               ; preds = %86, %72
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* @GL_POLYGON, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = call i32 @stipple_polygon_span(%struct.TYPE_37__* %99, i64 %100, i64 %101, i64 %102, i64* %36)
  %104 = load i64, i64* @GL_FALSE, align 8
  store i64 %104, i64* %24, align 8
  br label %105

105:                                              ; preds = %98, %94, %88
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %139

111:                                              ; preds = %105
  %112 = load i32, i32* @MAX_WIDTH, align 4
  %113 = zext i32 %112 to i64
  %114 = call i8* @llvm.stacksave()
  store i8* %114, i8** %30, align 8
  %115 = alloca i64, i64 %113, align 16
  store i64 %113, i64* %31, align 8
  store i64 0, i64* %21, align 8
  br label %116

116:                                              ; preds = %124, %111
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %12, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i64, i64* %19, align 8
  %122 = load i64, i64* %21, align 8
  %123 = getelementptr inbounds i64, i64* %115, i64 %122
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %21, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %21, align 8
  br label %116

127:                                              ; preds = %116
  %128 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %129 = load i64, i64* %12, align 8
  %130 = call i64 @gl_alpha_test(%struct.TYPE_37__* %128, i64 %129, i64* %115, i64* %36)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 1, i32* %29, align 4
  br label %135

133:                                              ; preds = %127
  %134 = load i64, i64* @GL_FALSE, align 8
  store i64 %134, i64* %24, align 8
  store i32 0, i32* %29, align 4
  br label %135

135:                                              ; preds = %133, %132
  %136 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %29, align 4
  switch i32 %137, label %552 [
    i32 0, label %138
  ]

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %138, %105
  %140 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %139
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* %13, align 8
  %149 = load i64, i64* %14, align 8
  %150 = call i64 @gl_stencil_span(%struct.TYPE_37__* %146, i64 %147, i64 %148, i64 %149, i64* %36)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  store i32 1, i32* %29, align 4
  br label %552

153:                                              ; preds = %145
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* %14, align 8
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @gl_depth_stencil_span(%struct.TYPE_37__* %154, i64 %155, i64 %156, i64 %157, i32* %158, i64* %36)
  %160 = load i64, i64* @GL_FALSE, align 8
  store i64 %160, i64* %24, align 8
  br label %189

161:                                              ; preds = %139
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %188

167:                                              ; preds = %161
  %168 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %169, i32 0, i32 0
  %171 = load i64 (%struct.TYPE_37__*, i64, i64, i64, i32*, i64*)*, i64 (%struct.TYPE_37__*, i64, i64, i64, i32*, i64*)** %170, align 8
  %172 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* %13, align 8
  %175 = load i64, i64* %14, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = call i64 %171(%struct.TYPE_37__* %172, i64 %173, i64 %174, i64 %175, i32* %176, i64* %36)
  store i64 %177, i64* %32, align 8
  %178 = load i64, i64* %32, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %167
  store i32 1, i32* %29, align 4
  br label %552

181:                                              ; preds = %167
  %182 = load i64, i64* %32, align 8
  %183 = load i64, i64* %12, align 8
  %184 = icmp ult i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i64, i64* @GL_FALSE, align 8
  store i64 %186, i64* %24, align 8
  br label %187

187:                                              ; preds = %185, %181
  br label %188

188:                                              ; preds = %187, %161
  br label %189

189:                                              ; preds = %188, %153
  %190 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @NO_DRAW_BIT, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  store i32 1, i32* %29, align 4
  br label %552

197:                                              ; preds = %189
  %198 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %197
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %452

215:                                              ; preds = %209, %203, %197
  store i64 0, i64* %21, align 8
  br label %216

216:                                              ; preds = %239, %215
  %217 = load i64, i64* %21, align 8
  %218 = load i64, i64* %12, align 8
  %219 = icmp ult i64 %217, %218
  br i1 %219, label %220, label %242

220:                                              ; preds = %216
  %221 = load i64, i64* %21, align 8
  %222 = getelementptr inbounds i64, i64* %36, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %220
  %226 = load i64, i64* %16, align 8
  %227 = load i64, i64* %21, align 8
  %228 = getelementptr inbounds i64, i64* %40, i64 %227
  store i64 %226, i64* %228, align 8
  %229 = load i64, i64* %17, align 8
  %230 = load i64, i64* %21, align 8
  %231 = getelementptr inbounds i64, i64* %43, i64 %230
  store i64 %229, i64* %231, align 8
  %232 = load i64, i64* %18, align 8
  %233 = load i64, i64* %21, align 8
  %234 = getelementptr inbounds i64, i64* %46, i64 %233
  store i64 %232, i64* %234, align 8
  %235 = load i64, i64* %19, align 8
  %236 = load i64, i64* %21, align 8
  %237 = getelementptr inbounds i64, i64* %49, i64 %236
  store i64 %235, i64* %237, align 8
  br label %238

238:                                              ; preds = %225, %220
  br label %239

239:                                              ; preds = %238
  %240 = load i64, i64* %21, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %21, align 8
  br label %216

242:                                              ; preds = %216
  %243 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %250 = load i64, i64* %12, align 8
  %251 = load i64, i64* %13, align 8
  %252 = load i64, i64* %14, align 8
  %253 = call i32 @gl_logicop_rgba_span(%struct.TYPE_37__* %249, i64 %250, i64 %251, i64 %252, i64* %40, i64* %43, i64* %46, i64* %49, i64* %36)
  br label %267

254:                                              ; preds = %242
  %255 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %254
  %261 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %262 = load i64, i64* %12, align 8
  %263 = load i64, i64* %13, align 8
  %264 = load i64, i64* %14, align 8
  %265 = call i32 @gl_blend_span(%struct.TYPE_37__* %261, i64 %262, i64 %263, i64 %264, i64* %40, i64* %43, i64* %46, i64* %49, i64* %36)
  br label %266

266:                                              ; preds = %260, %254
  br label %267

267:                                              ; preds = %266, %248
  %268 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %267
  %274 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %275 = load i64, i64* %12, align 8
  %276 = load i64, i64* %13, align 8
  %277 = load i64, i64* %14, align 8
  %278 = call i32 @gl_mask_color_span(%struct.TYPE_37__* %274, i64 %275, i64 %276, i64 %277, i64* %40, i64* %43, i64* %46, i64* %49)
  br label %279

279:                                              ; preds = %273, %267
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %281, i32 0, i32 3
  %283 = load i32 (%struct.TYPE_37__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*)*, i32 (%struct.TYPE_37__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*)** %282, align 8
  %284 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %285 = load i64, i64* %12, align 8
  %286 = load i64, i64* %13, align 8
  %287 = load i64, i64* %14, align 8
  %288 = load i64, i64* %24, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %279
  br label %292

291:                                              ; preds = %279
  br label %292

292:                                              ; preds = %291, %290
  %293 = phi i64* [ null, %290 ], [ %36, %291 ]
  %294 = call i32 %283(%struct.TYPE_37__* %284, i64 %285, i64 %286, i64 %287, i64* %40, i64* %43, i64* %46, i64* %49, i64* %293)
  %295 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @ALPHABUF_BIT, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %313

301:                                              ; preds = %292
  %302 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %303 = load i64, i64* %12, align 8
  %304 = load i64, i64* %13, align 8
  %305 = load i64, i64* %14, align 8
  %306 = load i64, i64* %24, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %301
  br label %310

309:                                              ; preds = %301
  br label %310

310:                                              ; preds = %309, %308
  %311 = phi i64* [ null, %308 ], [ %36, %309 ]
  %312 = call i32 @gl_write_alpha_span(%struct.TYPE_37__* %302, i64 %303, i64 %304, i64 %305, i64* %49, i64* %311)
  br label %313

313:                                              ; preds = %310, %292
  %314 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %451

320:                                              ; preds = %313
  store i64 0, i64* %21, align 8
  br label %321

321:                                              ; preds = %344, %320
  %322 = load i64, i64* %21, align 8
  %323 = load i64, i64* %12, align 8
  %324 = icmp ult i64 %322, %323
  br i1 %324, label %325, label %347

325:                                              ; preds = %321
  %326 = load i64, i64* %21, align 8
  %327 = getelementptr inbounds i64, i64* %36, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %325
  %331 = load i64, i64* %16, align 8
  %332 = load i64, i64* %21, align 8
  %333 = getelementptr inbounds i64, i64* %40, i64 %332
  store i64 %331, i64* %333, align 8
  %334 = load i64, i64* %17, align 8
  %335 = load i64, i64* %21, align 8
  %336 = getelementptr inbounds i64, i64* %43, i64 %335
  store i64 %334, i64* %336, align 8
  %337 = load i64, i64* %18, align 8
  %338 = load i64, i64* %21, align 8
  %339 = getelementptr inbounds i64, i64* %46, i64 %338
  store i64 %337, i64* %339, align 8
  %340 = load i64, i64* %19, align 8
  %341 = load i64, i64* %21, align 8
  %342 = getelementptr inbounds i64, i64* %49, i64 %341
  store i64 %340, i64* %342, align 8
  br label %343

343:                                              ; preds = %330, %325
  br label %344

344:                                              ; preds = %343
  %345 = load i64, i64* %21, align 8
  %346 = add i64 %345, 1
  store i64 %346, i64* %21, align 8
  br label %321

347:                                              ; preds = %321
  %348 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %349, i32 0, i32 1
  %351 = load i32 (%struct.TYPE_37__*, i32)*, i32 (%struct.TYPE_37__*, i32)** %350, align 8
  %352 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %353 = load i32, i32* @GL_BACK, align 4
  %354 = call i32 %351(%struct.TYPE_37__* %352, i32 %353)
  %355 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %356 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %347
  %361 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %362 = load i64, i64* %12, align 8
  %363 = load i64, i64* %13, align 8
  %364 = load i64, i64* %14, align 8
  %365 = call i32 @gl_logicop_rgba_span(%struct.TYPE_37__* %361, i64 %362, i64 %363, i64 %364, i64* %40, i64* %43, i64* %46, i64* %49, i64* %36)
  br label %379

366:                                              ; preds = %347
  %367 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %368 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %366
  %373 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %374 = load i64, i64* %12, align 8
  %375 = load i64, i64* %13, align 8
  %376 = load i64, i64* %14, align 8
  %377 = call i32 @gl_blend_span(%struct.TYPE_37__* %373, i64 %374, i64 %375, i64 %376, i64* %40, i64* %43, i64* %46, i64* %49, i64* %36)
  br label %378

378:                                              ; preds = %372, %366
  br label %379

379:                                              ; preds = %378, %360
  %380 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %381 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %379
  %386 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %387 = load i64, i64* %12, align 8
  %388 = load i64, i64* %13, align 8
  %389 = load i64, i64* %14, align 8
  %390 = call i32 @gl_mask_color_span(%struct.TYPE_37__* %386, i64 %387, i64 %388, i64 %389, i64* %40, i64* %43, i64* %46, i64* %49)
  br label %391

391:                                              ; preds = %385, %379
  %392 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %393 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %393, i32 0, i32 3
  %395 = load i32 (%struct.TYPE_37__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*)*, i32 (%struct.TYPE_37__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*)** %394, align 8
  %396 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %397 = load i64, i64* %12, align 8
  %398 = load i64, i64* %13, align 8
  %399 = load i64, i64* %14, align 8
  %400 = load i64, i64* %24, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %391
  br label %404

403:                                              ; preds = %391
  br label %404

404:                                              ; preds = %403, %402
  %405 = phi i64* [ null, %402 ], [ %36, %403 ]
  %406 = call i32 %395(%struct.TYPE_37__* %396, i64 %397, i64 %398, i64 %399, i64* %40, i64* %43, i64* %46, i64* %49, i64* %405)
  %407 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %408, i32 0, i32 1
  %410 = load i32 (%struct.TYPE_37__*, i32)*, i32 (%struct.TYPE_37__*, i32)** %409, align 8
  %411 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %412 = load i32, i32* @GL_FRONT, align 4
  %413 = call i32 %410(%struct.TYPE_37__* %411, i32 %412)
  %414 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %415 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @ALPHABUF_BIT, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %450

420:                                              ; preds = %404
  %421 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %422 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %421, i32 0, i32 1
  %423 = load %struct.TYPE_30__*, %struct.TYPE_30__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %427 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %426, i32 0, i32 1
  %428 = load %struct.TYPE_30__*, %struct.TYPE_30__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %428, i32 0, i32 1
  store i32 %425, i32* %429, align 4
  %430 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %431 = load i64, i64* %12, align 8
  %432 = load i64, i64* %13, align 8
  %433 = load i64, i64* %14, align 8
  %434 = load i64, i64* %24, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %420
  br label %438

437:                                              ; preds = %420
  br label %438

438:                                              ; preds = %437, %436
  %439 = phi i64* [ null, %436 ], [ %36, %437 ]
  %440 = call i32 @gl_write_alpha_span(%struct.TYPE_37__* %430, i64 %431, i64 %432, i64 %433, i64* %49, i64* %439)
  %441 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %442 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %441, i32 0, i32 1
  %443 = load %struct.TYPE_30__*, %struct.TYPE_30__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %447 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %446, i32 0, i32 1
  %448 = load %struct.TYPE_30__*, %struct.TYPE_30__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %448, i32 0, i32 1
  store i32 %445, i32* %449, align 4
  br label %450

450:                                              ; preds = %438, %404
  br label %451

451:                                              ; preds = %450, %313
  br label %551

452:                                              ; preds = %209
  %453 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %454 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %453, i32 0, i32 2
  %455 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %454, i32 0, i32 2
  %456 = load i32 (%struct.TYPE_37__*, i64, i64, i64, i64*)*, i32 (%struct.TYPE_37__*, i64, i64, i64, i64*)** %455, align 8
  %457 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %458 = load i64, i64* %12, align 8
  %459 = load i64, i64* %13, align 8
  %460 = load i64, i64* %14, align 8
  %461 = call i32 %456(%struct.TYPE_37__* %457, i64 %458, i64 %459, i64 %460, i64* %36)
  %462 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %463 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @ALPHABUF_BIT, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %481

468:                                              ; preds = %452
  %469 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %470 = load i64, i64* %12, align 8
  %471 = load i64, i64* %13, align 8
  %472 = load i64, i64* %14, align 8
  %473 = load i64, i64* %19, align 8
  %474 = load i64, i64* %24, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %468
  br label %478

477:                                              ; preds = %468
  br label %478

478:                                              ; preds = %477, %476
  %479 = phi i64* [ null, %476 ], [ %36, %477 ]
  %480 = call i32 @gl_write_mono_alpha_span(%struct.TYPE_37__* %469, i64 %470, i64 %471, i64 %472, i64 %473, i64* %479)
  br label %481

481:                                              ; preds = %478, %452
  %482 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %483 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %550

488:                                              ; preds = %481
  %489 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %490 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %489, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %490, i32 0, i32 1
  %492 = load i32 (%struct.TYPE_37__*, i32)*, i32 (%struct.TYPE_37__*, i32)** %491, align 8
  %493 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %494 = load i32, i32* @GL_BACK, align 4
  %495 = call i32 %492(%struct.TYPE_37__* %493, i32 %494)
  %496 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %497 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %497, i32 0, i32 2
  %499 = load i32 (%struct.TYPE_37__*, i64, i64, i64, i64*)*, i32 (%struct.TYPE_37__*, i64, i64, i64, i64*)** %498, align 8
  %500 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %501 = load i64, i64* %12, align 8
  %502 = load i64, i64* %13, align 8
  %503 = load i64, i64* %14, align 8
  %504 = call i32 %499(%struct.TYPE_37__* %500, i64 %501, i64 %502, i64 %503, i64* %36)
  %505 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %506 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %505, i32 0, i32 2
  %507 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %506, i32 0, i32 1
  %508 = load i32 (%struct.TYPE_37__*, i32)*, i32 (%struct.TYPE_37__*, i32)** %507, align 8
  %509 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %510 = load i32, i32* @GL_FRONT, align 4
  %511 = call i32 %508(%struct.TYPE_37__* %509, i32 %510)
  %512 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %513 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @ALPHABUF_BIT, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %549

518:                                              ; preds = %488
  %519 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %520 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %519, i32 0, i32 1
  %521 = load %struct.TYPE_30__*, %struct.TYPE_30__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %525 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %524, i32 0, i32 1
  %526 = load %struct.TYPE_30__*, %struct.TYPE_30__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %526, i32 0, i32 1
  store i32 %523, i32* %527, align 4
  %528 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %529 = load i64, i64* %12, align 8
  %530 = load i64, i64* %13, align 8
  %531 = load i64, i64* %14, align 8
  %532 = load i64, i64* %19, align 8
  %533 = load i64, i64* %24, align 8
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %536

535:                                              ; preds = %518
  br label %537

536:                                              ; preds = %518
  br label %537

537:                                              ; preds = %536, %535
  %538 = phi i64* [ null, %535 ], [ %36, %536 ]
  %539 = call i32 @gl_write_mono_alpha_span(%struct.TYPE_37__* %528, i64 %529, i64 %530, i64 %531, i64 %532, i64* %538)
  %540 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %541 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %540, i32 0, i32 1
  %542 = load %struct.TYPE_30__*, %struct.TYPE_30__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %546 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %545, i32 0, i32 1
  %547 = load %struct.TYPE_30__*, %struct.TYPE_30__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %547, i32 0, i32 1
  store i32 %544, i32* %548, align 4
  br label %549

549:                                              ; preds = %537, %488
  br label %550

550:                                              ; preds = %549, %481
  br label %551

551:                                              ; preds = %550, %451
  store i32 0, i32* %29, align 4
  br label %552

552:                                              ; preds = %551, %196, %180, %152, %135, %85, %69
  %553 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %553)
  %554 = load i32, i32* %29, align 4
  switch i32 %554, label %556 [
    i32 0, label %555
    i32 1, label %555
  ]

555:                                              ; preds = %552, %552
  ret void

556:                                              ; preds = %552
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MEMSET(i64*, i32, i64) #2

declare dso_local i64 @clip_span(%struct.TYPE_37__*, i64, i64, i64, i64*) #2

declare dso_local i64 @gl_scissor_span(%struct.TYPE_37__*, i64, i64, i64, i64*) #2

declare dso_local i32 @stipple_polygon_span(%struct.TYPE_37__*, i64, i64, i64, i64*) #2

declare dso_local i64 @gl_alpha_test(%struct.TYPE_37__*, i64, i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @gl_stencil_span(%struct.TYPE_37__*, i64, i64, i64, i64*) #2

declare dso_local i32 @gl_depth_stencil_span(%struct.TYPE_37__*, i64, i64, i64, i32*, i64*) #2

declare dso_local i32 @gl_logicop_rgba_span(%struct.TYPE_37__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*) #2

declare dso_local i32 @gl_blend_span(%struct.TYPE_37__*, i64, i64, i64, i64*, i64*, i64*, i64*, i64*) #2

declare dso_local i32 @gl_mask_color_span(%struct.TYPE_37__*, i64, i64, i64, i64*, i64*, i64*, i64*) #2

declare dso_local i32 @gl_write_alpha_span(%struct.TYPE_37__*, i64, i64, i64, i64*, i64*) #2

declare dso_local i32 @gl_write_mono_alpha_span(%struct.TYPE_37__*, i64, i64, i64, i64, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
