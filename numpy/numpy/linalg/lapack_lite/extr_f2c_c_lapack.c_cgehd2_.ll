; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cgehd2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cgehd2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float, float }

@cgehd2_.i__ = internal global i32 0, align 4
@cgehd2_.alpha = internal global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"CGEHD2\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Left\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgehd2_(i32* %0, i32* %1, i32* %2, %struct.TYPE_10__* %3, i32* %4, %struct.TYPE_10__* %5, %struct.TYPE_10__* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_10__, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %30 = sext i32 %28 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %31
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %13, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 -1
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %15, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 -1
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %16, align 8
  %37 = load i32*, i32** %17, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %8
  %42 = load i32*, i32** %17, align 8
  store i32 -1, i32* %42, align 4
  br label %85

43:                                               ; preds = %8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @max(i32 1, i32 %51)
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47, %43
  %55 = load i32*, i32** %17, align 8
  store i32 -2, i32* %55, align 4
  br label %84

56:                                               ; preds = %47
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @min(i32 %60, i32 %62)
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %56
  %72 = load i32*, i32** %17, align 8
  store i32 -3, i32* %72, align 4
  br label %83

73:                                               ; preds = %65
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @max(i32 1, i32 %77)
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32*, i32** %17, align 8
  store i32 -5, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %73
  br label %83

83:                                               ; preds = %82, %71
  br label %84

84:                                               ; preds = %83, %54
  br label %85

85:                                               ; preds = %84, %41
  %86 = load i32*, i32** %17, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32*, i32** %17, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %20, align 4
  %93 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 0, i32* %9, align 4
  br label %249

94:                                               ; preds = %85
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %20, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* @cgehd2_.i__, align 4
  br label %100

100:                                              ; preds = %245, %94
  %101 = load i32, i32* @cgehd2_.i__, align 4
  %102 = load i32, i32* %20, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %248

104:                                              ; preds = %100
  %105 = load i32, i32* @cgehd2_.i__, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* @cgehd2_.i__, align 4
  %108 = load i32, i32* %18, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %106, %109
  store i32 %110, i32* %21, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load float, float* %115, align 4
  store float %116, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgehd2_.alpha, i32 0, i32 0), align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %118 = load i32, i32* %21, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load float, float* %121, align 4
  store float %122, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgehd2_.alpha, i32 0, i32 1), align 4
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @cgehd2_.i__, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* @cgehd2_.i__, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %22, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %130 = load i32, i32* %22, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @min(i32 %130, i32 %132)
  %134 = load i32, i32* @cgehd2_.i__, align 4
  %135 = load i32, i32* %18, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %133, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 %138
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %141 = load i32, i32* @cgehd2_.i__, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %142
  %144 = call i32 @clarfg_(i32* %21, %struct.TYPE_10__* @cgehd2_.alpha, %struct.TYPE_10__* %139, i32* @c__1, %struct.TYPE_10__* %143)
  %145 = load i32, i32* @cgehd2_.i__, align 4
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* @cgehd2_.i__, align 4
  %148 = load i32, i32* %18, align 4
  %149 = mul nsw i32 %147, %148
  %150 = add nsw i32 %146, %149
  store i32 %150, i32* %21, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %152 = load i32, i32* %21, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store float 1.000000e+00, float* %155, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %157 = load i32, i32* %21, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  store float 0.000000e+00, float* %160, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @cgehd2_.i__, align 4
  %164 = sub nsw i32 %162, %163
  store i32 %164, i32* %21, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %167 = load i32, i32* @cgehd2_.i__, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* @cgehd2_.i__, align 4
  %170 = load i32, i32* %18, align 4
  %171 = mul nsw i32 %169, %170
  %172 = add nsw i32 %168, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i64 %173
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %176 = load i32, i32* @cgehd2_.i__, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %177
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %180 = load i32, i32* @cgehd2_.i__, align 4
  %181 = add nsw i32 %180, 1
  %182 = load i32, i32* %18, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 %185
  %187 = load i32*, i32** %14, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i64 1
  %190 = call i32 @clarf_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %165, i32* %21, %struct.TYPE_10__* %174, i32* @c__1, %struct.TYPE_10__* %178, %struct.TYPE_10__* %186, i32* %187, %struct.TYPE_10__* %189)
  %191 = load i32*, i32** %12, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @cgehd2_.i__, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %21, align 4
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @cgehd2_.i__, align 4
  %198 = sub nsw i32 %196, %197
  store i32 %198, i32* %22, align 4
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %200 = load i32, i32* @cgehd2_.i__, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i64 %201
  %203 = call i32 @r_cnjg(%struct.TYPE_10__* %23, %struct.TYPE_10__* %202)
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %205 = load i32, i32* @cgehd2_.i__, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* @cgehd2_.i__, align 4
  %208 = load i32, i32* %18, align 4
  %209 = mul nsw i32 %207, %208
  %210 = add nsw i32 %206, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i64 %211
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %214 = load i32, i32* @cgehd2_.i__, align 4
  %215 = add nsw i32 %214, 1
  %216 = load i32, i32* @cgehd2_.i__, align 4
  %217 = add nsw i32 %216, 1
  %218 = load i32, i32* %18, align 4
  %219 = mul nsw i32 %217, %218
  %220 = add nsw i32 %215, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i64 %221
  %223 = load i32*, i32** %14, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i64 1
  %226 = call i32 @clarf_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %21, i32* %22, %struct.TYPE_10__* %212, i32* @c__1, %struct.TYPE_10__* %23, %struct.TYPE_10__* %222, i32* %223, %struct.TYPE_10__* %225)
  %227 = load i32, i32* @cgehd2_.i__, align 4
  %228 = add nsw i32 %227, 1
  %229 = load i32, i32* @cgehd2_.i__, align 4
  %230 = load i32, i32* %18, align 4
  %231 = mul nsw i32 %229, %230
  %232 = add nsw i32 %228, %231
  store i32 %232, i32* %21, align 4
  %233 = load float, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgehd2_.alpha, i32 0, i32 0), align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %235 = load i32, i32* %21, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  store float %233, float* %238, align 4
  %239 = load float, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgehd2_.alpha, i32 0, i32 1), align 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %241 = load i32, i32* %21, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  store float %239, float* %244, align 4
  br label %245

245:                                              ; preds = %104
  %246 = load i32, i32* @cgehd2_.i__, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* @cgehd2_.i__, align 4
  br label %100

248:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %249

249:                                              ; preds = %248, %89
  %250 = load i32, i32* %9, align 4
  ret i32 %250
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @clarfg_(i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @clarf_(i8*, i32*, i32*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @r_cnjg(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
