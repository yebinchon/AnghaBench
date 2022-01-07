; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_margin_edit_notification.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_margin_edit_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32)* @margin_edit_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @margin_edit_notification(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %87 [
    i32 129, label %16
    i32 128, label %82
  ]

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @pagesetup_get_margin_rect(i32* %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32* @element_from_margin_id(i32 %18, i32 %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = call i32 @GetDlgItemTextW(i32 %21, i32 %22, i32* %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %16
  %29 = call i32 (...) @get_decimal_sep()
  store i32 %29, i32* %13, align 4
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %31 = call i32 @wcstol(i32* %30, i32** %12, i32 10)
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %34 = icmp ne i32* %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %35, %28
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @is_metric(i32* %41)
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 100, i32 1000
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %10, align 4
  %48 = mul nsw i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %14, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %12, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sdiv i32 %60, 10
  store i32 %61, i32* %14, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @iswdigit(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %57
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 48
  %70 = load i32, i32* %14, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %75

74:                                               ; preds = %57
  br label %76

75:                                               ; preds = %66
  br label %54

76:                                               ; preds = %74, %54
  br label %77

77:                                               ; preds = %76, %40
  br label %78

78:                                               ; preds = %77, %35
  br label %79

79:                                               ; preds = %78, %16
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  br label %87

82:                                               ; preds = %4
  %83 = load i32, i32* %5, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @update_margin_edits(i32 %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %79, %82, %4
  ret void
}

declare dso_local i32* @element_from_margin_id(i32, i32) #1

declare dso_local i32 @pagesetup_get_margin_rect(i32*) #1

declare dso_local i32 @GetDlgItemTextW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @get_decimal_sep(...) #1

declare dso_local i32 @wcstol(i32*, i32**, i32) #1

declare dso_local i32 @is_metric(i32*) #1

declare dso_local i32 @iswdigit(i32) #1

declare dso_local i32 @update_margin_edits(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
