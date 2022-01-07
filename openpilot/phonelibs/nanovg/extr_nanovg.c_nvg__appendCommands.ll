; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__appendCommands.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__appendCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, float*, float, float }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float*, i32)* @nvg__appendCommands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvg__appendCommands(%struct.TYPE_7__* %0, float* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = call %struct.TYPE_6__* @nvg__getState(%struct.TYPE_7__* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 2
  %33 = add nsw i32 %28, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load float*, float** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i64 @realloc(float* %36, i32 %40)
  %42 = inttoptr i64 %41 to float*
  store float* %42, float** %9, align 8
  %43 = load float*, float** %9, align 8
  %44 = icmp eq float* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %23
  br label %264

46:                                               ; preds = %23
  %47 = load float*, float** %9, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store float* %47, float** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %3
  %54 = load float*, float** %5, align 8
  %55 = getelementptr inbounds float, float* %54, i64 0
  %56 = load float, float* %55, align 4
  %57 = fptosi float %56 to i32
  %58 = icmp ne i32 %57, 131
  br i1 %58, label %59, label %82

59:                                               ; preds = %53
  %60 = load float*, float** %5, align 8
  %61 = getelementptr inbounds float, float* %60, i64 0
  %62 = load float, float* %61, align 4
  %63 = fptosi float %62 to i32
  %64 = icmp ne i32 %63, 128
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load float*, float** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %66, i64 %69
  %71 = load float, float* %70, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  store float %71, float* %73, align 8
  %74 = load float*, float** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %74, i64 %77
  %79 = load float, float* %78, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  store float %79, float* %81, align 4
  br label %82

82:                                               ; preds = %65, %59, %53
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %243, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %244

87:                                               ; preds = %83
  %88 = load float*, float** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  %92 = load float, float* %91, align 4
  %93 = fptosi float %92 to i32
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  switch i32 %94, label %240 [
    i32 129, label %95
    i32 130, label %124
    i32 132, label %153
    i32 131, label %234
    i32 128, label %237
  ]

95:                                               ; preds = %87
  %96 = load float*, float** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %96, i64 %99
  %101 = load float*, float** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %101, i64 %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load float*, float** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %109, i64 %112
  %114 = load float, float* %113, align 4
  %115 = load float*, float** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %115, i64 %118
  %120 = load float, float* %119, align 4
  %121 = call i32 @nvgTransformPoint(float* %100, float* %105, i32 %108, float %114, float %120)
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 3
  store i32 %123, i32* %8, align 4
  br label %243

124:                                              ; preds = %87
  %125 = load float*, float** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %125, i64 %128
  %130 = load float*, float** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %130, i64 %133
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load float*, float** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %138, i64 %141
  %143 = load float, float* %142, align 4
  %144 = load float*, float** %5, align 8
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %144, i64 %147
  %149 = load float, float* %148, align 4
  %150 = call i32 @nvgTransformPoint(float* %129, float* %134, i32 %137, float %143, float %149)
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 3
  store i32 %152, i32* %8, align 4
  br label %243

153:                                              ; preds = %87
  %154 = load float*, float** %5, align 8
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %154, i64 %157
  %159 = load float*, float** %5, align 8
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %159, i64 %162
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load float*, float** %5, align 8
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %167, i64 %170
  %172 = load float, float* %171, align 4
  %173 = load float*, float** %5, align 8
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %173, i64 %176
  %178 = load float, float* %177, align 4
  %179 = call i32 @nvgTransformPoint(float* %158, float* %163, i32 %166, float %172, float %178)
  %180 = load float*, float** %5, align 8
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 3
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %180, i64 %183
  %185 = load float*, float** %5, align 8
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %185, i64 %188
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load float*, float** %5, align 8
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 3
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %193, i64 %196
  %198 = load float, float* %197, align 4
  %199 = load float*, float** %5, align 8
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %199, i64 %202
  %204 = load float, float* %203, align 4
  %205 = call i32 @nvgTransformPoint(float* %184, float* %189, i32 %192, float %198, float %204)
  %206 = load float*, float** %5, align 8
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 5
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %206, i64 %209
  %211 = load float*, float** %5, align 8
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 6
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %211, i64 %214
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load float*, float** %5, align 8
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 5
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %219, i64 %222
  %224 = load float, float* %223, align 4
  %225 = load float*, float** %5, align 8
  %226 = load i32, i32* %8, align 4
  %227 = add nsw i32 %226, 6
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %225, i64 %228
  %230 = load float, float* %229, align 4
  %231 = call i32 @nvgTransformPoint(float* %210, float* %215, i32 %218, float %224, float %230)
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, 7
  store i32 %233, i32* %8, align 4
  br label %243

234:                                              ; preds = %87
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %243

237:                                              ; preds = %87
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 2
  store i32 %239, i32* %8, align 4
  br label %243

240:                                              ; preds = %87
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %240, %237, %234, %153, %124, %95
  br label %83

244:                                              ; preds = %83
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 2
  %247 = load float*, float** %246, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %247, i64 %251
  %253 = load float*, float** %5, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = mul i64 %255, 4
  %257 = trunc i64 %256 to i32
  %258 = call i32 @memcpy(float* %252, float* %253, i32 %257)
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = add nsw i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %244, %45
  ret void
}

declare dso_local %struct.TYPE_6__* @nvg__getState(%struct.TYPE_7__*) #1

declare dso_local i64 @realloc(float*, i32) #1

declare dso_local i32 @nvgTransformPoint(float*, float*, i32, float, float) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
