; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_handle_WM_SIZING.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_handle_WM_SIZING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@g_xoff = common dso_local global i32 0, align 4
@g_yoff = common dso_local global i32 0, align 4
@g_height = common dso_local global i32 0, align 4
@g_width = common dso_local global i32 0, align 4
@g_Wnd = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@g_xscroll = common dso_local global i64 0, align 8
@g_yscroll = common dso_local global i64 0, align 8
@SB_HORZ = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @handle_WM_SIZING to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_WM_SIZING(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %9, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = load i32, i32* @g_xoff, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sub nsw i32 %21, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = load i32, i32* @g_yoff, align 4
  %33 = load i32, i32* @g_xoff, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @g_height, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @g_width, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %39, %4
  %44 = load i32, i32* @g_Wnd, align 4
  %45 = load i32, i32* @GWL_STYLE, align 4
  %46 = call i32 @GetWindowLongPtr(i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @WS_HSCROLL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @WS_HSCROLL, align 4
  %53 = load i32, i32* @WS_VSCROLL, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* @g_Wnd, align 4
  %58 = load i32, i32* @GWL_STYLE, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @SetWindowLongPtr(i32 %57, i32 %58, i32 %59)
  store i64 0, i64* @g_xscroll, align 8
  store i64 0, i64* @g_yscroll, align 8
  %61 = load i32, i32* @g_Wnd, align 4
  %62 = load i32, i32* @SB_HORZ, align 4
  %63 = load i64, i64* @g_xscroll, align 8
  %64 = call i32 @SetScrollPos(i32 %61, i32 %62, i64 %63, i32 1)
  %65 = load i32, i32* @g_Wnd, align 4
  %66 = load i32, i32* @SB_VERT, align 4
  %67 = load i64, i64* @g_yscroll, align 8
  %68 = call i32 @SetScrollPos(i32 %65, i32 %66, i64 %67, i32 1)
  br label %69

69:                                               ; preds = %51, %43
  br label %101

70:                                               ; preds = %39
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @g_height, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @g_width, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %74
  %79 = load i32, i32* @g_Wnd, align 4
  %80 = load i32, i32* @GWL_STYLE, align 4
  %81 = call i32 @GetWindowLongPtr(i32 %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @WS_HSCROLL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %78
  %87 = load i32, i32* @WS_HSCROLL, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* @WS_VSCROLL, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* @g_Wnd, align 4
  %96 = load i32, i32* @GWL_STYLE, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @SetWindowLongPtr(i32 %95, i32 %96, i32 %97)
  store i64 0, i64* @g_xscroll, align 8
  store i64 0, i64* @g_yscroll, align 8
  br label %99

99:                                               ; preds = %86, %78
  br label %100

100:                                              ; preds = %99, %74, %70
  br label %101

101:                                              ; preds = %100, %69
  ret i32 0
}

declare dso_local i32 @GetWindowLongPtr(i32, i32) #1

declare dso_local i32 @SetWindowLongPtr(i32, i32, i32) #1

declare dso_local i32 @SetScrollPos(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
