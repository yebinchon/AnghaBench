; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rand-primegen.c_doit12.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rand-primegen.c_doit12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B = common dso_local global i64 0, align 8
@two = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i32)* @doit12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doit12(i32* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %15, 5
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1000000000
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %22, %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, 10
  store i64 %29, i64* %6, align 8
  br label %19

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1000000000
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %38, %30
  %36 = load i64, i64* %9, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, 10
  store i64 %43, i64* %6, align 8
  br label %35

44:                                               ; preds = %35
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 15
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, 10
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %109, %44
  br label %50

50:                                               ; preds = %59, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @B, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  ret void

59:                                               ; preds = %54
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub nsw i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, 30
  store i64 %64, i64* %7, align 8
  br label %50

65:                                               ; preds = %50
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %77, %65
  %69 = load i64, i64* %9, align 8
  %70 = icmp sge i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp slt i64 %72, %73
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i1 [ false, %68 ], [ %74, %71 ]
  br i1 %76, label %77, label %109

77:                                               ; preds = %75
  %78 = load i64, i64* %9, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %14, align 4
  %83 = ashr i32 %82, 5
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, 31
  store i32 %85, i32* %10, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub nsw i64 %87, %86
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %7, align 8
  %90 = add nsw i64 %89, 30
  store i64 %90, i64* %7, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %11, align 4
  %96 = load i32*, i32** @two, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = xor i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %68

109:                                              ; preds = %75
  %110 = load i64, i64* %12, align 8
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %13, align 8
  store i64 %111, i64* %7, align 8
  %112 = load i64, i64* %6, align 8
  %113 = sub nsw i64 %112, 10
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %116, 10
  store i64 %117, i64* %6, align 8
  br label %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
