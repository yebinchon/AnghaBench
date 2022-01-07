; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlamrg_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlamrg_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlamrg_.i__ = internal global i64 0, align 8
@dlamrg_.ind1 = internal global i64 0, align 8
@dlamrg_.ind2 = internal global i64 0, align 8
@dlamrg_.n1sv = internal global i64 0, align 8
@dlamrg_.n2sv = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlamrg_(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load i64*, i64** %12, align 8
  %15 = getelementptr inbounds i64, i64* %14, i32 -1
  store i64* %15, i64** %12, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = getelementptr inbounds i64, i64* %16, i32 -1
  store i64* %17, i64** %9, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* @dlamrg_.n1sv, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* @dlamrg_.n2sv, align 8
  %22 = load i64*, i64** %10, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i64 1, i64* @dlamrg_.ind1, align 8
  br label %29

26:                                               ; preds = %6
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @dlamrg_.ind1, align 8
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @dlamrg_.ind2, align 8
  br label %43

37:                                               ; preds = %29
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %39, %41
  store i64 %42, i64* @dlamrg_.ind2, align 8
  br label %43

43:                                               ; preds = %37, %33
  store i64 1, i64* @dlamrg_.i__, align 8
  br label %44

44:                                               ; preds = %86, %43
  %45 = load i64, i64* @dlamrg_.n1sv, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %87

47:                                               ; preds = %44
  %48 = load i64, i64* @dlamrg_.n2sv, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %47
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* @dlamrg_.ind1, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* @dlamrg_.ind2, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %54, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %50
  %61 = load i64, i64* @dlamrg_.ind1, align 8
  %62 = load i64*, i64** %12, align 8
  %63 = load i64, i64* @dlamrg_.i__, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* @dlamrg_.i__, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* @dlamrg_.i__, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @dlamrg_.ind1, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* @dlamrg_.ind1, align 8
  %71 = load i64, i64* @dlamrg_.n1sv, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* @dlamrg_.n1sv, align 8
  br label %86

73:                                               ; preds = %50
  %74 = load i64, i64* @dlamrg_.ind2, align 8
  %75 = load i64*, i64** %12, align 8
  %76 = load i64, i64* @dlamrg_.i__, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %74, i64* %77, align 8
  %78 = load i64, i64* @dlamrg_.i__, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* @dlamrg_.i__, align 8
  %80 = load i64*, i64** %11, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @dlamrg_.ind2, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* @dlamrg_.ind2, align 8
  %84 = load i64, i64* @dlamrg_.n2sv, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* @dlamrg_.n2sv, align 8
  br label %86

86:                                               ; preds = %73, %60
  br label %44

87:                                               ; preds = %47, %44
  %88 = load i64, i64* @dlamrg_.n1sv, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load i64, i64* @dlamrg_.n2sv, align 8
  store i64 %91, i64* %13, align 8
  store i64 1, i64* @dlamrg_.n1sv, align 8
  br label %92

92:                                               ; preds = %107, %90
  %93 = load i64, i64* @dlamrg_.n1sv, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp sle i64 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load i64, i64* @dlamrg_.ind2, align 8
  %98 = load i64*, i64** %12, align 8
  %99 = load i64, i64* @dlamrg_.i__, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* @dlamrg_.i__, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* @dlamrg_.i__, align 8
  %103 = load i64*, i64** %11, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @dlamrg_.ind2, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* @dlamrg_.ind2, align 8
  br label %107

107:                                              ; preds = %96
  %108 = load i64, i64* @dlamrg_.n1sv, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* @dlamrg_.n1sv, align 8
  br label %92

110:                                              ; preds = %92
  br label %132

111:                                              ; preds = %87
  %112 = load i64, i64* @dlamrg_.n1sv, align 8
  store i64 %112, i64* %13, align 8
  store i64 1, i64* @dlamrg_.n2sv, align 8
  br label %113

113:                                              ; preds = %128, %111
  %114 = load i64, i64* @dlamrg_.n2sv, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp sle i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i64, i64* @dlamrg_.ind1, align 8
  %119 = load i64*, i64** %12, align 8
  %120 = load i64, i64* @dlamrg_.i__, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* @dlamrg_.i__, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* @dlamrg_.i__, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @dlamrg_.ind1, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* @dlamrg_.ind1, align 8
  br label %128

128:                                              ; preds = %117
  %129 = load i64, i64* @dlamrg_.n2sv, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* @dlamrg_.n2sv, align 8
  br label %113

131:                                              ; preds = %113
  br label %132

132:                                              ; preds = %131, %110
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
