; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rand-primegen.c_doit6.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rand-primegen.c_doit6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B = common dso_local global i64 0, align 8
@two = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i32)* @doit6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doit6(i32* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %15, 5
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 %17, 15
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1000000000
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %24, %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %30, 10
  store i64 %31, i64* %6, align 8
  br label %21

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1000000000
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %41, %32
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @B, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, 10
  store i64 %46, i64* %6, align 8
  br label %37

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %106, %47
  %49 = load i64, i64* %6, align 8
  %50 = sub nsw i64 %49, 10
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp sle i64 %51, 5
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  ret void

54:                                               ; preds = %48
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %11, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %61, %54
  %59 = load i64, i64* %11, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %7, align 8
  %66 = add nsw i64 %65, 30
  store i64 %66, i64* %7, align 8
  br label %58

67:                                               ; preds = %58
  %68 = load i64, i64* %11, align 8
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %74, %67
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @B, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load i64, i64* %11, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = ashr i32 %79, 5
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, 31
  store i32 %82, i32* %12, align 4
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %11, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %86, 30
  store i64 %87, i64* %7, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %14, align 4
  %93 = load i32*, i32** @two, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %14, align 4
  %100 = xor i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %70

106:                                              ; preds = %70
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %10, align 8
  store i64 %108, i64* %7, align 8
  br label %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
