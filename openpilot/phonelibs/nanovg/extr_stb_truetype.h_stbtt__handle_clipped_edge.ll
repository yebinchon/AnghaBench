; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__handle_clipped_edge.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__handle_clipped_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, %struct.TYPE_3__*, float, float, float, float)* @stbtt__handle_clipped_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__handle_clipped_edge(float* %0, i32 %1, %struct.TYPE_3__* %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %15 = load float, float* %12, align 4
  %16 = load float, float* %14, align 4
  %17 = fcmp oeq float %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %256

19:                                               ; preds = %7
  %20 = load float, float* %12, align 4
  %21 = load float, float* %14, align 4
  %22 = fcmp olt float %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @STBTT_assert(i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load float, float* %29, align 4
  %31 = fcmp ole float %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @STBTT_assert(i32 %32)
  %34 = load float, float* %12, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load float, float* %36, align 4
  %38 = fcmp ogt float %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %256

40:                                               ; preds = %19
  %41 = load float, float* %14, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 4
  %45 = fcmp olt float %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %256

47:                                               ; preds = %40
  %48 = load float, float* %12, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fcmp olt float %48, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load float, float* %13, align 4
  %55 = load float, float* %11, align 4
  %56 = fsub float %54, %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load float, float* %58, align 4
  %60 = load float, float* %12, align 4
  %61 = fsub float %59, %60
  %62 = fmul float %56, %61
  %63 = load float, float* %14, align 4
  %64 = load float, float* %12, align 4
  %65 = fsub float %63, %64
  %66 = fdiv float %62, %65
  %67 = load float, float* %11, align 4
  %68 = fadd float %67, %66
  store float %68, float* %11, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load float, float* %70, align 4
  store float %71, float* %12, align 4
  br label %72

72:                                               ; preds = %53, %47
  %73 = load float, float* %14, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load float, float* %75, align 4
  %77 = fcmp ogt float %73, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = load float, float* %13, align 4
  %80 = load float, float* %11, align 4
  %81 = fsub float %79, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load float, float* %83, align 4
  %85 = load float, float* %14, align 4
  %86 = fsub float %84, %85
  %87 = fmul float %81, %86
  %88 = load float, float* %14, align 4
  %89 = load float, float* %12, align 4
  %90 = fsub float %88, %89
  %91 = fdiv float %87, %90
  %92 = load float, float* %13, align 4
  %93 = fadd float %92, %91
  store float %93, float* %13, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load float, float* %95, align 4
  store float %96, float* %14, align 4
  br label %97

97:                                               ; preds = %78, %72
  %98 = load float, float* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sitofp i32 %99 to float
  %101 = fcmp oeq float %98, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load float, float* %13, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  %106 = sitofp i32 %105 to float
  %107 = fcmp ole float %103, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @STBTT_assert(i32 %108)
  br label %167

110:                                              ; preds = %97
  %111 = load float, float* %11, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = sitofp i32 %113 to float
  %115 = fcmp oeq float %111, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load float, float* %13, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sitofp i32 %118 to float
  %120 = fcmp oge float %117, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @STBTT_assert(i32 %121)
  br label %166

123:                                              ; preds = %110
  %124 = load float, float* %11, align 4
  %125 = load i32, i32* %9, align 4
  %126 = sitofp i32 %125 to float
  %127 = fcmp ole float %124, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load float, float* %13, align 4
  %130 = load i32, i32* %9, align 4
  %131 = sitofp i32 %130 to float
  %132 = fcmp ole float %129, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @STBTT_assert(i32 %133)
  br label %165

135:                                              ; preds = %123
  %136 = load float, float* %11, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  %139 = sitofp i32 %138 to float
  %140 = fcmp oge float %136, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %135
  %142 = load float, float* %13, align 4
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  %145 = sitofp i32 %144 to float
  %146 = fcmp oge float %142, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @STBTT_assert(i32 %147)
  br label %164

149:                                              ; preds = %135
  %150 = load float, float* %13, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sitofp i32 %151 to float
  %153 = fcmp oge float %150, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load float, float* %13, align 4
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  %158 = sitofp i32 %157 to float
  %159 = fcmp ole float %155, %158
  br label %160

160:                                              ; preds = %154, %149
  %161 = phi i1 [ false, %149 ], [ %159, %154 ]
  %162 = zext i1 %161 to i32
  %163 = call i32 @STBTT_assert(i32 %162)
  br label %164

164:                                              ; preds = %160, %141
  br label %165

165:                                              ; preds = %164, %128
  br label %166

166:                                              ; preds = %165, %116
  br label %167

167:                                              ; preds = %166, %102
  %168 = load float, float* %11, align 4
  %169 = load i32, i32* %9, align 4
  %170 = sitofp i32 %169 to float
  %171 = fcmp ole float %168, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %167
  %173 = load float, float* %13, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sitofp i32 %174 to float
  %176 = fcmp ole float %173, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %172
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  %180 = load float, float* %179, align 4
  %181 = load float, float* %14, align 4
  %182 = load float, float* %12, align 4
  %183 = fsub float %181, %182
  %184 = fmul float %180, %183
  %185 = load float*, float** %8, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %185, i64 %187
  %189 = load float, float* %188, align 4
  %190 = fadd float %189, %184
  store float %190, float* %188, align 4
  br label %256

191:                                              ; preds = %172, %167
  %192 = load float, float* %11, align 4
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  %195 = sitofp i32 %194 to float
  %196 = fcmp oge float %192, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %191
  %198 = load float, float* %13, align 4
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  %201 = sitofp i32 %200 to float
  %202 = fcmp oge float %198, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  br label %255

204:                                              ; preds = %197, %191
  %205 = load float, float* %11, align 4
  %206 = load i32, i32* %9, align 4
  %207 = sitofp i32 %206 to float
  %208 = fcmp oge float %205, %207
  br i1 %208, label %209, label %226

209:                                              ; preds = %204
  %210 = load float, float* %11, align 4
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 1
  %213 = sitofp i32 %212 to float
  %214 = fcmp ole float %210, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %209
  %216 = load float, float* %13, align 4
  %217 = load i32, i32* %9, align 4
  %218 = sitofp i32 %217 to float
  %219 = fcmp oge float %216, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load float, float* %13, align 4
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  %224 = sitofp i32 %223 to float
  %225 = fcmp ole float %221, %224
  br label %226

226:                                              ; preds = %220, %215, %209, %204
  %227 = phi i1 [ false, %215 ], [ false, %209 ], [ false, %204 ], [ %225, %220 ]
  %228 = zext i1 %227 to i32
  %229 = call i32 @STBTT_assert(i32 %228)
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 2
  %232 = load float, float* %231, align 4
  %233 = load float, float* %14, align 4
  %234 = load float, float* %12, align 4
  %235 = fsub float %233, %234
  %236 = fmul float %232, %235
  %237 = load float, float* %11, align 4
  %238 = load i32, i32* %9, align 4
  %239 = sitofp i32 %238 to float
  %240 = fsub float %237, %239
  %241 = load float, float* %13, align 4
  %242 = load i32, i32* %9, align 4
  %243 = sitofp i32 %242 to float
  %244 = fsub float %241, %243
  %245 = fadd float %240, %244
  %246 = fdiv float %245, 2.000000e+00
  %247 = fsub float 1.000000e+00, %246
  %248 = fmul float %236, %247
  %249 = load float*, float** %8, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %249, i64 %251
  %253 = load float, float* %252, align 4
  %254 = fadd float %253, %248
  store float %254, float* %252, align 4
  br label %255

255:                                              ; preds = %226, %203
  br label %256

256:                                              ; preds = %18, %39, %46, %255, %177
  ret void
}

declare dso_local i32 @STBTT_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
