; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_stop_dependencies.c_InitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_stop_dependencies.c_InitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IDI_SM_ICON = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@SM_CXSMICON = common dso_local global i32 0, align 4
@WM_SETICON = common dso_local global i32 0, align 4
@ICON_SMALL = common dso_local global i32 0, align 4
@IDS_STOP_DEPENDS = common dso_local global i32 0, align 4
@ProcessHeap = common dso_local global i32 0, align 4
@IDC_STOP_DEPENDS = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_STOP_DEPENDS_LB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i64)* @InitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitDialog(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32* null, i32** %14, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i64, i64* %8, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %9, align 8
  %19 = load i32, i32* @hInstance, align 4
  %20 = load i32, i32* @IDI_SM_ICON, align 4
  %21 = call i32 @MAKEINTRESOURCE(i32 %20)
  %22 = load i32, i32* @IMAGE_ICON, align 4
  %23 = load i32, i32* @SM_CXSMICON, align 4
  %24 = call i32 @GetSystemMetrics(i32 %23)
  %25 = load i32, i32* @SM_CXSMICON, align 4
  %26 = call i32 @GetSystemMetrics(i32 %25)
  %27 = call i64 @LoadImageW(i32 %19, i32 %21, i32 %22, i32 %24, i32 %26, i32 0)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @WM_SETICON, align 4
  %34 = load i32, i32* @ICON_SMALL, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = ptrtoint i32* %35 to i64
  %37 = call i32 @SendMessageW(i64 %32, i32 %33, i32 %34, i64 %36)
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @DestroyIcon(i32* %38)
  br label %40

40:                                               ; preds = %31, %4
  %41 = load i32, i32* @hInstance, align 4
  %42 = load i32, i32* @IDS_STOP_DEPENDS, align 4
  %43 = call i64 @AllocAndLoadString(i64* %11, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %40
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @wcslen(i64 %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @wcslen(i64 %50)
  %52 = add nsw i32 %47, %51
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* @ProcessHeap, align 4
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i64 @HeapAlloc(i32 %54, i32 0, i32 %58)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %45
  %63 = load i64, i64* %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @_snwprintf(i64 %63, i32 %64, i64 %65, i64 %68)
  %70 = load i64, i64* %5, align 8
  %71 = load i32, i32* @IDC_STOP_DEPENDS, align 4
  %72 = load i32, i32* @WM_SETTEXT, align 4
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @SendDlgItemMessageW(i64 %70, i32 %71, i32 %72, i32 0, i64 %73)
  %75 = load i32, i32* @ProcessHeap, align 4
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @HeapFree(i32 %75, i32 0, i64 %76)
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %62, %45
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @LocalFree(i64 %80)
  br label %82

82:                                               ; preds = %79, %40
  %83 = load i64, i64* %5, align 8
  %84 = load i32, i32* @IDC_STOP_DEPENDS_LB, align 4
  %85 = call i64 @GetDlgItem(i64 %83, i32 %84)
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @AddServiceNamesToStop(i64 %89, i64 %92)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load i32, i32* %15, align 4
  ret i32 %95
}

declare dso_local i64 @LoadImageW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i64) #1

declare dso_local i32 @DestroyIcon(i32*) #1

declare dso_local i64 @AllocAndLoadString(i64*, i32, i32) #1

declare dso_local i32 @wcslen(i64) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @_snwprintf(i64, i32, i64, i64) #1

declare dso_local i32 @SendDlgItemMessageW(i64, i32, i32, i32, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

declare dso_local i32 @LocalFree(i64) #1

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i32 @AddServiceNamesToStop(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
