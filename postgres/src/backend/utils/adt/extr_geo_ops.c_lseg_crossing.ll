; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_lseg_crossing.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_lseg_crossing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINT_ON_POLYGON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @lseg_crossing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lseg_crossing(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @FPzero(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @FPzero(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @POINT_ON_POLYGON, align 4
  store i32 %20, i32* %5, align 4
  br label %146

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @FPgt(i32 %22, double 0.000000e+00)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @FPzero(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @FPgt(i32 %30, double 0.000000e+00)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @POINT_ON_POLYGON, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 0, %33 ], [ %35, %34 ]
  store i32 %37, i32* %5, align 4
  br label %146

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @FPlt(i32 %39, double 0.000000e+00)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 -1
  store i32 %43, i32* %5, align 4
  br label %146

44:                                               ; preds = %21
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @FPzero(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @FPlt(i32 %49, double 0.000000e+00)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @POINT_ON_POLYGON, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 0, %52 ], [ %54, %53 ]
  store i32 %56, i32* %5, align 4
  br label %146

57:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %146

58:                                               ; preds = %4
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @FPgt(i32 %59, double 0.000000e+00)
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 -1
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @FPzero(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @FPlt(i32 %68, double 0.000000e+00)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i32 [ 0, %71 ], [ %73, %72 ]
  store i32 %75, i32* %5, align 4
  br label %146

76:                                               ; preds = %58
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @FPlt(i32 %80, double 0.000000e+00)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %11, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @FPgt(i32 %87, double 0.000000e+00)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %79
  store i32 0, i32* %5, align 4
  br label %146

91:                                               ; preds = %86, %83
  %92 = load i32, i32* %6, align 4
  %93 = call i64 @FPge(i32 %92, double 0.000000e+00)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @FPgt(i32 %96, double 0.000000e+00)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 2, %100
  store i32 %101, i32* %5, align 4
  br label %146

102:                                              ; preds = %95, %91
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @FPlt(i32 %103, double 0.000000e+00)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %8, align 4
  %108 = call i64 @FPle(i32 %107, double 0.000000e+00)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %146

111:                                              ; preds = %106, %102
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @float8_mi(i32 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @float8_mul(i32 %114, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @float8_mi(i32 %117, i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @float8_mul(i32 %119, i32 %120)
  %122 = call i32 @float8_mi(i32 %116, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i64 @FPzero(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %111
  %127 = load i32, i32* @POINT_ON_POLYGON, align 4
  store i32 %127, i32* %5, align 4
  br label %146

128:                                              ; preds = %111
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = call i64 @FPlt(i32 %132, double 0.000000e+00)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %131, %128
  %136 = load i32, i32* %11, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %10, align 4
  %140 = call i64 @FPgt(i32 %139, double 0.000000e+00)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138, %131
  store i32 0, i32* %5, align 4
  br label %146

143:                                              ; preds = %138, %135
  %144 = load i32, i32* %11, align 4
  %145 = mul nsw i32 2, %144
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %143, %142, %126, %110, %99, %90, %74, %57, %55, %38, %36, %19
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i64 @FPzero(i32) #1

declare dso_local i64 @FPgt(i32, double) #1

declare dso_local i64 @FPlt(i32, double) #1

declare dso_local i64 @FPge(i32, double) #1

declare dso_local i64 @FPle(i32, double) #1

declare dso_local i32 @float8_mi(i32, i32) #1

declare dso_local i32 @float8_mul(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
