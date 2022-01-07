; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_write_monoindex_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_write_monoindex_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__ }
%struct.TYPE_35__ = type { i64 (%struct.TYPE_36__*, i64, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_36__*, i32)*, i32 (%struct.TYPE_36__*, i64, i32, i32, i32*)*, i32 (%struct.TYPE_36__*, i64, i32, i32, i64*, i32*)* }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i64 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@WINCLIP_BIT = common dso_local global i32 0, align 4
@GL_BITMAP = common dso_local global i64 0, align 8
@GL_POLYGON = common dso_local global i64 0, align 8
@NO_DRAW_BIT = common dso_local global i32 0, align 4
@GL_NICEST = common dso_local global i64 0, align 8
@FRONT_AND_BACK_BIT = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_write_monoindex_span(%struct.TYPE_36__* %0, i64 %1, i32 %2, i32 %3, i32* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %22 = load i32, i32* @MAX_WIDTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %26 = load i32, i32* @MAX_WIDTH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i64, i64 %27, align 16
  store i64 %27, i64* %18, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @MEMSET(i32* %25, i32 1, i64 %29)
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @WINCLIP_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %7
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @GL_BITMAP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37, %7
  %42 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @clip_span(%struct.TYPE_36__* %42, i64 %43, i32 %44, i32 %45, i32* %25)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %19, align 4
  br label %353

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %37
  %51 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @gl_scissor_span(%struct.TYPE_36__* %57, i64 %58, i32 %59, i32 %60, i32* %25)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %19, align 4
  br label %353

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %50
  %66 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* @GL_POLYGON, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @stipple_polygon_span(%struct.TYPE_36__* %76, i64 %77, i32 %78, i32 %79, i32* %25)
  br label %81

81:                                               ; preds = %75, %71, %65
  %82 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i64 @gl_stencil_span(%struct.TYPE_36__* %88, i64 %89, i32 %90, i32 %91, i32* %25)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 1, i32* %19, align 4
  br label %353

95:                                               ; preds = %87
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @gl_depth_stencil_span(%struct.TYPE_36__* %96, i64 %97, i32 %98, i32 %99, i32* %100, i32* %25)
  br label %123

102:                                              ; preds = %81
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %110, i32 0, i32 0
  %112 = load i64 (%struct.TYPE_36__*, i64, i32, i32, i32*, i32*)*, i64 (%struct.TYPE_36__*, i64, i32, i32, i32*, i32*)** %111, align 8
  %113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = call i64 %112(%struct.TYPE_36__* %113, i64 %114, i32 %115, i32 %116, i32* %117, i32* %25)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  store i32 1, i32* %19, align 4
  br label %353

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121, %102
  br label %123

123:                                              ; preds = %122, %95
  %124 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @NO_DRAW_BIT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 1, i32* %19, align 4
  br label %353

131:                                              ; preds = %123
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @GL_NICEST, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %160, label %144

144:                                              ; preds = %137
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* @GL_BITMAP, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %160, label %148

148:                                              ; preds = %144, %131
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %311

160:                                              ; preds = %154, %148, %144, %137
  %161 = load i32, i32* @MAX_WIDTH, align 4
  %162 = zext i32 %161 to i64
  %163 = call i8* @llvm.stacksave()
  store i8* %163, i8** %20, align 8
  %164 = alloca i64, i64 %162, align 16
  store i64 %162, i64* %21, align 8
  store i64 0, i64* %15, align 8
  br label %165

165:                                              ; preds = %173, %160
  %166 = load i64, i64* %15, align 8
  %167 = load i64, i64* %9, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* %15, align 8
  %172 = getelementptr inbounds i64, i64* %164, i64 %171
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %169
  %174 = load i64, i64* %15, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %15, align 8
  br label %165

176:                                              ; preds = %165
  %177 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %176
  %183 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @GL_NICEST, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %182
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* @GL_BITMAP, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %189, %182
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load i32*, i32** %12, align 8
  %197 = call i32 @gl_fog_index_pixels(%struct.TYPE_36__* %194, i64 %195, i32* %196, i64* %164)
  br label %198

198:                                              ; preds = %193, %189, %176
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = load i64, i64* %9, align 8
  %207 = mul i64 %206, 8
  %208 = call i32 @MEMCPY(i64* %28, i64* %164, i64 %207)
  br label %209

209:                                              ; preds = %205, %198
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %217 = load i64, i64* %9, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @gl_logicop_ci_span(%struct.TYPE_36__* %216, i64 %217, i32 %218, i32 %219, i64* %164, i32* %25)
  br label %221

221:                                              ; preds = %215, %209
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %229 = load i64, i64* %9, align 8
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @gl_mask_index_span(%struct.TYPE_36__* %228, i64 %229, i32 %230, i32 %231, i64* %164)
  br label %233

233:                                              ; preds = %227, %221
  %234 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %235, i32 0, i32 3
  %237 = load i32 (%struct.TYPE_36__*, i64, i32, i32, i64*, i32*)*, i32 (%struct.TYPE_36__*, i64, i32, i32, i64*, i32*)** %236, align 8
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %239 = load i64, i64* %9, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %11, align 4
  %242 = call i32 %237(%struct.TYPE_36__* %238, i64 %239, i32 %240, i32 %241, i64* %164, i32* %25)
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %309

249:                                              ; preds = %233
  %250 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %251, i32 0, i32 1
  %253 = load i32 (%struct.TYPE_36__*, i32)*, i32 (%struct.TYPE_36__*, i32)** %252, align 8
  %254 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %255 = load i32, i32* @GL_BACK, align 4
  %256 = call i32 %253(%struct.TYPE_36__* %254, i32 %255)
  store i64 0, i64* %15, align 8
  br label %257

257:                                              ; preds = %265, %249
  %258 = load i64, i64* %15, align 8
  %259 = load i64, i64* %9, align 8
  %260 = icmp ult i64 %258, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %257
  %262 = load i64, i64* %13, align 8
  %263 = load i64, i64* %15, align 8
  %264 = getelementptr inbounds i64, i64* %164, i64 %263
  store i64 %262, i64* %264, align 8
  br label %265

265:                                              ; preds = %261
  %266 = load i64, i64* %15, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %15, align 8
  br label %257

268:                                              ; preds = %257
  %269 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %268
  %275 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %276 = load i64, i64* %9, align 8
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @gl_logicop_ci_span(%struct.TYPE_36__* %275, i64 %276, i32 %277, i32 %278, i64* %164, i32* %25)
  br label %280

280:                                              ; preds = %274, %268
  %281 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %280
  %287 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %288 = load i64, i64* %9, align 8
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* %11, align 4
  %291 = call i32 @gl_mask_index_span(%struct.TYPE_36__* %287, i64 %288, i32 %289, i32 %290, i64* %164)
  br label %292

292:                                              ; preds = %286, %280
  %293 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %294, i32 0, i32 3
  %296 = load i32 (%struct.TYPE_36__*, i64, i32, i32, i64*, i32*)*, i32 (%struct.TYPE_36__*, i64, i32, i32, i64*, i32*)** %295, align 8
  %297 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %298 = load i64, i64* %9, align 8
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %11, align 4
  %301 = call i32 %296(%struct.TYPE_36__* %297, i64 %298, i32 %299, i32 %300, i64* %164, i32* %25)
  %302 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %303, i32 0, i32 1
  %305 = load i32 (%struct.TYPE_36__*, i32)*, i32 (%struct.TYPE_36__*, i32)** %304, align 8
  %306 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %307 = load i32, i32* @GL_FRONT, align 4
  %308 = call i32 %305(%struct.TYPE_36__* %306, i32 %307)
  br label %309

309:                                              ; preds = %292, %233
  %310 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %310)
  br label %352

311:                                              ; preds = %154
  %312 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %313, i32 0, i32 2
  %315 = load i32 (%struct.TYPE_36__*, i64, i32, i32, i32*)*, i32 (%struct.TYPE_36__*, i64, i32, i32, i32*)** %314, align 8
  %316 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %317 = load i64, i64* %9, align 8
  %318 = load i32, i32* %10, align 4
  %319 = load i32, i32* %11, align 4
  %320 = call i32 %315(%struct.TYPE_36__* %316, i64 %317, i32 %318, i32 %319, i32* %25)
  %321 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %351

327:                                              ; preds = %311
  %328 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %329, i32 0, i32 1
  %331 = load i32 (%struct.TYPE_36__*, i32)*, i32 (%struct.TYPE_36__*, i32)** %330, align 8
  %332 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %333 = load i32, i32* @GL_BACK, align 4
  %334 = call i32 %331(%struct.TYPE_36__* %332, i32 %333)
  %335 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %336, i32 0, i32 2
  %338 = load i32 (%struct.TYPE_36__*, i64, i32, i32, i32*)*, i32 (%struct.TYPE_36__*, i64, i32, i32, i32*)** %337, align 8
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %340 = load i64, i64* %9, align 8
  %341 = load i32, i32* %10, align 4
  %342 = load i32, i32* %11, align 4
  %343 = call i32 %338(%struct.TYPE_36__* %339, i64 %340, i32 %341, i32 %342, i32* %25)
  %344 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %345, i32 0, i32 1
  %347 = load i32 (%struct.TYPE_36__*, i32)*, i32 (%struct.TYPE_36__*, i32)** %346, align 8
  %348 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %349 = load i32, i32* @GL_FRONT, align 4
  %350 = call i32 %347(%struct.TYPE_36__* %348, i32 %349)
  br label %351

351:                                              ; preds = %327, %311
  br label %352

352:                                              ; preds = %351, %309
  store i32 0, i32* %19, align 4
  br label %353

353:                                              ; preds = %352, %130, %120, %94, %63, %48
  %354 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %354)
  %355 = load i32, i32* %19, align 4
  switch i32 %355, label %357 [
    i32 0, label %356
    i32 1, label %356
  ]

356:                                              ; preds = %353, %353
  ret void

357:                                              ; preds = %353
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MEMSET(i32*, i32, i64) #2

declare dso_local i64 @clip_span(%struct.TYPE_36__*, i64, i32, i32, i32*) #2

declare dso_local i64 @gl_scissor_span(%struct.TYPE_36__*, i64, i32, i32, i32*) #2

declare dso_local i32 @stipple_polygon_span(%struct.TYPE_36__*, i64, i32, i32, i32*) #2

declare dso_local i64 @gl_stencil_span(%struct.TYPE_36__*, i64, i32, i32, i32*) #2

declare dso_local i32 @gl_depth_stencil_span(%struct.TYPE_36__*, i64, i32, i32, i32*, i32*) #2

declare dso_local i32 @gl_fog_index_pixels(%struct.TYPE_36__*, i64, i32*, i64*) #2

declare dso_local i32 @MEMCPY(i64*, i64*, i64) #2

declare dso_local i32 @gl_logicop_ci_span(%struct.TYPE_36__*, i64, i32, i32, i64*, i32*) #2

declare dso_local i32 @gl_mask_index_span(%struct.TYPE_36__*, i64, i32, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
