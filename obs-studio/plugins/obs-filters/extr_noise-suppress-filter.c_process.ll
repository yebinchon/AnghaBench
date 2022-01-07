; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_noise-suppress-filter.c_process.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_noise-suppress-filter.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noise_suppress_data = type { i64, float**, i32, i32*, i64**, i32*, i32, i32* }

@SPEEX_PREPROCESS_SET_NOISE_SUPPRESS = common dso_local global i32 0, align 4
@c_32_to_16 = common dso_local global float 0.000000e+00, align 4
@c_16_to_32 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.noise_suppress_data*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(%struct.noise_suppress_data* %0) #0 {
  %2 = alloca %struct.noise_suppress_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.noise_suppress_data* %0, %struct.noise_suppress_data** %2, align 8
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %37, %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %15 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %20 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %25 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %24, i32 0, i32 1
  %26 = load float**, float*** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds float*, float** %26, i64 %27
  %29 = load float*, float** %28, align 8
  %30 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %31 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32 @circlebuf_pop_front(i32* %23, float* %29, i32 %35)
  br label %37

37:                                               ; preds = %18
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %12

40:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %44 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %49 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SPEEX_PREPROCESS_SET_NOISE_SUPPRESS, align 4
  %55 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %56 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %55, i32 0, i32 6
  %57 = call i32 @speex_preprocess_ctl(i32 %53, i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %47
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %41

61:                                               ; preds = %41
  store i64 0, i64* %5, align 8
  br label %62

62:                                               ; preds = %111, %61
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %65 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %114

68:                                               ; preds = %62
  store i64 0, i64* %6, align 8
  br label %69

69:                                               ; preds = %107, %68
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %72 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %110

76:                                               ; preds = %69
  %77 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %78 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %77, i32 0, i32 1
  %79 = load float**, float*** %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds float*, float** %79, i64 %80
  %82 = load float*, float** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds float, float* %82, i64 %83
  %85 = load float, float* %84, align 4
  store float %85, float* %7, align 4
  %86 = load float, float* %7, align 4
  %87 = fcmp ogt float %86, 1.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  store float 1.000000e+00, float* %7, align 4
  br label %94

89:                                               ; preds = %76
  %90 = load float, float* %7, align 4
  %91 = fcmp olt float %90, -1.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store float -1.000000e+00, float* %7, align 4
  br label %93

93:                                               ; preds = %92, %89
  br label %94

94:                                               ; preds = %93, %88
  %95 = load float, float* %7, align 4
  %96 = load float, float* @c_32_to_16, align 4
  %97 = fmul float %95, %96
  %98 = fptosi float %97 to i64
  %99 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %100 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %99, i32 0, i32 4
  %101 = load i64**, i64*** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds i64*, i64** %101, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  store i64 %98, i64* %106, align 8
  br label %107

107:                                              ; preds = %94
  %108 = load i64, i64* %6, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %6, align 8
  br label %69

110:                                              ; preds = %69
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %5, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %5, align 8
  br label %62

114:                                              ; preds = %62
  store i64 0, i64* %8, align 8
  br label %115

115:                                              ; preds = %135, %114
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %118 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ult i64 %116, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %115
  %122 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %123 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %129 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %128, i32 0, i32 4
  %130 = load i64**, i64*** %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds i64*, i64** %130, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = call i32 @speex_preprocess_run(i32 %127, i64* %133)
  br label %135

135:                                              ; preds = %121
  %136 = load i64, i64* %8, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %8, align 8
  br label %115

138:                                              ; preds = %115
  store i64 0, i64* %9, align 8
  br label %139

139:                                              ; preds = %178, %138
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %142 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ult i64 %140, %143
  br i1 %144, label %145, label %181

145:                                              ; preds = %139
  store i64 0, i64* %10, align 8
  br label %146

146:                                              ; preds = %174, %145
  %147 = load i64, i64* %10, align 8
  %148 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %149 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = icmp ult i64 %147, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %146
  %154 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %155 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %154, i32 0, i32 4
  %156 = load i64**, i64*** %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds i64*, i64** %156, i64 %157
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* %10, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = sitofp i64 %162 to float
  %164 = load float, float* @c_16_to_32, align 4
  %165 = fdiv float %163, %164
  %166 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %167 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %166, i32 0, i32 1
  %168 = load float**, float*** %167, align 8
  %169 = load i64, i64* %9, align 8
  %170 = getelementptr inbounds float*, float** %168, i64 %169
  %171 = load float*, float** %170, align 8
  %172 = load i64, i64* %10, align 8
  %173 = getelementptr inbounds float, float* %171, i64 %172
  store float %165, float* %173, align 4
  br label %174

174:                                              ; preds = %153
  %175 = load i64, i64* %10, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %10, align 8
  br label %146

177:                                              ; preds = %146
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %9, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %9, align 8
  br label %139

181:                                              ; preds = %139
  store i64 0, i64* %11, align 8
  br label %182

182:                                              ; preds = %207, %181
  %183 = load i64, i64* %11, align 8
  %184 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %185 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ult i64 %183, %186
  br i1 %187, label %188, label %210

188:                                              ; preds = %182
  %189 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %190 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %195 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %194, i32 0, i32 1
  %196 = load float**, float*** %195, align 8
  %197 = load i64, i64* %11, align 8
  %198 = getelementptr inbounds float*, float** %196, i64 %197
  %199 = load float*, float** %198, align 8
  %200 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %2, align 8
  %201 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = mul i64 %203, 4
  %205 = trunc i64 %204 to i32
  %206 = call i32 @circlebuf_push_back(i32* %193, float* %199, i32 %205)
  br label %207

207:                                              ; preds = %188
  %208 = load i64, i64* %11, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %11, align 8
  br label %182

210:                                              ; preds = %182
  ret void
}

declare dso_local i32 @circlebuf_pop_front(i32*, float*, i32) #1

declare dso_local i32 @speex_preprocess_ctl(i32, i32, i32*) #1

declare dso_local i32 @speex_preprocess_run(i32, i64*) #1

declare dso_local i32 @circlebuf_push_back(i32*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
