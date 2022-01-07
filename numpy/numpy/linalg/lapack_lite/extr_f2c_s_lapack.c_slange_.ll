; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slange_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slange_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slange_.i__ = internal global i32 0, align 4
@slange_.j = internal global i32 0, align 4
@slange_.sum = internal global float 0.000000e+00, align 4
@slange_.scale = internal global float 0.000000e+00, align 4
@slange_.value = internal global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@c__1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @slange_(i8* %0, i32* %1, i32* %2, float* %3, i32* %4, float* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store float* %3, float** %10, align 8
  store i32* %4, i32** %11, align 8
  store float* %5, float** %12, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 1, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load float*, float** %10, align 8
  %27 = sext i32 %25 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds float, float* %26, i64 %28
  store float* %29, float** %10, align 8
  %30 = load float*, float** %12, align 8
  %31 = getelementptr inbounds float, float* %30, i32 -1
  store float* %31, float** %12, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @min(i32 %33, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  store float 0.000000e+00, float* @slange_.value, align 4
  br label %248

39:                                               ; preds = %6
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @lsame_(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  store float 0.000000e+00, float* @slange_.value, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  store i32 1, i32* @slange_.j, align 4
  br label %46

46:                                               ; preds = %78, %43
  %47 = load i32, i32* @slange_.j, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  store i32 1, i32* @slange_.i__, align 4
  br label %53

53:                                               ; preds = %74, %50
  %54 = load i32, i32* @slange_.i__, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load float, float* @slange_.value, align 4
  store float %58, float* %19, align 4
  %59 = load float*, float** %10, align 8
  %60 = load i32, i32* @slange_.i__, align 4
  %61 = load i32, i32* @slange_.j, align 4
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %59, i64 %65
  %67 = load float, float* %66, align 4
  store float %67, float* %18, align 4
  %68 = load float, float* %18, align 4
  %69 = call i32 @dabs(float %68)
  %70 = sitofp i32 %69 to float
  store float %70, float* %20, align 4
  %71 = load float, float* %19, align 4
  %72 = load float, float* %20, align 4
  %73 = call float @dmax(float %71, float %72)
  store float %73, float* @slange_.value, align 4
  br label %74

74:                                               ; preds = %57
  %75 = load i32, i32* @slange_.i__, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @slange_.i__, align 4
  br label %53

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* @slange_.j, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @slange_.j, align 4
  br label %46

81:                                               ; preds = %46
  br label %247

82:                                               ; preds = %39
  %83 = load i8*, i8** %7, align 8
  %84 = call i8* @lsame_(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %85 = icmp ne i8* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 49
  br i1 %90, label %91, label %131

91:                                               ; preds = %86, %82
  store float 0.000000e+00, float* @slange_.value, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %15, align 4
  store i32 1, i32* @slange_.j, align 4
  br label %94

94:                                               ; preds = %127, %91
  %95 = load i32, i32* @slange_.j, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %94
  store float 0.000000e+00, float* @slange_.sum, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %16, align 4
  store i32 1, i32* @slange_.i__, align 4
  br label %101

101:                                              ; preds = %120, %98
  %102 = load i32, i32* @slange_.i__, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load float*, float** %10, align 8
  %107 = load i32, i32* @slange_.i__, align 4
  %108 = load i32, i32* @slange_.j, align 4
  %109 = load i32, i32* %13, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %107, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %106, i64 %112
  %114 = load float, float* %113, align 4
  store float %114, float* %18, align 4
  %115 = load float, float* %18, align 4
  %116 = call i32 @dabs(float %115)
  %117 = sitofp i32 %116 to float
  %118 = load float, float* @slange_.sum, align 4
  %119 = fadd float %118, %117
  store float %119, float* @slange_.sum, align 4
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* @slange_.i__, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @slange_.i__, align 4
  br label %101

123:                                              ; preds = %101
  %124 = load float, float* @slange_.value, align 4
  %125 = load float, float* @slange_.sum, align 4
  %126 = call float @dmax(float %124, float %125)
  store float %126, float* @slange_.value, align 4
  br label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @slange_.j, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @slange_.j, align 4
  br label %94

130:                                              ; preds = %94
  br label %246

131:                                              ; preds = %86
  %132 = load i8*, i8** %7, align 8
  %133 = call i8* @lsame_(i8* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %211

135:                                              ; preds = %131
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %15, align 4
  store i32 1, i32* @slange_.i__, align 4
  br label %138

138:                                              ; preds = %147, %135
  %139 = load i32, i32* @slange_.i__, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load float*, float** %12, align 8
  %144 = load i32, i32* @slange_.i__, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %143, i64 %145
  store float 0.000000e+00, float* %146, align 4
  br label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @slange_.i__, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @slange_.i__, align 4
  br label %138

150:                                              ; preds = %138
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %15, align 4
  store i32 1, i32* @slange_.j, align 4
  br label %153

153:                                              ; preds = %187, %150
  %154 = load i32, i32* @slange_.j, align 4
  %155 = load i32, i32* %15, align 4
  %156 = icmp sle i32 %154, %155
  br i1 %156, label %157, label %190

157:                                              ; preds = %153
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %16, align 4
  store i32 1, i32* @slange_.i__, align 4
  br label %160

160:                                              ; preds = %183, %157
  %161 = load i32, i32* @slange_.i__, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %186

164:                                              ; preds = %160
  %165 = load float*, float** %10, align 8
  %166 = load i32, i32* @slange_.i__, align 4
  %167 = load i32, i32* @slange_.j, align 4
  %168 = load i32, i32* %13, align 4
  %169 = mul nsw i32 %167, %168
  %170 = add nsw i32 %166, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %165, i64 %171
  %173 = load float, float* %172, align 4
  store float %173, float* %18, align 4
  %174 = load float, float* %18, align 4
  %175 = call i32 @dabs(float %174)
  %176 = sitofp i32 %175 to float
  %177 = load float*, float** %12, align 8
  %178 = load i32, i32* @slange_.i__, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fadd float %181, %176
  store float %182, float* %180, align 4
  br label %183

183:                                              ; preds = %164
  %184 = load i32, i32* @slange_.i__, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* @slange_.i__, align 4
  br label %160

186:                                              ; preds = %160
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* @slange_.j, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* @slange_.j, align 4
  br label %153

190:                                              ; preds = %153
  store float 0.000000e+00, float* @slange_.value, align 4
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %15, align 4
  store i32 1, i32* @slange_.i__, align 4
  br label %193

193:                                              ; preds = %207, %190
  %194 = load i32, i32* @slange_.i__, align 4
  %195 = load i32, i32* %15, align 4
  %196 = icmp sle i32 %194, %195
  br i1 %196, label %197, label %210

197:                                              ; preds = %193
  %198 = load float, float* @slange_.value, align 4
  store float %198, float* %18, align 4
  %199 = load float*, float** %12, align 8
  %200 = load i32, i32* @slange_.i__, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float, float* %202, align 4
  store float %203, float* %19, align 4
  %204 = load float, float* %18, align 4
  %205 = load float, float* %19, align 4
  %206 = call float @dmax(float %204, float %205)
  store float %206, float* @slange_.value, align 4
  br label %207

207:                                              ; preds = %197
  %208 = load i32, i32* @slange_.i__, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* @slange_.i__, align 4
  br label %193

210:                                              ; preds = %193
  br label %245

211:                                              ; preds = %131
  %212 = load i8*, i8** %7, align 8
  %213 = call i8* @lsame_(i8* %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %214 = icmp ne i8* %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i8*, i8** %7, align 8
  %217 = call i8* @lsame_(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %244

219:                                              ; preds = %215, %211
  store float 0.000000e+00, float* @slange_.scale, align 4
  store float 1.000000e+00, float* @slange_.sum, align 4
  %220 = load i32*, i32** %9, align 8
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %15, align 4
  store i32 1, i32* @slange_.j, align 4
  br label %222

222:                                              ; preds = %236, %219
  %223 = load i32, i32* @slange_.j, align 4
  %224 = load i32, i32* %15, align 4
  %225 = icmp sle i32 %223, %224
  br i1 %225, label %226, label %239

226:                                              ; preds = %222
  %227 = load i32*, i32** %8, align 8
  %228 = load float*, float** %10, align 8
  %229 = load i32, i32* @slange_.j, align 4
  %230 = load i32, i32* %13, align 4
  %231 = mul nsw i32 %229, %230
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %228, i64 %233
  %235 = call i32 @slassq_(i32* %227, float* %234, i32* @c__1, float* @slange_.scale, float* @slange_.sum)
  br label %236

236:                                              ; preds = %226
  %237 = load i32, i32* @slange_.j, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* @slange_.j, align 4
  br label %222

239:                                              ; preds = %222
  %240 = load float, float* @slange_.scale, align 4
  %241 = load float, float* @slange_.sum, align 4
  %242 = call float @sqrt(float %241)
  %243 = fmul float %240, %242
  store float %243, float* @slange_.value, align 4
  br label %244

244:                                              ; preds = %239, %215
  br label %245

245:                                              ; preds = %244, %210
  br label %246

246:                                              ; preds = %245, %130
  br label %247

247:                                              ; preds = %246, %81
  br label %248

248:                                              ; preds = %247, %38
  %249 = load float, float* @slange_.value, align 4
  store float %249, float* %17, align 4
  %250 = load float, float* %17, align 4
  ret float %250
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @dabs(float) #1

declare dso_local float @dmax(float, float) #1

declare dso_local i32 @slassq_(i32*, float*, i32*, float*, float*) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
