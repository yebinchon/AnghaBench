; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PaintSelectedColor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_PaintSelectedColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@IDC_COLOR_GRAPH = common dso_local global i32 0, align 4
@IDC_COLOR_RESULT = common dso_local global i32 0, align 4
@BDR_SUNKENOUTER = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @CC_PaintSelectedColor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CC_PaintSelectedColor(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IDC_COLOR_GRAPH, align 4
  %11 = call i32 @GetDlgItem(i32 %9, i32 %10)
  %12 = call i64 @IsWindowVisible(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IDC_COLOR_RESULT, align 4
  %19 = call i32 @GetDlgItem(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @GetDC(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @GetClientRect(i32 %22, i32* %3)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @CreateSolidBrush(i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %14
  %33 = load i32, i32* %4, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @FillRect(i32 %33, i32* %3, i64 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @BDR_SUNKENOUTER, align 4
  %38 = load i32, i32* @BF_RECT, align 4
  %39 = call i32 @DrawEdge(i32 %36, i32* %3, i32 %37, i32 %38)
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @DeleteObject(i64 %40)
  br label %42

42:                                               ; preds = %32, %14
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ReleaseDC(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %1
  ret void
}

declare dso_local i64 @IsWindowVisible(i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i64 @CreateSolidBrush(i32) #1

declare dso_local i32 @FillRect(i32, i32*, i64) #1

declare dso_local i32 @DrawEdge(i32, i32*, i32, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
