; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/distributions/extr_random_mvhg_marginals.c_random_mvhg_marginals.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/distributions/extr_random_mvhg_marginals.c_random_mvhg_marginals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_mvhg_marginals(i32* %0, i32 %1, i64 %2, i32* %3, i32 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %7
  br label %135

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sdiv i32 %33, 2
  %35 = icmp sgt i32 %32, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %31
  store i64 0, i64* %16, align 8
  br label %44

44:                                               ; preds = %131, %43
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %10, align 8
  %48 = mul i64 %46, %47
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %135

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %18, align 4
  store i64 0, i64* %19, align 8
  br label %53

53:                                               ; preds = %87, %50
  %54 = load i32, i32* %17, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* %19, align 8
  %58 = add i64 %57, 1
  %59 = load i64, i64* %10, align 8
  %60 = icmp ult i64 %58, %59
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ %60, %56 ]
  br i1 %62, label %63, label %90

63:                                               ; preds = %61
  %64 = load i32*, i32** %11, align 8
  %65 = load i64, i64* %19, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %18, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %18, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i64, i64* %19, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @random_hypergeometric(i32* %70, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %19, align 8
  %82 = add i64 %80, %81
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %78, i32* %83, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %17, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %63
  %88 = load i64, i64* %19, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %19, align 8
  br label %53

90:                                               ; preds = %61
  %91 = load i32, i32* %17, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, i32* %17, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %96, %97
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %90
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %101
  store i64 0, i64* %21, align 8
  br label %105

105:                                              ; preds = %126, %104
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %105
  %110 = load i32*, i32** %11, align 8
  %111 = load i64, i64* %21, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %21, align 8
  %117 = add i64 %115, %116
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %113, %119
  %121 = load i32*, i32** %14, align 8
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* %21, align 8
  %124 = add i64 %122, %123
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %120, i32* %125, align 4
  br label %126

126:                                              ; preds = %109
  %127 = load i64, i64* %21, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %21, align 8
  br label %105

129:                                              ; preds = %105
  br label %130

130:                                              ; preds = %129, %101
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %16, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %16, align 8
  br label %44

135:                                              ; preds = %30, %44
  ret void
}

declare dso_local i32 @random_hypergeometric(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
