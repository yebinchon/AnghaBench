; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_config.c_dlamc5_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_config.c_dlamc5_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlamc5_.i__ = internal global i32 0, align 4
@dlamc5_.y = internal global i32 0, align 4
@dlamc5_.z__ = internal global i32 0, align 4
@dlamc5_.try__ = internal global i32 0, align 4
@dlamc5_.lexp = internal global i32 0, align 4
@dlamc5_.oldy = internal global i32 0, align 4
@dlamc5_.uexp = internal global i32 0, align 4
@dlamc5_.nbits = internal global i32 0, align 4
@dlamc5_.recbas = internal global i32 0, align 4
@dlamc5_.exbits = internal global i32 0, align 4
@dlamc5_.expsum = internal global i32 0, align 4
@c_b32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlamc5_(i32* %0, i32* %1, i32* %2, i64* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 1, i32* @dlamc5_.lexp, align 4
  store i32 1, i32* @dlamc5_.exbits, align 4
  br label %15

15:                                               ; preds = %23, %6
  %16 = load i32, i32* @dlamc5_.lexp, align 4
  %17 = shl i32 %16, 1
  store i32 %17, i32* @dlamc5_.try__, align 4
  %18 = load i32, i32* @dlamc5_.try__, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @dlamc5_.try__, align 4
  store i32 %24, i32* @dlamc5_.lexp, align 4
  %25 = load i32, i32* @dlamc5_.exbits, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @dlamc5_.exbits, align 4
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* @dlamc5_.lexp, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @dlamc5_.lexp, align 4
  store i32 %34, i32* @dlamc5_.uexp, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @dlamc5_.try__, align 4
  store i32 %36, i32* @dlamc5_.uexp, align 4
  %37 = load i32, i32* @dlamc5_.exbits, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @dlamc5_.exbits, align 4
  br label %39

39:                                               ; preds = %35, %33
  %40 = load i32, i32* @dlamc5_.uexp, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %40, %42
  %44 = load i32, i32* @dlamc5_.lexp, align 4
  %45 = sub nsw i32 0, %44
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %45, %47
  %49 = icmp sgt i32 %43, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @dlamc5_.lexp, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* @dlamc5_.expsum, align 4
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @dlamc5_.uexp, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* @dlamc5_.expsum, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @dlamc5_.expsum, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %57, %59
  %61 = sub nsw i32 %60, 1
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @dlamc5_.exbits, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %64, %66
  store i32 %67, i32* @dlamc5_.nbits, align 4
  %68 = load i32, i32* @dlamc5_.nbits, align 4
  %69 = srem i32 %68, 2
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %79

71:                                               ; preds = %56
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %75, %71, %56
  %80 = load i64*, i64** %10, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sitofp i32 %89 to double
  %91 = fdiv double 1.000000e+00, %90
  %92 = fptosi double %91 to i32
  store i32 %92, i32* @dlamc5_.recbas, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to double
  %96 = fsub double %95, 1.000000e+00
  %97 = fptosi double %96 to i32
  store i32 %97, i32* @dlamc5_.z__, align 4
  store i32 0, i32* @dlamc5_.y, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %13, align 4
  store i32 1, i32* @dlamc5_.i__, align 4
  br label %100

100:                                              ; preds = %115, %87
  %101 = load i32, i32* @dlamc5_.i__, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i32, i32* @dlamc5_.recbas, align 4
  %106 = load i32, i32* @dlamc5_.z__, align 4
  %107 = mul nsw i32 %106, %105
  store i32 %107, i32* @dlamc5_.z__, align 4
  %108 = load i32, i32* @dlamc5_.y, align 4
  %109 = sitofp i32 %108 to double
  %110 = fcmp olt double %109, 1.000000e+00
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @dlamc5_.y, align 4
  store i32 %112, i32* @dlamc5_.oldy, align 4
  br label %113

113:                                              ; preds = %111, %104
  %114 = call i32 @dlamc3_(i32* @dlamc5_.y, i32* @dlamc5_.z__)
  store i32 %114, i32* @dlamc5_.y, align 4
  br label %115

115:                                              ; preds = %113
  %116 = load i32, i32* @dlamc5_.i__, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @dlamc5_.i__, align 4
  br label %100

118:                                              ; preds = %100
  %119 = load i32, i32* @dlamc5_.y, align 4
  %120 = sitofp i32 %119 to double
  %121 = fcmp oge double %120, 1.000000e+00
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @dlamc5_.oldy, align 4
  store i32 %123, i32* @dlamc5_.y, align 4
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %13, align 4
  store i32 1, i32* @dlamc5_.i__, align 4
  br label %127

127:                                              ; preds = %137, %124
  %128 = load i32, i32* @dlamc5_.i__, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load i32, i32* @dlamc5_.y, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %132, %134
  store i32 %135, i32* %14, align 4
  %136 = call i32 @dlamc3_(i32* %14, i32* @c_b32)
  store i32 %136, i32* @dlamc5_.y, align 4
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* @dlamc5_.i__, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @dlamc5_.i__, align 4
  br label %127

140:                                              ; preds = %127
  %141 = load i32, i32* @dlamc5_.y, align 4
  %142 = load i32*, i32** %12, align 8
  store i32 %141, i32* %142, align 4
  ret i32 0
}

declare dso_local i32 @dlamc3_(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
