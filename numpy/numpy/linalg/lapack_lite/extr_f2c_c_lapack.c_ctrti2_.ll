; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_ctrti2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_ctrti2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float }

@ctrti2_.j = internal global i32 0, align 4
@ctrti2_.ajj = internal global %struct.TYPE_5__ zeroinitializer, align 4
@ctrti2_.upper = internal global i8* null, align 8
@ctrti2_.nounit = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CTRTI2\00", align 1
@c_b57 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctrti2_(i8* %0, i8* %1, i32* %2, %struct.TYPE_5__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = add nsw i32 1, %21
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = sext i32 %23 to i64
  %26 = sub i64 0, %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %11, align 8
  %28 = load i32*, i32** %13, align 8
  store i32 0, i32* %28, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @lsame_(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** @ctrti2_.upper, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @lsame_(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** @ctrti2_.nounit, align 8
  %33 = load i8*, i8** @ctrti2_.upper, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %6
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @lsame_(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %13, align 8
  store i32 -1, i32* %40, align 4
  br label %68

41:                                               ; preds = %35, %6
  %42 = load i8*, i8** @ctrti2_.nounit, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = call i8* @lsame_(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i8* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %13, align 8
  store i32 -2, i32* %49, align 4
  br label %67

50:                                               ; preds = %44, %41
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32*, i32** %13, align 8
  store i32 -3, i32* %55, align 4
  br label %66

56:                                               ; preds = %50
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @max(i32 1, i32 %60)
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32*, i32** %13, align 8
  store i32 -5, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %56
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %16, align 4
  %76 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %16)
  store i32 0, i32* %7, align 4
  br label %304

77:                                               ; preds = %68
  %78 = load i8*, i8** @ctrti2_.upper, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %182

80:                                               ; preds = %77
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %16, align 4
  store i32 1, i32* @ctrti2_.j, align 4
  br label %83

83:                                               ; preds = %178, %80
  %84 = load i32, i32* @ctrti2_.j, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %181

87:                                               ; preds = %83
  %88 = load i8*, i8** @ctrti2_.nounit, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %144

90:                                               ; preds = %87
  %91 = load i32, i32* @ctrti2_.j, align 4
  %92 = load i32, i32* @ctrti2_.j, align 4
  %93 = load i32, i32* %14, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %17, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %97 = load i32, i32* @ctrti2_.j, align 4
  %98 = load i32, i32* @ctrti2_.j, align 4
  %99 = load i32, i32* %14, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %102
  %104 = call i32 @c_div(%struct.TYPE_5__* %18, i32* @c_b57, %struct.TYPE_5__* %103)
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %106 = load float, float* %105, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store float %106, float* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %113 = load float, float* %112, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store float %113, float* %118, align 4
  %119 = load i32, i32* @ctrti2_.j, align 4
  %120 = load i32, i32* @ctrti2_.j, align 4
  %121 = load i32, i32* %14, align 4
  %122 = mul nsw i32 %120, %121
  %123 = add nsw i32 %119, %122
  store i32 %123, i32* %17, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load float, float* %128, align 4
  %130 = fneg float %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store float %130, float* %131, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load float, float* %136, align 4
  %138 = fneg float %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store float %138, float* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %141 = load float, float* %140, align 4
  store float %141, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ctrti2_.ajj, i32 0, i32 0), align 4
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %143 = load float, float* %142, align 4
  store float %143, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ctrti2_.ajj, i32 0, i32 1), align 4
  br label %151

144:                                              ; preds = %87
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store float -1.000000e+00, float* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store float -0.000000e+00, float* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %148 = load float, float* %147, align 4
  store float %148, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ctrti2_.ajj, i32 0, i32 0), align 4
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %150 = load float, float* %149, align 4
  store float %150, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ctrti2_.ajj, i32 0, i32 1), align 4
  br label %151

151:                                              ; preds = %144, %90
  %152 = load i32, i32* @ctrti2_.j, align 4
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  %154 = load i8*, i8** %9, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %157
  %159 = load i32*, i32** %12, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %161 = load i32, i32* @ctrti2_.j, align 4
  %162 = load i32, i32* %14, align 4
  %163 = mul nsw i32 %161, %162
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %165
  %167 = call i32 @ctrmv_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %154, i32* %17, %struct.TYPE_5__* %158, i32* %159, %struct.TYPE_5__* %166, i32* @c__1)
  %168 = load i32, i32* @ctrti2_.j, align 4
  %169 = sub nsw i32 %168, 1
  store i32 %169, i32* %17, align 4
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %171 = load i32, i32* @ctrti2_.j, align 4
  %172 = load i32, i32* %14, align 4
  %173 = mul nsw i32 %171, %172
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 %175
  %177 = call i32 @cscal_(i32* %17, %struct.TYPE_5__* @ctrti2_.ajj, %struct.TYPE_5__* %176, i32* @c__1)
  br label %178

178:                                              ; preds = %151
  %179 = load i32, i32* @ctrti2_.j, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* @ctrti2_.j, align 4
  br label %83

181:                                              ; preds = %83
  br label %303

182:                                              ; preds = %77
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* @ctrti2_.j, align 4
  br label %185

185:                                              ; preds = %299, %182
  %186 = load i32, i32* @ctrti2_.j, align 4
  %187 = icmp sge i32 %186, 1
  br i1 %187, label %188, label %302

188:                                              ; preds = %185
  %189 = load i8*, i8** @ctrti2_.nounit, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %245

191:                                              ; preds = %188
  %192 = load i32, i32* @ctrti2_.j, align 4
  %193 = load i32, i32* @ctrti2_.j, align 4
  %194 = load i32, i32* %14, align 4
  %195 = mul nsw i32 %193, %194
  %196 = add nsw i32 %192, %195
  store i32 %196, i32* %16, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %198 = load i32, i32* @ctrti2_.j, align 4
  %199 = load i32, i32* @ctrti2_.j, align 4
  %200 = load i32, i32* %14, align 4
  %201 = mul nsw i32 %199, %200
  %202 = add nsw i32 %198, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %203
  %205 = call i32 @c_div(%struct.TYPE_5__* %18, i32* @c_b57, %struct.TYPE_5__* %204)
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %207 = load float, float* %206, align 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %209 = load i32, i32* %16, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  store float %207, float* %212, align 4
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %214 = load float, float* %213, align 4
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %216 = load i32, i32* %16, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  store float %214, float* %219, align 4
  %220 = load i32, i32* @ctrti2_.j, align 4
  %221 = load i32, i32* @ctrti2_.j, align 4
  %222 = load i32, i32* %14, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %220, %223
  store i32 %224, i32* %16, align 4
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load float, float* %229, align 4
  %231 = fneg float %230
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store float %231, float* %232, align 4
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %234 = load i32, i32* %16, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load float, float* %237, align 4
  %239 = fneg float %238
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store float %239, float* %240, align 4
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %242 = load float, float* %241, align 4
  store float %242, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ctrti2_.ajj, i32 0, i32 0), align 4
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %244 = load float, float* %243, align 4
  store float %244, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ctrti2_.ajj, i32 0, i32 1), align 4
  br label %252

245:                                              ; preds = %188
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store float -1.000000e+00, float* %246, align 4
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store float -0.000000e+00, float* %247, align 4
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %249 = load float, float* %248, align 4
  store float %249, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ctrti2_.ajj, i32 0, i32 0), align 4
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %251 = load float, float* %250, align 4
  store float %251, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ctrti2_.ajj, i32 0, i32 1), align 4
  br label %252

252:                                              ; preds = %245, %191
  %253 = load i32, i32* @ctrti2_.j, align 4
  %254 = load i32*, i32** %10, align 8
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %253, %255
  br i1 %256, label %257, label %298

257:                                              ; preds = %252
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @ctrti2_.j, align 4
  %261 = sub nsw i32 %259, %260
  store i32 %261, i32* %16, align 4
  %262 = load i8*, i8** %9, align 8
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %264 = load i32, i32* @ctrti2_.j, align 4
  %265 = add nsw i32 %264, 1
  %266 = load i32, i32* @ctrti2_.j, align 4
  %267 = add nsw i32 %266, 1
  %268 = load i32, i32* %14, align 4
  %269 = mul nsw i32 %267, %268
  %270 = add nsw i32 %265, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i64 %271
  %273 = load i32*, i32** %12, align 8
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %275 = load i32, i32* @ctrti2_.j, align 4
  %276 = add nsw i32 %275, 1
  %277 = load i32, i32* @ctrti2_.j, align 4
  %278 = load i32, i32* %14, align 4
  %279 = mul nsw i32 %277, %278
  %280 = add nsw i32 %276, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i64 %281
  %283 = call i32 @ctrmv_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %262, i32* %16, %struct.TYPE_5__* %272, i32* %273, %struct.TYPE_5__* %282, i32* @c__1)
  %284 = load i32*, i32** %10, align 8
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @ctrti2_.j, align 4
  %287 = sub nsw i32 %285, %286
  store i32 %287, i32* %16, align 4
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %289 = load i32, i32* @ctrti2_.j, align 4
  %290 = add nsw i32 %289, 1
  %291 = load i32, i32* @ctrti2_.j, align 4
  %292 = load i32, i32* %14, align 4
  %293 = mul nsw i32 %291, %292
  %294 = add nsw i32 %290, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i64 %295
  %297 = call i32 @cscal_(i32* %16, %struct.TYPE_5__* @ctrti2_.ajj, %struct.TYPE_5__* %296, i32* @c__1)
  br label %298

298:                                              ; preds = %257, %252
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* @ctrti2_.j, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* @ctrti2_.j, align 4
  br label %185

302:                                              ; preds = %185
  br label %303

303:                                              ; preds = %302, %181
  store i32 0, i32* %7, align 4
  br label %304

304:                                              ; preds = %303, %72
  %305 = load i32, i32* %7, align 4
  ret i32 %305
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @c_div(%struct.TYPE_5__*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ctrmv_(i8*, i8*, i8*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @cscal_(i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
