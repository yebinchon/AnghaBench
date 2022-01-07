; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawText2.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawText2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TextVideoBuffer = common dso_local global i32 0, align 4
@UiScreenWidth = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiDrawText2(i64 %0, i64 %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* @TextVideoBuffer, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %12, align 8
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %19

19:                                               ; preds = %69, %5
  %20 = load i64*, i64** %10, align 8
  %21 = load i64, i64* %14, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @UiScreenWidth, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %33, %34
  %36 = zext i1 %35 to i32
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @TRUE, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi i32 [ %36, %32 ], [ %38, %37 ]
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %39, %25, %19
  %43 = phi i1 [ false, %25 ], [ false, %19 ], [ %41, %39 ]
  br i1 %43, label %44, label %74

44:                                               ; preds = %42
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = load i64, i64* %8, align 8
  %51 = mul i64 %50, 2
  %52 = load i64, i64* @UiScreenWidth, align 8
  %53 = mul i64 %51, %52
  %54 = load i64, i64* %13, align 8
  %55 = mul i64 %54, 2
  %56 = add i64 %53, %55
  %57 = getelementptr inbounds i64, i64* %49, i64 %56
  store i64 %48, i64* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64*, i64** %12, align 8
  %60 = load i64, i64* %8, align 8
  %61 = mul i64 %60, 2
  %62 = load i64, i64* @UiScreenWidth, align 8
  %63 = mul i64 %61, %62
  %64 = load i64, i64* %13, align 8
  %65 = mul i64 %64, 2
  %66 = add i64 %63, %65
  %67 = add i64 %66, 1
  %68 = getelementptr inbounds i64, i64* %59, i64 %67
  store i64 %58, i64* %68, align 8
  br label %69

69:                                               ; preds = %44
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %14, align 8
  br label %19

74:                                               ; preds = %42
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
