; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_update_margin_edits.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_update_margin_edits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@edt4 = common dso_local global i64 0, align 8
@edt7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64)* @update_margin_edits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_margin_edits(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [100 x i32], align 16
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @edt4, align 8
  store i64 %9, i64* %8, align 8
  br label %10

10:                                               ; preds = %35, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @edt7, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17, %14
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @pagesetup_get_margin_rect(i32* %23)
  %25 = load i64, i64* %8, align 8
  %26 = call i32* @element_from_margin_id(i32 %24, i64 %25)
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %29 = call i32 @size2str(i32* %22, i32 %27, i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %33 = call i32 @SetDlgItemTextW(i32 %30, i64 %31, i32* %32)
  br label %34

34:                                               ; preds = %21, %17
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %10

38:                                               ; preds = %10
  ret void
}

declare dso_local i32 @size2str(i32*, i32, i32*) #1

declare dso_local i32* @element_from_margin_id(i32, i64) #1

declare dso_local i32 @pagesetup_get_margin_rect(i32*) #1

declare dso_local i32 @SetDlgItemTextW(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
