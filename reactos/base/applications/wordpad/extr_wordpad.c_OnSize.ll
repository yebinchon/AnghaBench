; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_wordpad.c_OnSize.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_wordpad.c_OnSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@IDC_PREVIEW = common dso_local global i32 0, align 4
@IDC_EDITOR = common dso_local global i32 0, align 4
@IDC_STATUSBAR = common dso_local global i32 0, align 4
@IDC_REBAR = common dso_local global i32 0, align 4
@IDC_RULER = common dso_local global i32 0, align 4
@WM_SIZE = common dso_local global i32 0, align 4
@RB_GETBARHEIGHT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @OnSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnSize(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = call i64 (...) @preview_isactive()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @IDC_PREVIEW, align 4
  %19 = call i64 @GetDlgItem(i64 %17, i32 %18)
  br label %24

20:                                               ; preds = %3
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* @IDC_EDITOR, align 4
  %23 = call i64 @GetDlgItem(i64 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i64 [ %19, %16 ], [ %23, %20 ]
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @IDC_STATUSBAR, align 4
  %28 = call i64 @GetDlgItem(i64 %26, i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @IDC_REBAR, align 4
  %31 = call i64 @GetDlgItem(i64 %29, i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i32, i32* @IDC_RULER, align 4
  %34 = call i64 @GetDlgItem(i64 %32, i32 %33)
  store i64 %34, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %24
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* @WM_SIZE, align 4
  %40 = call i32 @SendMessageW(i64 %38, i32 %39, i32 0, i32 0)
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @IsWindowVisible(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @GetClientRect(i64 %45, %struct.TYPE_3__* %8)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %48, %50
  store i32 %51, i32* %7, align 4
  br label %53

52:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %44
  br label %54

54:                                               ; preds = %53, %24
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* @RB_GETBARHEIGHT, align 4
  %60 = call i32 @SendMessageW(i64 %58, i32 %59, i32 0, i32 0)
  store i32 %60, i32* %13, align 4
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @LOWORD(i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @MoveWindow(i64 %61, i32 0, i32 0, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %57, %54
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @GetClientRect(i64 %71, %struct.TYPE_3__* %8)
  %73 = load i64, i64* %9, align 8
  %74 = load i32, i32* %13, align 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @MoveWindow(i64 %73, i32 0, i32 %74, i32 %76, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %70, %67
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @redraw_ruler(i64 %86)
  %88 = load i64, i64* %4, align 8
  %89 = load i32, i32* @WM_SIZE, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @DefWindowProcW(i64 %88, i32 %89, i32 %90, i32 %91)
  ret i32 %92
}

declare dso_local i64 @preview_isactive(...) #1

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i64 @IsWindowVisible(i64) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @MoveWindow(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @redraw_ruler(i64) #1

declare dso_local i32 @DefWindowProcW(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
