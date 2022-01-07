; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_NCPaint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_NCPaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@WS_MINIMIZE = common dso_local global i32 0, align 4
@WM_NCPAINT = common dso_local global i32 0, align 4
@DCX_USESTYLE = common dso_local global i32 0, align 4
@DCX_WINDOW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PGS_HORZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @PAGER_NCPaint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PAGER_NCPaint(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WS_MINIMIZE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WM_NCPAINT, align 4
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @DefWindowProcW(i32 %19, i32 %20, i32 %22, i32 0)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DCX_USESTYLE, align 4
  %28 = load i32, i32* @DCX_WINDOW, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @GetDCEx(i32 %26, i32 0, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %72

33:                                               ; preds = %16
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @PAGER_GetButtonRects(%struct.TYPE_4__* %34, i32* %7, i32* %6, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PGS_HORZ, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @TRUE, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PAGER_DrawButton(i32 %37, i32 %40, i32 %41, i32 %46, i32 %47, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PGS_HORZ, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @FALSE, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PAGER_DrawButton(i32 %52, i32 %55, i32 %56, i32 %61, i32 %62, i32 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ReleaseDC(i32 %69, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %33, %32, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @DefWindowProcW(i32, i32, i32, i32) #1

declare dso_local i32 @GetDCEx(i32, i32, i32) #1

declare dso_local i32 @PAGER_GetButtonRects(%struct.TYPE_4__*, i32*, i32*, i32) #1

declare dso_local i32 @PAGER_DrawButton(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
