; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_process_expansion.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_process_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expander_data = type { float, float, i64, float**, i64, float, float, float*, float, i32** }

@MAX_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expander_data*, float**, i64)* @process_expansion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_expansion(%struct.expander_data* %0, float** %1, i64 %2) #0 {
  %4 = alloca %struct.expander_data*, align 8
  %5 = alloca float**, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.expander_data* %0, %struct.expander_data** %4, align 8
  store float** %1, float*** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %15 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %14, i32 0, i32 0
  %16 = load float, float* %15, align 8
  store float %16, float* %7, align 4
  %17 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %18 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %17, i32 0, i32 1
  %19 = load float, float* %18, align 4
  store float %19, float* %8, align 4
  %20 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %21 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @resize_gaindB_buffer(%struct.expander_data* %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %3
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %36 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %35, i32 0, i32 3
  %37 = load float**, float*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float*, float** %37, i64 %39
  %41 = load float*, float** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = mul i64 %42, 4
  %44 = call i32 @memset(float* %41, i32 0, i64 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %30

48:                                               ; preds = %30
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %264, %48
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %52 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %267

55:                                               ; preds = %49
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %245, %55
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %248

60:                                               ; preds = %56
  %61 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %62 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %61, i32 0, i32 9
  %63 = load i32**, i32*** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call float @mul_to_db(i32 %69)
  store float %70, float* %12, align 4
  %71 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %72 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %71, i32 0, i32 5
  %73 = load float, float* %72, align 8
  %74 = load float, float* %12, align 4
  %75 = fsub float %73, %74
  %76 = fcmp ogt float %75, 0.000000e+00
  br i1 %76, label %77, label %88

77:                                               ; preds = %60
  %78 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %79 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %78, i32 0, i32 6
  %80 = load float, float* %79, align 4
  %81 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %82 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %81, i32 0, i32 5
  %83 = load float, float* %82, align 8
  %84 = load float, float* %12, align 4
  %85 = fsub float %83, %84
  %86 = fmul float %80, %85
  %87 = call float @llvm.maxnum.f32(float %86, float -6.000000e+01)
  br label %89

88:                                               ; preds = %60
  br label %89

89:                                               ; preds = %88, %77
  %90 = phi float [ %87, %77 ], [ 0.000000e+00, %88 ]
  store float %90, float* %13, align 4
  %91 = load i64, i64* %11, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %159

93:                                               ; preds = %89
  %94 = load float, float* %13, align 4
  %95 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %96 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %95, i32 0, i32 3
  %97 = load float**, float*** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds float*, float** %97, i64 %98
  %100 = load float*, float** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = sub i64 %101, 1
  %103 = getelementptr inbounds float, float* %100, i64 %102
  %104 = load float, float* %103, align 4
  %105 = fcmp ogt float %94, %104
  br i1 %105, label %106, label %132

106:                                              ; preds = %93
  %107 = load float, float* %7, align 4
  %108 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %109 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %108, i32 0, i32 3
  %110 = load float**, float*** %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds float*, float** %110, i64 %111
  %113 = load float*, float** %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = sub i64 %114, 1
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = fmul float %107, %117
  %119 = load float, float* %7, align 4
  %120 = fsub float 1.000000e+00, %119
  %121 = load float, float* %13, align 4
  %122 = fmul float %120, %121
  %123 = fadd float %118, %122
  %124 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %125 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %124, i32 0, i32 3
  %126 = load float**, float*** %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds float*, float** %126, i64 %127
  %129 = load float*, float** %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds float, float* %129, i64 %130
  store float %123, float* %131, align 4
  br label %158

132:                                              ; preds = %93
  %133 = load float, float* %8, align 4
  %134 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %135 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %134, i32 0, i32 3
  %136 = load float**, float*** %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds float*, float** %136, i64 %137
  %139 = load float*, float** %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = sub i64 %140, 1
  %142 = getelementptr inbounds float, float* %139, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fmul float %133, %143
  %145 = load float, float* %8, align 4
  %146 = fsub float 1.000000e+00, %145
  %147 = load float, float* %13, align 4
  %148 = fmul float %146, %147
  %149 = fadd float %144, %148
  %150 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %151 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %150, i32 0, i32 3
  %152 = load float**, float*** %151, align 8
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds float*, float** %152, i64 %153
  %155 = load float*, float** %154, align 8
  %156 = load i64, i64* %11, align 8
  %157 = getelementptr inbounds float, float* %155, i64 %156
  store float %149, float* %157, align 4
  br label %158

158:                                              ; preds = %132, %106
  br label %213

159:                                              ; preds = %89
  %160 = load float, float* %13, align 4
  %161 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %162 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %161, i32 0, i32 7
  %163 = load float*, float** %162, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds float, float* %163, i64 %164
  %166 = load float, float* %165, align 4
  %167 = fcmp ogt float %160, %166
  br i1 %167, label %168, label %190

168:                                              ; preds = %159
  %169 = load float, float* %7, align 4
  %170 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %171 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %170, i32 0, i32 7
  %172 = load float*, float** %171, align 8
  %173 = load i64, i64* %10, align 8
  %174 = getelementptr inbounds float, float* %172, i64 %173
  %175 = load float, float* %174, align 4
  %176 = fmul float %169, %175
  %177 = load float, float* %7, align 4
  %178 = fsub float 1.000000e+00, %177
  %179 = load float, float* %13, align 4
  %180 = fmul float %178, %179
  %181 = fadd float %176, %180
  %182 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %183 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %182, i32 0, i32 3
  %184 = load float**, float*** %183, align 8
  %185 = load i64, i64* %10, align 8
  %186 = getelementptr inbounds float*, float** %184, i64 %185
  %187 = load float*, float** %186, align 8
  %188 = load i64, i64* %11, align 8
  %189 = getelementptr inbounds float, float* %187, i64 %188
  store float %181, float* %189, align 4
  br label %212

190:                                              ; preds = %159
  %191 = load float, float* %8, align 4
  %192 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %193 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %192, i32 0, i32 7
  %194 = load float*, float** %193, align 8
  %195 = load i64, i64* %10, align 8
  %196 = getelementptr inbounds float, float* %194, i64 %195
  %197 = load float, float* %196, align 4
  %198 = fmul float %191, %197
  %199 = load float, float* %8, align 4
  %200 = fsub float 1.000000e+00, %199
  %201 = load float, float* %13, align 4
  %202 = fmul float %200, %201
  %203 = fadd float %198, %202
  %204 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %205 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %204, i32 0, i32 3
  %206 = load float**, float*** %205, align 8
  %207 = load i64, i64* %10, align 8
  %208 = getelementptr inbounds float*, float** %206, i64 %207
  %209 = load float*, float** %208, align 8
  %210 = load i64, i64* %11, align 8
  %211 = getelementptr inbounds float, float* %209, i64 %210
  store float %203, float* %211, align 4
  br label %212

212:                                              ; preds = %190, %168
  br label %213

213:                                              ; preds = %212, %158
  %214 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %215 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %214, i32 0, i32 3
  %216 = load float**, float*** %215, align 8
  %217 = load i64, i64* %10, align 8
  %218 = getelementptr inbounds float*, float** %216, i64 %217
  %219 = load float*, float** %218, align 8
  %220 = load i64, i64* %11, align 8
  %221 = getelementptr inbounds float, float* %219, i64 %220
  %222 = load float, float* %221, align 4
  %223 = call i32 @fminf(i32 0, float %222)
  %224 = call float @db_to_mul(i32 %223)
  store float %224, float* %13, align 4
  %225 = load float**, float*** %5, align 8
  %226 = load i64, i64* %10, align 8
  %227 = getelementptr inbounds float*, float** %225, i64 %226
  %228 = load float*, float** %227, align 8
  %229 = icmp ne float* %228, null
  br i1 %229, label %230, label %244

230:                                              ; preds = %213
  %231 = load float, float* %13, align 4
  %232 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %233 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %232, i32 0, i32 8
  %234 = load float, float* %233, align 8
  %235 = fmul float %231, %234
  %236 = load float**, float*** %5, align 8
  %237 = load i64, i64* %10, align 8
  %238 = getelementptr inbounds float*, float** %236, i64 %237
  %239 = load float*, float** %238, align 8
  %240 = load i64, i64* %11, align 8
  %241 = getelementptr inbounds float, float* %239, i64 %240
  %242 = load float, float* %241, align 4
  %243 = fmul float %242, %235
  store float %243, float* %241, align 4
  br label %244

244:                                              ; preds = %230, %213
  br label %245

245:                                              ; preds = %244
  %246 = load i64, i64* %11, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %11, align 8
  br label %56

248:                                              ; preds = %56
  %249 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %250 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %249, i32 0, i32 3
  %251 = load float**, float*** %250, align 8
  %252 = load i64, i64* %10, align 8
  %253 = getelementptr inbounds float*, float** %251, i64 %252
  %254 = load float*, float** %253, align 8
  %255 = load i64, i64* %6, align 8
  %256 = sub nsw i64 %255, 1
  %257 = getelementptr inbounds float, float* %254, i64 %256
  %258 = load float, float* %257, align 4
  %259 = load %struct.expander_data*, %struct.expander_data** %4, align 8
  %260 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %259, i32 0, i32 7
  %261 = load float*, float** %260, align 8
  %262 = load i64, i64* %10, align 8
  %263 = getelementptr inbounds float, float* %261, i64 %262
  store float %258, float* %263, align 4
  br label %264

264:                                              ; preds = %248
  %265 = load i64, i64* %10, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %10, align 8
  br label %49

267:                                              ; preds = %49
  ret void
}

declare dso_local i32 @resize_gaindB_buffer(%struct.expander_data*, i64) #1

declare dso_local i32 @memset(float*, i32, i64) #1

declare dso_local float @mul_to_db(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #2

declare dso_local float @db_to_mul(i32) #1

declare dso_local i32 @fminf(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
