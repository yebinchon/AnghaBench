; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_strti2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_strti2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strti2_.j = internal global i32 0, align 4
@strti2_.ajj = internal global float 0.000000e+00, align 4
@strti2_.upper = internal global i8* null, align 8
@strti2_.nounit = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"STRTI2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strti2_(i8* %0, i8* %1, i32* %2, float* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store float* %3, float** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = add nsw i32 1, %20
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load float*, float** %11, align 8
  %24 = sext i32 %22 to i64
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds float, float* %23, i64 %25
  store float* %26, float** %11, align 8
  %27 = load i32*, i32** %13, align 8
  store i32 0, i32* %27, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @lsame_(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** @strti2_.upper, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @lsame_(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** @strti2_.nounit, align 8
  %32 = load i8*, i8** @strti2_.upper, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %6
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @lsame_(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %13, align 8
  store i32 -1, i32* %39, align 4
  br label %67

40:                                               ; preds = %34, %6
  %41 = load i8*, i8** @strti2_.nounit, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @lsame_(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %13, align 8
  store i32 -2, i32* %48, align 4
  br label %66

49:                                               ; preds = %43, %40
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32*, i32** %13, align 8
  store i32 -3, i32* %54, align 4
  br label %65

55:                                               ; preds = %49
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @max(i32 1, i32 %59)
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32*, i32** %13, align 8
  store i32 -5, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %55
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %16, align 4
  %75 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %16)
  store i32 0, i32* %7, align 4
  br label %241

76:                                               ; preds = %67
  %77 = load i8*, i8** @strti2_.upper, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %150

79:                                               ; preds = %76
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %16, align 4
  store i32 1, i32* @strti2_.j, align 4
  br label %82

82:                                               ; preds = %146, %79
  %83 = load i32, i32* @strti2_.j, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %149

86:                                               ; preds = %82
  %87 = load i8*, i8** @strti2_.nounit, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %118

89:                                               ; preds = %86
  %90 = load float*, float** %11, align 8
  %91 = load i32, i32* @strti2_.j, align 4
  %92 = load i32, i32* @strti2_.j, align 4
  %93 = load i32, i32* %14, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %90, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fdiv float 1.000000e+00, %98
  %100 = load float*, float** %11, align 8
  %101 = load i32, i32* @strti2_.j, align 4
  %102 = load i32, i32* @strti2_.j, align 4
  %103 = load i32, i32* %14, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %100, i64 %106
  store float %99, float* %107, align 4
  %108 = load float*, float** %11, align 8
  %109 = load i32, i32* @strti2_.j, align 4
  %110 = load i32, i32* @strti2_.j, align 4
  %111 = load i32, i32* %14, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %109, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %108, i64 %114
  %116 = load float, float* %115, align 4
  %117 = fneg float %116
  store float %117, float* @strti2_.ajj, align 4
  br label %119

118:                                              ; preds = %86
  store float -1.000000e+00, float* @strti2_.ajj, align 4
  br label %119

119:                                              ; preds = %118, %89
  %120 = load i32, i32* @strti2_.j, align 4
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = load float*, float** %11, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %123, i64 %125
  %127 = load i32*, i32** %12, align 8
  %128 = load float*, float** %11, align 8
  %129 = load i32, i32* @strti2_.j, align 4
  %130 = load i32, i32* %14, align 4
  %131 = mul nsw i32 %129, %130
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %128, i64 %133
  %135 = call i32 @strmv_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %122, i32* %17, float* %126, i32* %127, float* %134, i32* @c__1)
  %136 = load i32, i32* @strti2_.j, align 4
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %17, align 4
  %138 = load float*, float** %11, align 8
  %139 = load i32, i32* @strti2_.j, align 4
  %140 = load i32, i32* %14, align 4
  %141 = mul nsw i32 %139, %140
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %138, i64 %143
  %145 = call i32 @sscal_(i32* %17, float* @strti2_.ajj, float* %144, i32* @c__1)
  br label %146

146:                                              ; preds = %119
  %147 = load i32, i32* @strti2_.j, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* @strti2_.j, align 4
  br label %82

149:                                              ; preds = %82
  br label %240

150:                                              ; preds = %76
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* @strti2_.j, align 4
  br label %153

153:                                              ; preds = %236, %150
  %154 = load i32, i32* @strti2_.j, align 4
  %155 = icmp sge i32 %154, 1
  br i1 %155, label %156, label %239

156:                                              ; preds = %153
  %157 = load i8*, i8** @strti2_.nounit, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %188

159:                                              ; preds = %156
  %160 = load float*, float** %11, align 8
  %161 = load i32, i32* @strti2_.j, align 4
  %162 = load i32, i32* @strti2_.j, align 4
  %163 = load i32, i32* %14, align 4
  %164 = mul nsw i32 %162, %163
  %165 = add nsw i32 %161, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %160, i64 %166
  %168 = load float, float* %167, align 4
  %169 = fdiv float 1.000000e+00, %168
  %170 = load float*, float** %11, align 8
  %171 = load i32, i32* @strti2_.j, align 4
  %172 = load i32, i32* @strti2_.j, align 4
  %173 = load i32, i32* %14, align 4
  %174 = mul nsw i32 %172, %173
  %175 = add nsw i32 %171, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %170, i64 %176
  store float %169, float* %177, align 4
  %178 = load float*, float** %11, align 8
  %179 = load i32, i32* @strti2_.j, align 4
  %180 = load i32, i32* @strti2_.j, align 4
  %181 = load i32, i32* %14, align 4
  %182 = mul nsw i32 %180, %181
  %183 = add nsw i32 %179, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %178, i64 %184
  %186 = load float, float* %185, align 4
  %187 = fneg float %186
  store float %187, float* @strti2_.ajj, align 4
  br label %189

188:                                              ; preds = %156
  store float -1.000000e+00, float* @strti2_.ajj, align 4
  br label %189

189:                                              ; preds = %188, %159
  %190 = load i32, i32* @strti2_.j, align 4
  %191 = load i32*, i32** %10, align 8
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %235

194:                                              ; preds = %189
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @strti2_.j, align 4
  %198 = sub nsw i32 %196, %197
  store i32 %198, i32* %16, align 4
  %199 = load i8*, i8** %9, align 8
  %200 = load float*, float** %11, align 8
  %201 = load i32, i32* @strti2_.j, align 4
  %202 = add nsw i32 %201, 1
  %203 = load i32, i32* @strti2_.j, align 4
  %204 = add nsw i32 %203, 1
  %205 = load i32, i32* %14, align 4
  %206 = mul nsw i32 %204, %205
  %207 = add nsw i32 %202, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %200, i64 %208
  %210 = load i32*, i32** %12, align 8
  %211 = load float*, float** %11, align 8
  %212 = load i32, i32* @strti2_.j, align 4
  %213 = add nsw i32 %212, 1
  %214 = load i32, i32* @strti2_.j, align 4
  %215 = load i32, i32* %14, align 4
  %216 = mul nsw i32 %214, %215
  %217 = add nsw i32 %213, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %211, i64 %218
  %220 = call i32 @strmv_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %199, i32* %16, float* %209, i32* %210, float* %219, i32* @c__1)
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @strti2_.j, align 4
  %224 = sub nsw i32 %222, %223
  store i32 %224, i32* %16, align 4
  %225 = load float*, float** %11, align 8
  %226 = load i32, i32* @strti2_.j, align 4
  %227 = add nsw i32 %226, 1
  %228 = load i32, i32* @strti2_.j, align 4
  %229 = load i32, i32* %14, align 4
  %230 = mul nsw i32 %228, %229
  %231 = add nsw i32 %227, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %225, i64 %232
  %234 = call i32 @sscal_(i32* %16, float* @strti2_.ajj, float* %233, i32* @c__1)
  br label %235

235:                                              ; preds = %194, %189
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* @strti2_.j, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* @strti2_.j, align 4
  br label %153

239:                                              ; preds = %153
  br label %240

240:                                              ; preds = %239, %149
  store i32 0, i32* %7, align 4
  br label %241

241:                                              ; preds = %240, %71
  %242 = load i32, i32* %7, align 4
  ret i32 %242
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @strmv_(i8*, i8*, i8*, i32*, float*, i32*, float*, i32*) #1

declare dso_local i32 @sscal_(i32*, float*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
