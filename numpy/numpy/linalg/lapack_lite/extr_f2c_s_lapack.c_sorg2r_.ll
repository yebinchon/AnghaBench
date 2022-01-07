; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sorg2r_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sorg2r_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sorg2r_.i__ = internal global i32 0, align 4
@sorg2r_.j = internal global i32 0, align 4
@sorg2r_.l = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SORG2R\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@c__1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sorg2r_(i32* %0, i32* %1, i32* %2, float* %3, i32* %4, float* %5, float* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store float* %3, float** %13, align 8
  store i32* %4, i32** %14, align 8
  store float* %5, float** %15, align 8
  store float* %6, float** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = add nsw i32 1, %25
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = load float*, float** %13, align 8
  %29 = sext i32 %27 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds float, float* %28, i64 %30
  store float* %31, float** %13, align 8
  %32 = load float*, float** %15, align 8
  %33 = getelementptr inbounds float, float* %32, i32 -1
  store float* %33, float** %15, align 8
  %34 = load float*, float** %16, align 8
  %35 = getelementptr inbounds float, float* %34, i32 -1
  store float* %35, float** %16, align 8
  %36 = load i32*, i32** %17, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load i32*, i32** %17, align 8
  store i32 -1, i32* %41, align 4
  br label %78

42:                                               ; preds = %8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %42
  %53 = load i32*, i32** %17, align 8
  store i32 -2, i32* %53, align 4
  br label %77

54:                                               ; preds = %46
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %54
  %65 = load i32*, i32** %17, align 8
  store i32 -3, i32* %65, align 4
  br label %76

66:                                               ; preds = %58
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @max(i32 1, i32 %70)
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32*, i32** %17, align 8
  store i32 -5, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %66
  br label %76

76:                                               ; preds = %75, %64
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %40
  %79 = load i32*, i32** %17, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %20, align 4
  %86 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 0, i32* %9, align 4
  br label %251

87:                                               ; preds = %78
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %9, align 4
  br label %251

92:                                               ; preds = %87
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %20, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @sorg2r_.j, align 4
  br label %98

98:                                               ; preds = %130, %92
  %99 = load i32, i32* @sorg2r_.j, align 4
  %100 = load i32, i32* %20, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %133

102:                                              ; preds = %98
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %21, align 4
  store i32 1, i32* @sorg2r_.l, align 4
  br label %105

105:                                              ; preds = %118, %102
  %106 = load i32, i32* @sorg2r_.l, align 4
  %107 = load i32, i32* %21, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load float*, float** %13, align 8
  %111 = load i32, i32* @sorg2r_.l, align 4
  %112 = load i32, i32* @sorg2r_.j, align 4
  %113 = load i32, i32* %18, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %110, i64 %116
  store float 0.000000e+00, float* %117, align 4
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* @sorg2r_.l, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @sorg2r_.l, align 4
  br label %105

121:                                              ; preds = %105
  %122 = load float*, float** %13, align 8
  %123 = load i32, i32* @sorg2r_.j, align 4
  %124 = load i32, i32* @sorg2r_.j, align 4
  %125 = load i32, i32* %18, align 4
  %126 = mul nsw i32 %124, %125
  %127 = add nsw i32 %123, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %122, i64 %128
  store float 1.000000e+00, float* %129, align 4
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* @sorg2r_.j, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @sorg2r_.j, align 4
  br label %98

133:                                              ; preds = %98
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* @sorg2r_.i__, align 4
  br label %136

136:                                              ; preds = %247, %133
  %137 = load i32, i32* @sorg2r_.i__, align 4
  %138 = icmp sge i32 %137, 1
  br i1 %138, label %139, label %250

139:                                              ; preds = %136
  %140 = load i32, i32* @sorg2r_.i__, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %140, %142
  br i1 %143, label %144, label %187

144:                                              ; preds = %139
  %145 = load float*, float** %13, align 8
  %146 = load i32, i32* @sorg2r_.i__, align 4
  %147 = load i32, i32* @sorg2r_.i__, align 4
  %148 = load i32, i32* %18, align 4
  %149 = mul nsw i32 %147, %148
  %150 = add nsw i32 %146, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %145, i64 %151
  store float 1.000000e+00, float* %152, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @sorg2r_.i__, align 4
  %156 = sub nsw i32 %154, %155
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %20, align 4
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @sorg2r_.i__, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %21, align 4
  %162 = load float*, float** %13, align 8
  %163 = load i32, i32* @sorg2r_.i__, align 4
  %164 = load i32, i32* @sorg2r_.i__, align 4
  %165 = load i32, i32* %18, align 4
  %166 = mul nsw i32 %164, %165
  %167 = add nsw i32 %163, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %162, i64 %168
  %170 = load float*, float** %15, align 8
  %171 = load i32, i32* @sorg2r_.i__, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %170, i64 %172
  %174 = load float*, float** %13, align 8
  %175 = load i32, i32* @sorg2r_.i__, align 4
  %176 = load i32, i32* @sorg2r_.i__, align 4
  %177 = add nsw i32 %176, 1
  %178 = load i32, i32* %18, align 4
  %179 = mul nsw i32 %177, %178
  %180 = add nsw i32 %175, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %174, i64 %181
  %183 = load i32*, i32** %14, align 8
  %184 = load float*, float** %16, align 8
  %185 = getelementptr inbounds float, float* %184, i64 1
  %186 = call i32 @slarf_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %20, i32* %21, float* %169, i32* @c__1, float* %173, float* %182, i32* %183, float* %185)
  br label %187

187:                                              ; preds = %144, %139
  %188 = load i32, i32* @sorg2r_.i__, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %213

192:                                              ; preds = %187
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @sorg2r_.i__, align 4
  %196 = sub nsw i32 %194, %195
  store i32 %196, i32* %20, align 4
  %197 = load float*, float** %15, align 8
  %198 = load i32, i32* @sorg2r_.i__, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %197, i64 %199
  %201 = load float, float* %200, align 4
  %202 = fneg float %201
  store float %202, float* %22, align 4
  %203 = load float*, float** %13, align 8
  %204 = load i32, i32* @sorg2r_.i__, align 4
  %205 = add nsw i32 %204, 1
  %206 = load i32, i32* @sorg2r_.i__, align 4
  %207 = load i32, i32* %18, align 4
  %208 = mul nsw i32 %206, %207
  %209 = add nsw i32 %205, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %203, i64 %210
  %212 = call i32 @sscal_(i32* %20, float* %22, float* %211, i32* @c__1)
  br label %213

213:                                              ; preds = %192, %187
  %214 = load float*, float** %15, align 8
  %215 = load i32, i32* @sorg2r_.i__, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %214, i64 %216
  %218 = load float, float* %217, align 4
  %219 = fsub float 1.000000e+00, %218
  %220 = load float*, float** %13, align 8
  %221 = load i32, i32* @sorg2r_.i__, align 4
  %222 = load i32, i32* @sorg2r_.i__, align 4
  %223 = load i32, i32* %18, align 4
  %224 = mul nsw i32 %222, %223
  %225 = add nsw i32 %221, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds float, float* %220, i64 %226
  store float %219, float* %227, align 4
  %228 = load i32, i32* @sorg2r_.i__, align 4
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %20, align 4
  store i32 1, i32* @sorg2r_.l, align 4
  br label %230

230:                                              ; preds = %243, %213
  %231 = load i32, i32* @sorg2r_.l, align 4
  %232 = load i32, i32* %20, align 4
  %233 = icmp sle i32 %231, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %230
  %235 = load float*, float** %13, align 8
  %236 = load i32, i32* @sorg2r_.l, align 4
  %237 = load i32, i32* @sorg2r_.i__, align 4
  %238 = load i32, i32* %18, align 4
  %239 = mul nsw i32 %237, %238
  %240 = add nsw i32 %236, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %235, i64 %241
  store float 0.000000e+00, float* %242, align 4
  br label %243

243:                                              ; preds = %234
  %244 = load i32, i32* @sorg2r_.l, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* @sorg2r_.l, align 4
  br label %230

246:                                              ; preds = %230
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* @sorg2r_.i__, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* @sorg2r_.i__, align 4
  br label %136

250:                                              ; preds = %136
  store i32 0, i32* %9, align 4
  br label %251

251:                                              ; preds = %250, %91, %82
  %252 = load i32, i32* %9, align 4
  ret i32 %252
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @slarf_(i8*, i32*, i32*, float*, i32*, float*, float*, i32*, float*) #1

declare dso_local i32 @sscal_(i32*, float*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
