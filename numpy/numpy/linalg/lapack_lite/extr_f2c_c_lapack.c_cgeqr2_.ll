; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cgeqr2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cgeqr2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float, float }

@cgeqr2_.i__ = internal global i32 0, align 4
@cgeqr2_.k = internal global i32 0, align 4
@cgeqr2_.alpha = internal global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"CGEQR2\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Left\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgeqr2_(i32* %0, i32* %1, %struct.TYPE_10__* %2, i32* %3, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_10__, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = add nsw i32 1, %24
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %28 = sext i32 %26 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %29
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %11, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 -1
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %13, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 -1
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %14, align 8
  %35 = load i32*, i32** %15, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %7
  %40 = load i32*, i32** %15, align 8
  store i32 -1, i32* %40, align 4
  br label %58

41:                                               ; preds = %7
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32*, i32** %15, align 8
  store i32 -2, i32* %46, align 4
  br label %57

47:                                               ; preds = %41
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @max(i32 1, i32 %51)
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32*, i32** %15, align 8
  store i32 -4, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %47
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32*, i32** %15, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %18, align 4
  %66 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %18)
  store i32 0, i32* %8, align 4
  br label %204

67:                                               ; preds = %58
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @min(i32 %69, i32 %71)
  store i32 %72, i32* @cgeqr2_.k, align 4
  %73 = load i32, i32* @cgeqr2_.k, align 4
  store i32 %73, i32* %18, align 4
  store i32 1, i32* @cgeqr2_.i__, align 4
  br label %74

74:                                               ; preds = %200, %67
  %75 = load i32, i32* @cgeqr2_.i__, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %203

78:                                               ; preds = %74
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @cgeqr2_.i__, align 4
  %82 = sub nsw i32 %80, %81
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* @cgeqr2_.i__, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %20, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %87 = load i32, i32* @cgeqr2_.i__, align 4
  %88 = load i32, i32* @cgeqr2_.i__, align 4
  %89 = load i32, i32* %16, align 4
  %90 = mul nsw i32 %88, %89
  %91 = add nsw i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = load i32, i32* %20, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @min(i32 %95, i32 %97)
  %99 = load i32, i32* @cgeqr2_.i__, align 4
  %100 = load i32, i32* %16, align 4
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %103
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %106 = load i32, i32* @cgeqr2_.i__, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 %107
  %109 = call i32 @clarfg_(i32* %19, %struct.TYPE_10__* %93, %struct.TYPE_10__* %104, i32* @c__1, %struct.TYPE_10__* %108)
  %110 = load i32, i32* @cgeqr2_.i__, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %199

114:                                              ; preds = %78
  %115 = load i32, i32* @cgeqr2_.i__, align 4
  %116 = load i32, i32* @cgeqr2_.i__, align 4
  %117 = load i32, i32* %16, align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %115, %118
  store i32 %119, i32* %19, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load float, float* %124, align 4
  store float %125, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgeqr2_.alpha, i32 0, i32 0), align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load float, float* %130, align 4
  store float %131, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgeqr2_.alpha, i32 0, i32 1), align 4
  %132 = load i32, i32* @cgeqr2_.i__, align 4
  %133 = load i32, i32* @cgeqr2_.i__, align 4
  %134 = load i32, i32* %16, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 %132, %135
  store i32 %136, i32* %19, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store float 1.000000e+00, float* %141, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  store float 0.000000e+00, float* %146, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @cgeqr2_.i__, align 4
  %150 = sub nsw i32 %148, %149
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %19, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @cgeqr2_.i__, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, i32* %20, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %157 = load i32, i32* @cgeqr2_.i__, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 %158
  %160 = call i32 @r_cnjg(%struct.TYPE_10__* %21, %struct.TYPE_10__* %159)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %162 = load i32, i32* @cgeqr2_.i__, align 4
  %163 = load i32, i32* @cgeqr2_.i__, align 4
  %164 = load i32, i32* %16, align 4
  %165 = mul nsw i32 %163, %164
  %166 = add nsw i32 %162, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %170 = load i32, i32* @cgeqr2_.i__, align 4
  %171 = load i32, i32* @cgeqr2_.i__, align 4
  %172 = add nsw i32 %171, 1
  %173 = load i32, i32* %16, align 4
  %174 = mul nsw i32 %172, %173
  %175 = add nsw i32 %170, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i64 %176
  %178 = load i32*, i32** %12, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 1
  %181 = call i32 @clarf_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32* %20, %struct.TYPE_10__* %168, i32* @c__1, %struct.TYPE_10__* %21, %struct.TYPE_10__* %177, i32* %178, %struct.TYPE_10__* %180)
  %182 = load i32, i32* @cgeqr2_.i__, align 4
  %183 = load i32, i32* @cgeqr2_.i__, align 4
  %184 = load i32, i32* %16, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %182, %185
  store i32 %186, i32* %19, align 4
  %187 = load float, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgeqr2_.alpha, i32 0, i32 0), align 4
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %189 = load i32, i32* %19, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  store float %187, float* %192, align 4
  %193 = load float, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgeqr2_.alpha, i32 0, i32 1), align 4
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  store float %193, float* %198, align 4
  br label %199

199:                                              ; preds = %114, %78
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* @cgeqr2_.i__, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* @cgeqr2_.i__, align 4
  br label %74

203:                                              ; preds = %74
  store i32 0, i32* %8, align 4
  br label %204

204:                                              ; preds = %203, %62
  %205 = load i32, i32* %8, align 4
  ret i32 %205
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @clarfg_(i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @r_cnjg(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @clarf_(i8*, i32*, i32*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
