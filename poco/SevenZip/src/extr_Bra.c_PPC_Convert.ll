; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_Bra.c_PPC_Convert.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_Bra.c_PPC_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PPC_Convert(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %132

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 4
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %127, %16
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %130

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 2
  %30 = icmp eq i32 %29, 18
  br i1 %30, label %31, label %126

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 3
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %126

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 0
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  %48 = shl i32 %47, 24
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = or i32 %48, %55
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %56, %63
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, -4
  %72 = or i32 %64, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %40
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %12, align 4
  br label %87

81:                                               ; preds = %40
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  %86 = sub nsw i32 %82, %85
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %81, %75
  %88 = load i32, i32* %12, align 4
  %89 = ashr i32 %88, 24
  %90 = and i32 %89, 3
  %91 = or i32 72, %90
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 0
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = ashr i32 %97, 16
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* %12, align 4
  %105 = ashr i32 %104, 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 3
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %118
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %87, %31, %23
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 4
  store i32 %129, i32* %10, align 4
  br label %19

130:                                              ; preds = %19
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %15
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
