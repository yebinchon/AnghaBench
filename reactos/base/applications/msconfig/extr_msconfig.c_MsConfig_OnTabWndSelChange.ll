; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_msconfig.c_MsConfig_OnTabWndSelChange.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_msconfig.c_MsConfig_OnTabWndSelChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hTabWnd = common dso_local global i32 0, align 4
@hGeneralPage = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@hSystemPage = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@hFreeLdrPage = common dso_local global i32 0, align 4
@hServicesPage = common dso_local global i32 0, align 4
@hStartupPage = common dso_local global i32 0, align 4
@hToolsPage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MsConfig_OnTabWndSelChange() #0 {
  %1 = load i32, i32* @hTabWnd, align 4
  %2 = call i32 @TabCtrl_GetCurSel(i32 %1)
  switch i32 %2, label %129 [
    i32 0, label %3
    i32 1, label %24
    i32 2, label %45
    i32 3, label %66
    i32 4, label %87
    i32 5, label %108
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @hGeneralPage, align 4
  %5 = load i32, i32* @SW_SHOW, align 4
  %6 = call i32 @ShowWindow(i32 %4, i32 %5)
  %7 = load i32, i32* @hSystemPage, align 4
  %8 = load i32, i32* @SW_HIDE, align 4
  %9 = call i32 @ShowWindow(i32 %7, i32 %8)
  %10 = load i32, i32* @hFreeLdrPage, align 4
  %11 = load i32, i32* @SW_HIDE, align 4
  %12 = call i32 @ShowWindow(i32 %10, i32 %11)
  %13 = load i32, i32* @hServicesPage, align 4
  %14 = load i32, i32* @SW_HIDE, align 4
  %15 = call i32 @ShowWindow(i32 %13, i32 %14)
  %16 = load i32, i32* @hStartupPage, align 4
  %17 = load i32, i32* @SW_HIDE, align 4
  %18 = call i32 @ShowWindow(i32 %16, i32 %17)
  %19 = load i32, i32* @hToolsPage, align 4
  %20 = load i32, i32* @SW_HIDE, align 4
  %21 = call i32 @ShowWindow(i32 %19, i32 %20)
  %22 = load i32, i32* @hGeneralPage, align 4
  %23 = call i32 @BringWindowToTop(i32 %22)
  br label %129

24:                                               ; preds = %0
  %25 = load i32, i32* @hGeneralPage, align 4
  %26 = load i32, i32* @SW_HIDE, align 4
  %27 = call i32 @ShowWindow(i32 %25, i32 %26)
  %28 = load i32, i32* @hSystemPage, align 4
  %29 = load i32, i32* @SW_SHOW, align 4
  %30 = call i32 @ShowWindow(i32 %28, i32 %29)
  %31 = load i32, i32* @hToolsPage, align 4
  %32 = load i32, i32* @SW_HIDE, align 4
  %33 = call i32 @ShowWindow(i32 %31, i32 %32)
  %34 = load i32, i32* @hStartupPage, align 4
  %35 = load i32, i32* @SW_HIDE, align 4
  %36 = call i32 @ShowWindow(i32 %34, i32 %35)
  %37 = load i32, i32* @hFreeLdrPage, align 4
  %38 = load i32, i32* @SW_HIDE, align 4
  %39 = call i32 @ShowWindow(i32 %37, i32 %38)
  %40 = load i32, i32* @hServicesPage, align 4
  %41 = load i32, i32* @SW_HIDE, align 4
  %42 = call i32 @ShowWindow(i32 %40, i32 %41)
  %43 = load i32, i32* @hSystemPage, align 4
  %44 = call i32 @BringWindowToTop(i32 %43)
  br label %129

45:                                               ; preds = %0
  %46 = load i32, i32* @hGeneralPage, align 4
  %47 = load i32, i32* @SW_HIDE, align 4
  %48 = call i32 @ShowWindow(i32 %46, i32 %47)
  %49 = load i32, i32* @hSystemPage, align 4
  %50 = load i32, i32* @SW_HIDE, align 4
  %51 = call i32 @ShowWindow(i32 %49, i32 %50)
  %52 = load i32, i32* @hFreeLdrPage, align 4
  %53 = load i32, i32* @SW_SHOW, align 4
  %54 = call i32 @ShowWindow(i32 %52, i32 %53)
  %55 = load i32, i32* @hServicesPage, align 4
  %56 = load i32, i32* @SW_HIDE, align 4
  %57 = call i32 @ShowWindow(i32 %55, i32 %56)
  %58 = load i32, i32* @hStartupPage, align 4
  %59 = load i32, i32* @SW_HIDE, align 4
  %60 = call i32 @ShowWindow(i32 %58, i32 %59)
  %61 = load i32, i32* @hToolsPage, align 4
  %62 = load i32, i32* @SW_HIDE, align 4
  %63 = call i32 @ShowWindow(i32 %61, i32 %62)
  %64 = load i32, i32* @hFreeLdrPage, align 4
  %65 = call i32 @BringWindowToTop(i32 %64)
  br label %129

66:                                               ; preds = %0
  %67 = load i32, i32* @hGeneralPage, align 4
  %68 = load i32, i32* @SW_HIDE, align 4
  %69 = call i32 @ShowWindow(i32 %67, i32 %68)
  %70 = load i32, i32* @hSystemPage, align 4
  %71 = load i32, i32* @SW_HIDE, align 4
  %72 = call i32 @ShowWindow(i32 %70, i32 %71)
  %73 = load i32, i32* @hFreeLdrPage, align 4
  %74 = load i32, i32* @SW_HIDE, align 4
  %75 = call i32 @ShowWindow(i32 %73, i32 %74)
  %76 = load i32, i32* @hServicesPage, align 4
  %77 = load i32, i32* @SW_SHOW, align 4
  %78 = call i32 @ShowWindow(i32 %76, i32 %77)
  %79 = load i32, i32* @hStartupPage, align 4
  %80 = load i32, i32* @SW_HIDE, align 4
  %81 = call i32 @ShowWindow(i32 %79, i32 %80)
  %82 = load i32, i32* @hToolsPage, align 4
  %83 = load i32, i32* @SW_HIDE, align 4
  %84 = call i32 @ShowWindow(i32 %82, i32 %83)
  %85 = load i32, i32* @hServicesPage, align 4
  %86 = call i32 @BringWindowToTop(i32 %85)
  br label %129

87:                                               ; preds = %0
  %88 = load i32, i32* @hGeneralPage, align 4
  %89 = load i32, i32* @SW_HIDE, align 4
  %90 = call i32 @ShowWindow(i32 %88, i32 %89)
  %91 = load i32, i32* @hSystemPage, align 4
  %92 = load i32, i32* @SW_HIDE, align 4
  %93 = call i32 @ShowWindow(i32 %91, i32 %92)
  %94 = load i32, i32* @hFreeLdrPage, align 4
  %95 = load i32, i32* @SW_HIDE, align 4
  %96 = call i32 @ShowWindow(i32 %94, i32 %95)
  %97 = load i32, i32* @hServicesPage, align 4
  %98 = load i32, i32* @SW_HIDE, align 4
  %99 = call i32 @ShowWindow(i32 %97, i32 %98)
  %100 = load i32, i32* @hStartupPage, align 4
  %101 = load i32, i32* @SW_SHOW, align 4
  %102 = call i32 @ShowWindow(i32 %100, i32 %101)
  %103 = load i32, i32* @hToolsPage, align 4
  %104 = load i32, i32* @SW_HIDE, align 4
  %105 = call i32 @ShowWindow(i32 %103, i32 %104)
  %106 = load i32, i32* @hStartupPage, align 4
  %107 = call i32 @BringWindowToTop(i32 %106)
  br label %129

108:                                              ; preds = %0
  %109 = load i32, i32* @hGeneralPage, align 4
  %110 = load i32, i32* @SW_HIDE, align 4
  %111 = call i32 @ShowWindow(i32 %109, i32 %110)
  %112 = load i32, i32* @hSystemPage, align 4
  %113 = load i32, i32* @SW_HIDE, align 4
  %114 = call i32 @ShowWindow(i32 %112, i32 %113)
  %115 = load i32, i32* @hFreeLdrPage, align 4
  %116 = load i32, i32* @SW_HIDE, align 4
  %117 = call i32 @ShowWindow(i32 %115, i32 %116)
  %118 = load i32, i32* @hServicesPage, align 4
  %119 = load i32, i32* @SW_HIDE, align 4
  %120 = call i32 @ShowWindow(i32 %118, i32 %119)
  %121 = load i32, i32* @hStartupPage, align 4
  %122 = load i32, i32* @SW_HIDE, align 4
  %123 = call i32 @ShowWindow(i32 %121, i32 %122)
  %124 = load i32, i32* @hToolsPage, align 4
  %125 = load i32, i32* @SW_SHOW, align 4
  %126 = call i32 @ShowWindow(i32 %124, i32 %125)
  %127 = load i32, i32* @hToolsPage, align 4
  %128 = call i32 @BringWindowToTop(i32 %127)
  br label %129

129:                                              ; preds = %0, %108, %87, %66, %45, %24, %3
  ret void
}

declare dso_local i32 @TabCtrl_GetCurSel(i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @BringWindowToTop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
