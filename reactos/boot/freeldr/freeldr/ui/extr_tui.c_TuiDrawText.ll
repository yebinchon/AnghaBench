; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawText.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TextVideoBuffer = common dso_local global i32 0, align 4
@UiScreenWidth = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiDrawText(i64 %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @TextVideoBuffer, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %10, align 8
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %54, %4
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* %12, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @UiScreenWidth, align 8
  %26 = icmp ult i64 %24, %25
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i1 [ false, %17 ], [ %26, %23 ]
  br i1 %28, label %29, label %59

29:                                               ; preds = %27
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = mul i64 %35, 2
  %37 = load i64, i64* @UiScreenWidth, align 8
  %38 = mul i64 %36, %37
  %39 = load i64, i64* %11, align 8
  %40 = mul i64 %39, 2
  %41 = add i64 %38, %40
  %42 = getelementptr inbounds i64, i64* %34, i64 %41
  store i64 %33, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = mul i64 %45, 2
  %47 = load i64, i64* @UiScreenWidth, align 8
  %48 = mul i64 %46, %47
  %49 = load i64, i64* %11, align 8
  %50 = mul i64 %49, 2
  %51 = add i64 %48, %50
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds i64, i64* %44, i64 %52
  store i64 %43, i64* %53, align 8
  br label %54

54:                                               ; preds = %29
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %12, align 8
  br label %17

59:                                               ; preds = %27
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
