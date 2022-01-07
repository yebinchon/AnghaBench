; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_write_index_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_write_index_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_31__ = type { i64 (%struct.TYPE_32__*, i32, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32)*, i32 (%struct.TYPE_32__*, i32, i32, i32, i32*, i32*)* }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i64 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@WINCLIP_BIT = common dso_local global i32 0, align 4
@GL_BITMAP = common dso_local global i64 0, align 8
@GL_NICEST = common dso_local global i64 0, align 8
@GL_POLYGON = common dso_local global i64 0, align 8
@NO_DRAW_BIT = common dso_local global i32 0, align 4
@FRONT_AND_BACK_BIT = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_write_index_span(%struct.TYPE_32__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  %19 = load i32, i32* @MAX_WIDTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* @MAX_WIDTH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @MEMSET(i32* %22, i32 1, i32 %26)
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @WINCLIP_BIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %7
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @GL_BITMAP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34, %7
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @clip_span(%struct.TYPE_32__* %39, i32 %40, i32 %41, i32 %42, i32* %22)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 1, i32* %18, align 4
  br label %266

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @GL_NICEST, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @GL_BITMAP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60, %53
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @gl_fog_index_pixels(%struct.TYPE_32__* %65, i32 %66, i32* %67, i32* %68)
  br label %70

70:                                               ; preds = %64, %60, %47
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @gl_scissor_span(%struct.TYPE_32__* %77, i32 %78, i32 %79, i32 %80, i32* %22)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 1, i32* %18, align 4
  br label %266

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @GL_POLYGON, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @stipple_polygon_span(%struct.TYPE_32__* %96, i32 %97, i32 %98, i32 %99, i32* %22)
  br label %101

101:                                              ; preds = %95, %91, %85
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i64 @gl_stencil_span(%struct.TYPE_32__* %108, i32 %109, i32 %110, i32 %111, i32* %22)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 1, i32* %18, align 4
  br label %266

115:                                              ; preds = %107
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @gl_depth_stencil_span(%struct.TYPE_32__* %116, i32 %117, i32 %118, i32 %119, i32* %120, i32* %22)
  br label %143

122:                                              ; preds = %101
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %122
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 0
  %132 = load i64 (%struct.TYPE_32__*, i32, i32, i32, i32*, i32*)*, i64 (%struct.TYPE_32__*, i32, i32, i32, i32*, i32*)** %131, align 8
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32*, i32** %12, align 8
  %138 = call i64 %132(%struct.TYPE_32__* %133, i32 %134, i32 %135, i32 %136, i32* %137, i32* %22)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  store i32 1, i32* %18, align 4
  br label %266

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %122
  br label %143

143:                                              ; preds = %142, %115
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NO_DRAW_BIT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 1, i32* %18, align 4
  br label %266

151:                                              ; preds = %143
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = call i32 @MEMCPY(i32* %25, i32* %159, i32 %163)
  br label %165

165:                                              ; preds = %158, %151
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32*, i32** %13, align 8
  %177 = call i32 @gl_logicop_ci_span(%struct.TYPE_32__* %172, i32 %173, i32 %174, i32 %175, i32* %176, i32* %22)
  br label %178

178:                                              ; preds = %171, %165
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %178
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %11, align 4
  %189 = load i32*, i32** %13, align 8
  %190 = call i32 @gl_mask_index_span(%struct.TYPE_32__* %185, i32 %186, i32 %187, i32 %188, i32* %189)
  br label %191

191:                                              ; preds = %184, %178
  %192 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 2
  %195 = load i32 (%struct.TYPE_32__*, i32, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32, i32, i32, i32*, i32*)** %194, align 8
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32*, i32** %13, align 8
  %201 = call i32 %195(%struct.TYPE_32__* %196, i32 %197, i32 %198, i32 %199, i32* %200, i32* %22)
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @FRONT_AND_BACK_BIT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %265

208:                                              ; preds = %191
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 1
  %212 = load i32 (%struct.TYPE_32__*, i32)*, i32 (%struct.TYPE_32__*, i32)** %211, align 8
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %214 = load i32, i32* @GL_BACK, align 4
  %215 = call i32 %212(%struct.TYPE_32__* %213, i32 %214)
  %216 = load i32*, i32** %13, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 %218, 4
  %220 = trunc i64 %219 to i32
  %221 = call i32 @MEMCPY(i32* %216, i32* %25, i32 %220)
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %208
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load i32*, i32** %13, align 8
  %233 = call i32 @gl_logicop_ci_span(%struct.TYPE_32__* %228, i32 %229, i32 %230, i32 %231, i32* %232, i32* %22)
  br label %234

234:                                              ; preds = %227, %208
  %235 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %234
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %11, align 4
  %245 = load i32*, i32** %13, align 8
  %246 = call i32 @gl_mask_index_span(%struct.TYPE_32__* %241, i32 %242, i32 %243, i32 %244, i32* %245)
  br label %247

247:                                              ; preds = %240, %234
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 2
  %251 = load i32 (%struct.TYPE_32__*, i32, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_32__*, i32, i32, i32, i32*, i32*)** %250, align 8
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %11, align 4
  %256 = load i32*, i32** %13, align 8
  %257 = call i32 %251(%struct.TYPE_32__* %252, i32 %253, i32 %254, i32 %255, i32* %256, i32* %22)
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 1
  %261 = load i32 (%struct.TYPE_32__*, i32)*, i32 (%struct.TYPE_32__*, i32)** %260, align 8
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %263 = load i32, i32* @GL_FRONT, align 4
  %264 = call i32 %261(%struct.TYPE_32__* %262, i32 %263)
  br label %265

265:                                              ; preds = %247, %191
  store i32 0, i32* %18, align 4
  br label %266

266:                                              ; preds = %265, %150, %140, %114, %83, %45
  %267 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %267)
  %268 = load i32, i32* %18, align 4
  switch i32 %268, label %270 [
    i32 0, label %269
    i32 1, label %269
  ]

269:                                              ; preds = %266, %266
  ret void

270:                                              ; preds = %266
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MEMSET(i32*, i32, i32) #2

declare dso_local i64 @clip_span(%struct.TYPE_32__*, i32, i32, i32, i32*) #2

declare dso_local i32 @gl_fog_index_pixels(%struct.TYPE_32__*, i32, i32*, i32*) #2

declare dso_local i64 @gl_scissor_span(%struct.TYPE_32__*, i32, i32, i32, i32*) #2

declare dso_local i32 @stipple_polygon_span(%struct.TYPE_32__*, i32, i32, i32, i32*) #2

declare dso_local i64 @gl_stencil_span(%struct.TYPE_32__*, i32, i32, i32, i32*) #2

declare dso_local i32 @gl_depth_stencil_span(%struct.TYPE_32__*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @MEMCPY(i32*, i32*, i32) #2

declare dso_local i32 @gl_logicop_ci_span(%struct.TYPE_32__*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @gl_mask_index_span(%struct.TYPE_32__*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
