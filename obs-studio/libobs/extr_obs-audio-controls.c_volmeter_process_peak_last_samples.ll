; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_process_peak_last_samples.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_process_peak_last_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, float*, i64)* @volmeter_process_peak_last_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volmeter_process_peak_last_samples(%struct.TYPE_3__* %0, i32 %1, float* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  switch i64 %9, label %194 [
    i64 0, label %10
    i64 1, label %11
    i64 2, label %76
    i64 3, label %137
  ]

10:                                               ; preds = %4
  br label %247

11:                                               ; preds = %4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load float**, float*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float*, float** %14, i64 %16
  %18 = load float*, float** %17, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  %20 = load float, float* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load float**, float*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float*, float** %23, i64 %25
  %27 = load float*, float** %26, align 8
  %28 = getelementptr inbounds float, float* %27, i64 0
  store float %20, float* %28, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load float**, float*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float*, float** %31, i64 %33
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 2
  %37 = load float, float* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load float**, float*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float*, float** %40, i64 %42
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  store float %37, float* %45, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load float**, float*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float*, float** %48, i64 %50
  %52 = load float*, float** %51, align 8
  %53 = getelementptr inbounds float, float* %52, i64 3
  %54 = load float, float* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load float**, float*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float*, float** %57, i64 %59
  %61 = load float*, float** %60, align 8
  %62 = getelementptr inbounds float, float* %61, i64 2
  store float %54, float* %62, align 4
  %63 = load float*, float** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load float**, float*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float*, float** %70, i64 %72
  %74 = load float*, float** %73, align 8
  %75 = getelementptr inbounds float, float* %74, i64 3
  store float %67, float* %75, align 4
  br label %247

76:                                               ; preds = %4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load float**, float*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float*, float** %79, i64 %81
  %83 = load float*, float** %82, align 8
  %84 = getelementptr inbounds float, float* %83, i64 2
  %85 = load float, float* %84, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load float**, float*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float*, float** %88, i64 %90
  %92 = load float*, float** %91, align 8
  %93 = getelementptr inbounds float, float* %92, i64 0
  store float %85, float* %93, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load float**, float*** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float*, float** %96, i64 %98
  %100 = load float*, float** %99, align 8
  %101 = getelementptr inbounds float, float* %100, i64 3
  %102 = load float, float* %101, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load float**, float*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float*, float** %105, i64 %107
  %109 = load float*, float** %108, align 8
  %110 = getelementptr inbounds float, float* %109, i64 1
  store float %102, float* %110, align 4
  %111 = load float*, float** %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = sub i64 %112, 2
  %114 = getelementptr inbounds float, float* %111, i64 %113
  %115 = load float, float* %114, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load float**, float*** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float*, float** %118, i64 %120
  %122 = load float*, float** %121, align 8
  %123 = getelementptr inbounds float, float* %122, i64 2
  store float %115, float* %123, align 4
  %124 = load float*, float** %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds float, float* %124, i64 %126
  %128 = load float, float* %127, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load float**, float*** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float*, float** %131, i64 %133
  %135 = load float*, float** %134, align 8
  %136 = getelementptr inbounds float, float* %135, i64 3
  store float %128, float* %136, align 4
  br label %247

137:                                              ; preds = %4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load float**, float*** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float*, float** %140, i64 %142
  %144 = load float*, float** %143, align 8
  %145 = getelementptr inbounds float, float* %144, i64 3
  %146 = load float, float* %145, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load float**, float*** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float*, float** %149, i64 %151
  %153 = load float*, float** %152, align 8
  %154 = getelementptr inbounds float, float* %153, i64 0
  store float %146, float* %154, align 4
  %155 = load float*, float** %7, align 8
  %156 = load i64, i64* %8, align 8
  %157 = sub i64 %156, 3
  %158 = getelementptr inbounds float, float* %155, i64 %157
  %159 = load float, float* %158, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load float**, float*** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float*, float** %162, i64 %164
  %166 = load float*, float** %165, align 8
  %167 = getelementptr inbounds float, float* %166, i64 1
  store float %159, float* %167, align 4
  %168 = load float*, float** %7, align 8
  %169 = load i64, i64* %8, align 8
  %170 = sub i64 %169, 2
  %171 = getelementptr inbounds float, float* %168, i64 %170
  %172 = load float, float* %171, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load float**, float*** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float*, float** %175, i64 %177
  %179 = load float*, float** %178, align 8
  %180 = getelementptr inbounds float, float* %179, i64 2
  store float %172, float* %180, align 4
  %181 = load float*, float** %7, align 8
  %182 = load i64, i64* %8, align 8
  %183 = sub i64 %182, 1
  %184 = getelementptr inbounds float, float* %181, i64 %183
  %185 = load float, float* %184, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load float**, float*** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float*, float** %188, i64 %190
  %192 = load float*, float** %191, align 8
  %193 = getelementptr inbounds float, float* %192, i64 3
  store float %185, float* %193, align 4
  br label %247

194:                                              ; preds = %4
  %195 = load float*, float** %7, align 8
  %196 = load i64, i64* %8, align 8
  %197 = sub i64 %196, 4
  %198 = getelementptr inbounds float, float* %195, i64 %197
  %199 = load float, float* %198, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load float**, float*** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float*, float** %202, i64 %204
  %206 = load float*, float** %205, align 8
  %207 = getelementptr inbounds float, float* %206, i64 0
  store float %199, float* %207, align 4
  %208 = load float*, float** %7, align 8
  %209 = load i64, i64* %8, align 8
  %210 = sub i64 %209, 3
  %211 = getelementptr inbounds float, float* %208, i64 %210
  %212 = load float, float* %211, align 4
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load float**, float*** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float*, float** %215, i64 %217
  %219 = load float*, float** %218, align 8
  %220 = getelementptr inbounds float, float* %219, i64 1
  store float %212, float* %220, align 4
  %221 = load float*, float** %7, align 8
  %222 = load i64, i64* %8, align 8
  %223 = sub i64 %222, 2
  %224 = getelementptr inbounds float, float* %221, i64 %223
  %225 = load float, float* %224, align 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load float**, float*** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float*, float** %228, i64 %230
  %232 = load float*, float** %231, align 8
  %233 = getelementptr inbounds float, float* %232, i64 2
  store float %225, float* %233, align 4
  %234 = load float*, float** %7, align 8
  %235 = load i64, i64* %8, align 8
  %236 = sub i64 %235, 1
  %237 = getelementptr inbounds float, float* %234, i64 %236
  %238 = load float, float* %237, align 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load float**, float*** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float*, float** %241, i64 %243
  %245 = load float*, float** %244, align 8
  %246 = getelementptr inbounds float, float* %245, i64 3
  store float %238, float* %246, align 4
  br label %247

247:                                              ; preds = %194, %137, %76, %11, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
