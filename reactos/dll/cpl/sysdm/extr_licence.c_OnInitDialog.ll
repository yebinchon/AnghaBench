; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_licence.c_OnInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_licence.c_OnInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@hApplet = common dso_local global i32 0, align 4
@IDI_CPLSYSTEM = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@WM_SETICON = common dso_local global i32 0, align 4
@ICON_SMALL = common dso_local global i32 0, align 4
@RC_LICENSE = common dso_local global i32 0, align 4
@RTDATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_LICENCEEDIT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@WM_VSCROLL = common dso_local global i32 0, align 4
@SB_TOP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @OnInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnInitDialog(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load i32, i32* @hApplet, align 4
  %10 = load i32, i32* @IDI_CPLSYSTEM, align 4
  %11 = call i32 @MAKEINTRESOURCE(i32 %10)
  %12 = load i32, i32* @IMAGE_ICON, align 4
  %13 = call i64 @LoadImage(i32 %9, i32 %11, i32 %12, i32 16, i32 16, i32 0)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @WM_SETICON, align 4
  %18 = load i32, i32* @ICON_SMALL, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @SendMessage(i32 %16, i32 %17, i32 %18, i32 %22)
  %24 = load i32, i32* @hApplet, align 4
  %25 = load i32, i32* @RC_LICENSE, align 4
  %26 = call i32 @MAKEINTRESOURCE(i32 %25)
  %27 = load i32, i32* @RTDATA, align 4
  %28 = call i32 @MAKEINTRESOURCE(i32 %27)
  %29 = call i32 @FindResource(i32 %24, i32 %26, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load i32, i32* @hApplet, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @LoadResource(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @LockResource(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36, %31, %2
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ShowLastWin32Error(i32 %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %61

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @IDC_LICENCEEDIT, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @SetDlgItemTextA(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IDC_LICENCEEDIT, align 4
  %51 = call i32 @GetDlgItem(i32 %49, i32 %50)
  %52 = load i32, i32* @EM_SETSEL, align 4
  %53 = call i32 @PostMessage(i32 %51, i32 %52, i32 -1, i32 0)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @IDC_LICENCEEDIT, align 4
  %56 = call i32 @GetDlgItem(i32 %54, i32 %55)
  %57 = load i32, i32* @WM_VSCROLL, align 4
  %58 = load i32, i32* @SB_TOP, align 4
  %59 = call i32 @PostMessage(i32 %56, i32 %57, i32 %58, i32 0)
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %44, %40
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @LoadImage(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @FindResource(i32, i32, i32) #1

declare dso_local i32 @LoadResource(i32, i32) #1

declare dso_local i32 @LockResource(i32) #1

declare dso_local i32 @ShowLastWin32Error(i32) #1

declare dso_local i32 @SetDlgItemTextA(i32, i32, i32) #1

declare dso_local i32 @PostMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
