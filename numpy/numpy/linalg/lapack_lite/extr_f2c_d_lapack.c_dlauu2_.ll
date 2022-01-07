; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlauu2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlauu2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlauu2_.i__ = internal global i32 0, align 4
@dlauu2_.aii = internal global i32 0, align 4
@dlauu2_.upper = internal global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DLAUU2\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c_b15 = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlauu2_(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = add nsw i32 1, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = sext i32 %21 to i64
  %24 = sub i64 0, %23
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %11, align 8
  store i32 0, i32* %26, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @lsame_(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %28, i64* @dlauu2_.upper, align 8
  %29 = load i64, i64* @dlauu2_.upper, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %5
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @lsame_(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %11, align 8
  store i32 -1, i32* %36, align 4
  br label %54

37:                                               ; preds = %31, %5
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** %11, align 8
  store i32 -2, i32* %42, align 4
  br label %53

43:                                               ; preds = %37
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @max(i32 1, i32 %47)
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32*, i32** %11, align 8
  store i32 -4, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %43
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %14, align 4
  %62 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  store i32 0, i32* %6, align 4
  br label %270

63:                                               ; preds = %54
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %270

68:                                               ; preds = %63
  %69 = load i64, i64* @dlauu2_.upper, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %172

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  store i32 1, i32* @dlauu2_.i__, align 4
  br label %74

74:                                               ; preds = %168, %71
  %75 = load i32, i32* @dlauu2_.i__, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %171

78:                                               ; preds = %74
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* @dlauu2_.i__, align 4
  %81 = load i32, i32* @dlauu2_.i__, align 4
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* @dlauu2_.aii, align 4
  %88 = load i32, i32* @dlauu2_.i__, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %158

92:                                               ; preds = %78
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @dlauu2_.i__, align 4
  %96 = sub nsw i32 %94, %95
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* @dlauu2_.i__, align 4
  %100 = load i32, i32* @dlauu2_.i__, align 4
  %101 = load i32, i32* %12, align 4
  %102 = mul nsw i32 %100, %101
  %103 = add nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %98, i64 %104
  %106 = load i32*, i32** %10, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* @dlauu2_.i__, align 4
  %109 = load i32, i32* @dlauu2_.i__, align 4
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 %109, %110
  %112 = add nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %107, i64 %113
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @ddot_(i32* %15, i32* %105, i32* %106, i32* %114, i32* %115)
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* @dlauu2_.i__, align 4
  %119 = load i32, i32* @dlauu2_.i__, align 4
  %120 = load i32, i32* %12, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %117, i64 %123
  store i32 %116, i32* %124, align 4
  %125 = load i32, i32* @dlauu2_.i__, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @dlauu2_.i__, align 4
  %130 = sub nsw i32 %128, %129
  store i32 %130, i32* %16, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* @dlauu2_.i__, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* %12, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  %139 = load i32*, i32** %10, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* @dlauu2_.i__, align 4
  %142 = load i32, i32* @dlauu2_.i__, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32, i32* %12, align 4
  %145 = mul nsw i32 %143, %144
  %146 = add nsw i32 %141, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %140, i64 %147
  %149 = load i32*, i32** %10, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* @dlauu2_.i__, align 4
  %152 = load i32, i32* %12, align 4
  %153 = mul nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  %157 = call i32 @dgemv_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %15, i32* %16, i32* @c_b15, i32* %138, i32* %139, i32* %148, i32* %149, i32* @dlauu2_.aii, i32* %156, i32* @c__1)
  br label %167

158:                                              ; preds = %78
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* @dlauu2_.i__, align 4
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  %166 = call i32 @dscal_(i32* @dlauu2_.i__, i32* @dlauu2_.aii, i32* %165, i32* @c__1)
  br label %167

167:                                              ; preds = %158, %92
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* @dlauu2_.i__, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @dlauu2_.i__, align 4
  br label %74

171:                                              ; preds = %74
  br label %269

172:                                              ; preds = %68
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %14, align 4
  store i32 1, i32* @dlauu2_.i__, align 4
  br label %175

175:                                              ; preds = %265, %172
  %176 = load i32, i32* @dlauu2_.i__, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %268

179:                                              ; preds = %175
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* @dlauu2_.i__, align 4
  %182 = load i32, i32* @dlauu2_.i__, align 4
  %183 = load i32, i32* %12, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %181, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %180, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* @dlauu2_.aii, align 4
  %189 = load i32, i32* @dlauu2_.i__, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %255

193:                                              ; preds = %179
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @dlauu2_.i__, align 4
  %197 = sub nsw i32 %195, %196
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  %199 = load i32*, i32** %9, align 8
  %200 = load i32, i32* @dlauu2_.i__, align 4
  %201 = load i32, i32* @dlauu2_.i__, align 4
  %202 = load i32, i32* %12, align 4
  %203 = mul nsw i32 %201, %202
  %204 = add nsw i32 %200, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %199, i64 %205
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* @dlauu2_.i__, align 4
  %209 = load i32, i32* @dlauu2_.i__, align 4
  %210 = load i32, i32* %12, align 4
  %211 = mul nsw i32 %209, %210
  %212 = add nsw i32 %208, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %207, i64 %213
  %215 = call i32 @ddot_(i32* %15, i32* %206, i32* @c__1, i32* %214, i32* @c__1)
  %216 = load i32*, i32** %9, align 8
  %217 = load i32, i32* @dlauu2_.i__, align 4
  %218 = load i32, i32* @dlauu2_.i__, align 4
  %219 = load i32, i32* %12, align 4
  %220 = mul nsw i32 %218, %219
  %221 = add nsw i32 %217, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %216, i64 %222
  store i32 %215, i32* %223, align 4
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @dlauu2_.i__, align 4
  %227 = sub nsw i32 %225, %226
  store i32 %227, i32* %15, align 4
  %228 = load i32, i32* @dlauu2_.i__, align 4
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %16, align 4
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* @dlauu2_.i__, align 4
  %232 = add nsw i32 %231, 1
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %232, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %230, i64 %235
  %237 = load i32*, i32** %10, align 8
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* @dlauu2_.i__, align 4
  %240 = add nsw i32 %239, 1
  %241 = load i32, i32* @dlauu2_.i__, align 4
  %242 = load i32, i32* %12, align 4
  %243 = mul nsw i32 %241, %242
  %244 = add nsw i32 %240, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %238, i64 %245
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* @dlauu2_.i__, align 4
  %249 = load i32, i32* %12, align 4
  %250 = add nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %247, i64 %251
  %253 = load i32*, i32** %10, align 8
  %254 = call i32 @dgemv_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %15, i32* %16, i32* @c_b15, i32* %236, i32* %237, i32* %246, i32* @c__1, i32* @dlauu2_.aii, i32* %252, i32* %253)
  br label %264

255:                                              ; preds = %179
  %256 = load i32*, i32** %9, align 8
  %257 = load i32, i32* @dlauu2_.i__, align 4
  %258 = load i32, i32* %12, align 4
  %259 = add nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %256, i64 %260
  %262 = load i32*, i32** %10, align 8
  %263 = call i32 @dscal_(i32* @dlauu2_.i__, i32* @dlauu2_.aii, i32* %261, i32* %262)
  br label %264

264:                                              ; preds = %255, %193
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* @dlauu2_.i__, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* @dlauu2_.i__, align 4
  br label %175

268:                                              ; preds = %175
  br label %269

269:                                              ; preds = %268, %171
  store i32 0, i32* %6, align 4
  br label %270

270:                                              ; preds = %269, %67, %58
  %271 = load i32, i32* %6, align 4
  ret i32 %271
}

declare dso_local i64 @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @ddot_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dgemv_(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dscal_(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
