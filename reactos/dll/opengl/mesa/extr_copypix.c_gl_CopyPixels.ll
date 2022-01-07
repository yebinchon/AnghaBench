; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_copypix.c_gl_CopyPixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_copypix.c_gl_CopyPixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__, %struct.TYPE_15__*, i64 }
%struct.TYPE_16__ = type { i32*, i64*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glCopyPixels\00", align 1
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@GL_RENDER = common dso_local global i64 0, align 8
@GL_COLOR = common dso_local global i64 0, align 8
@GL_DEPTH = common dso_local global i64 0, align 8
@GL_STENCIL = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@GL_FEEDBACK = common dso_local global i64 0, align 8
@GL_COPY_PIXEL_TOKEN = common dso_local global i64 0, align 8
@GL_SELECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_CopyPixels(%struct.TYPE_17__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [4 x i32], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %17 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_17__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %22 = call i32 @gl_error(%struct.TYPE_17__* %20, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %261

23:                                               ; preds = %6
  %24 = load i64, i64* %10, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %11, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %23
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = load i32, i32* @GL_INVALID_VALUE, align 4
  %32 = call i32 @gl_error(%struct.TYPE_17__* %30, i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %261

33:                                               ; preds = %26
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = call i32 @gl_update_state(%struct.TYPE_17__* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GL_RENDER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %146

47:                                               ; preds = %41
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %261

54:                                               ; preds = %47
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = sitofp i64 %60 to float
  %62 = fadd float %61, 5.000000e-01
  %63 = fptosi float %62 to i64
  store i64 %63, i64* %13, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to float
  %71 = fadd float %70, 5.000000e-01
  %72 = fptosi float %71 to i64
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @GL_COLOR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %54
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @copy_rgb_pixels(%struct.TYPE_17__* %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90)
  br label %145

92:                                               ; preds = %76, %54
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @GL_COLOR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %96
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = call i32 @copy_ci_pixels(%struct.TYPE_17__* %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110)
  br label %144

112:                                              ; preds = %96, %92
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @GL_DEPTH, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @copy_depth_pixels(%struct.TYPE_17__* %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  br label %143

125:                                              ; preds = %112
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @GL_STENCIL, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %14, align 8
  %137 = call i32 @copy_stencil_pixels(%struct.TYPE_17__* %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  br label %142

138:                                              ; preds = %125
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = load i32, i32* @GL_INVALID_ENUM, align 4
  %141 = call i32 @gl_error(%struct.TYPE_17__* %139, i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %129
  br label %143

143:                                              ; preds = %142, %116
  br label %144

144:                                              ; preds = %143, %103
  br label %145

145:                                              ; preds = %144, %83
  br label %261

146:                                              ; preds = %41
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @GL_FEEDBACK, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %244

152:                                              ; preds = %146
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = mul nsw i32 %158, %163
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %164, i32* %165, align 16
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %171, %176
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %177, i32* %178, align 4
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %184, %189
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %190, i32* %191, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %197, %202
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %203, i32* %204, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %206 = load i64, i64* @GL_COPY_PIXEL_TOKEN, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 @FEEDBACK_TOKEN(%struct.TYPE_17__* %205, i32 %207)
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 2
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 3
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @gl_feedback_vertex(%struct.TYPE_17__* %209, i64 %215, i64 %221, i64 %227, i64 %233, i32* %234, i32 %238, i32 %242)
  br label %260

244:                                              ; preds = %146
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @GL_SELECT, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %244
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  %255 = load i64*, i64** %254, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 2
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @gl_update_hitflag(%struct.TYPE_17__* %251, i64 %257)
  br label %259

259:                                              ; preds = %250, %244
  br label %260

260:                                              ; preds = %259, %152
  br label %261

261:                                              ; preds = %19, %29, %53, %260, %145
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_17__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @gl_update_state(%struct.TYPE_17__*) #1

declare dso_local i32 @copy_rgb_pixels(%struct.TYPE_17__*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @copy_ci_pixels(%struct.TYPE_17__*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @copy_depth_pixels(%struct.TYPE_17__*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @copy_stencil_pixels(%struct.TYPE_17__*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @FEEDBACK_TOKEN(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @gl_feedback_vertex(%struct.TYPE_17__*, i64, i64, i64, i64, i32*, i32, i32) #1

declare dso_local i32 @gl_update_hitflag(%struct.TYPE_17__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
