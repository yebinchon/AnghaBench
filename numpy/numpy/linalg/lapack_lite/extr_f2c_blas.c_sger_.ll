; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_sger_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_sger_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sger_.i__ = internal global i32 0, align 4
@sger_.j = internal global i32 0, align 4
@sger_.ix = internal global i32 0, align 4
@sger_.jy = internal global i32 0, align 4
@sger_.kx = internal global i32 0, align 4
@sger_.info = internal global i32 0, align 4
@sger_.temp = internal global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [7 x i8] c"SGER  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sger_(i32* %0, i32* %1, float* %2, float* %3, i32* %4, float* %5, i32* %6, float* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store float* %2, float** %13, align 8
  store float* %3, float** %14, align 8
  store i32* %4, i32** %15, align 8
  store float* %5, float** %16, align 8
  store i32* %6, i32** %17, align 8
  store float* %7, float** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load float*, float** %14, align 8
  %25 = getelementptr inbounds float, float* %24, i32 -1
  store float* %25, float** %14, align 8
  %26 = load float*, float** %16, align 8
  %27 = getelementptr inbounds float, float* %26, i32 -1
  store float* %27, float** %16, align 8
  %28 = load i32*, i32** %19, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = load float*, float** %18, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds float, float* %33, i64 %35
  store float* %36, float** %18, align 8
  store i32 0, i32* @sger_.info, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %9
  store i32 1, i32* @sger_.info, align 4
  br label %68

41:                                               ; preds = %9
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 2, i32* @sger_.info, align 4
  br label %67

46:                                               ; preds = %41
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 5, i32* @sger_.info, align 4
  br label %66

51:                                               ; preds = %46
  %52 = load i32*, i32** %17, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 7, i32* @sger_.info, align 4
  br label %65

56:                                               ; preds = %51
  %57 = load i32*, i32** %19, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @max(i32 1, i32 %60)
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 9, i32* @sger_.info, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i32, i32* @sger_.info, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @sger_.info)
  store i32 0, i32* %10, align 4
  br label %242

73:                                               ; preds = %68
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load float*, float** %13, align 8
  %83 = load float, float* %82, align 4
  %84 = fcmp oeq float %83, 0.000000e+00
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %77, %73
  store i32 0, i32* %10, align 4
  br label %242

86:                                               ; preds = %81
  %87 = load i32*, i32** %17, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 1, i32* @sger_.jy, align 4
  br label %99

91:                                               ; preds = %86
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %94, %96
  %98 = sub nsw i32 1, %97
  store i32 %98, i32* @sger_.jy, align 4
  br label %99

99:                                               ; preds = %91, %90
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %163

103:                                              ; preds = %99
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %22, align 4
  store i32 1, i32* @sger_.j, align 4
  br label %106

106:                                              ; preds = %159, %103
  %107 = load i32, i32* @sger_.j, align 4
  %108 = load i32, i32* %22, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %162

110:                                              ; preds = %106
  %111 = load float*, float** %16, align 8
  %112 = load i32, i32* @sger_.jy, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %111, i64 %113
  %115 = load float, float* %114, align 4
  %116 = fcmp une float %115, 0.000000e+00
  br i1 %116, label %117, label %154

117:                                              ; preds = %110
  %118 = load float*, float** %13, align 8
  %119 = load float, float* %118, align 4
  %120 = load float*, float** %16, align 8
  %121 = load i32, i32* @sger_.jy, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  %124 = load float, float* %123, align 4
  %125 = fmul float %119, %124
  store float %125, float* @sger_.temp, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %23, align 4
  store i32 1, i32* @sger_.i__, align 4
  br label %128

128:                                              ; preds = %150, %117
  %129 = load i32, i32* @sger_.i__, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %128
  %133 = load float*, float** %14, align 8
  %134 = load i32, i32* @sger_.i__, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  %138 = load float, float* @sger_.temp, align 4
  %139 = fmul float %137, %138
  %140 = load float*, float** %18, align 8
  %141 = load i32, i32* @sger_.i__, align 4
  %142 = load i32, i32* @sger_.j, align 4
  %143 = load i32, i32* %20, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %140, i64 %146
  %148 = load float, float* %147, align 4
  %149 = fadd float %148, %139
  store float %149, float* %147, align 4
  br label %150

150:                                              ; preds = %132
  %151 = load i32, i32* @sger_.i__, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* @sger_.i__, align 4
  br label %128

153:                                              ; preds = %128
  br label %154

154:                                              ; preds = %153, %110
  %155 = load i32*, i32** %17, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @sger_.jy, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* @sger_.jy, align 4
  br label %159

159:                                              ; preds = %154
  %160 = load i32, i32* @sger_.j, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* @sger_.j, align 4
  br label %106

162:                                              ; preds = %106
  br label %241

163:                                              ; preds = %99
  %164 = load i32*, i32** %15, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 1, i32* @sger_.kx, align 4
  br label %176

168:                                              ; preds = %163
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, 1
  %172 = load i32*, i32** %15, align 8
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %171, %173
  %175 = sub nsw i32 1, %174
  store i32 %175, i32* @sger_.kx, align 4
  br label %176

176:                                              ; preds = %168, %167
  %177 = load i32*, i32** %12, align 8
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %22, align 4
  store i32 1, i32* @sger_.j, align 4
  br label %179

179:                                              ; preds = %237, %176
  %180 = load i32, i32* @sger_.j, align 4
  %181 = load i32, i32* %22, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %240

183:                                              ; preds = %179
  %184 = load float*, float** %16, align 8
  %185 = load i32, i32* @sger_.jy, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %184, i64 %186
  %188 = load float, float* %187, align 4
  %189 = fcmp une float %188, 0.000000e+00
  br i1 %189, label %190, label %232

190:                                              ; preds = %183
  %191 = load float*, float** %13, align 8
  %192 = load float, float* %191, align 4
  %193 = load float*, float** %16, align 8
  %194 = load i32, i32* @sger_.jy, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %193, i64 %195
  %197 = load float, float* %196, align 4
  %198 = fmul float %192, %197
  store float %198, float* @sger_.temp, align 4
  %199 = load i32, i32* @sger_.kx, align 4
  store i32 %199, i32* @sger_.ix, align 4
  %200 = load i32*, i32** %11, align 8
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %23, align 4
  store i32 1, i32* @sger_.i__, align 4
  br label %202

202:                                              ; preds = %228, %190
  %203 = load i32, i32* @sger_.i__, align 4
  %204 = load i32, i32* %23, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %231

206:                                              ; preds = %202
  %207 = load float*, float** %14, align 8
  %208 = load i32, i32* @sger_.ix, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  %211 = load float, float* %210, align 4
  %212 = load float, float* @sger_.temp, align 4
  %213 = fmul float %211, %212
  %214 = load float*, float** %18, align 8
  %215 = load i32, i32* @sger_.i__, align 4
  %216 = load i32, i32* @sger_.j, align 4
  %217 = load i32, i32* %20, align 4
  %218 = mul nsw i32 %216, %217
  %219 = add nsw i32 %215, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %214, i64 %220
  %222 = load float, float* %221, align 4
  %223 = fadd float %222, %213
  store float %223, float* %221, align 4
  %224 = load i32*, i32** %15, align 8
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @sger_.ix, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* @sger_.ix, align 4
  br label %228

228:                                              ; preds = %206
  %229 = load i32, i32* @sger_.i__, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* @sger_.i__, align 4
  br label %202

231:                                              ; preds = %202
  br label %232

232:                                              ; preds = %231, %183
  %233 = load i32*, i32** %17, align 8
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @sger_.jy, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* @sger_.jy, align 4
  br label %237

237:                                              ; preds = %232
  %238 = load i32, i32* @sger_.j, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* @sger_.j, align 4
  br label %179

240:                                              ; preds = %179
  br label %241

241:                                              ; preds = %240, %162
  store i32 0, i32* %10, align 4
  br label %242

242:                                              ; preds = %241, %85, %71
  %243 = load i32, i32* %10, align 4
  ret i32 %243
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
