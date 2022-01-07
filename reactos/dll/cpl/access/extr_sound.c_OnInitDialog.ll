; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/access/extr_sound.c_OnInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/access/extr_sound.c_OnInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@hApplet = common dso_local global i32 0, align 4
@IDS_SENTRY_NONE = common dso_local global i64 0, align 8
@IDC_SENTRY_COMBO = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@SSF_AVAILABLE = common dso_local global i32 0, align 4
@IDC_SENTRY_BOX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_SENTRY_TEXT = common dso_local global i32 0, align 4
@SSF_SOUNDSENTRYON = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@IDC_SSHOW_BOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*)* @OnInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnInitDialog(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load i32, i32* @hApplet, align 4
  %13 = load i64, i64* @IDS_SENTRY_NONE, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %18 = call i32 @LoadString(i32 %12, i64 %16, i32* %17, i32 256)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IDC_SENTRY_COMBO, align 4
  %21 = load i32, i32* @CB_ADDSTRING, align 4
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %23 = ptrtoint i32* %22 to i32
  %24 = call i32 @SendDlgItemMessage(i32 %19, i32 %20, i32 %21, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %11
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IDC_SENTRY_COMBO, align 4
  %31 = load i32, i32* @CB_SETCURSEL, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SendDlgItemMessage(i32 %29, i32 %30, i32 %31, i32 %35, i32 0)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SSF_AVAILABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @IDC_SENTRY_BOX, align 4
  %47 = call i32 @GetDlgItem(i32 %45, i32 %46)
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @EnableWindow(i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @IDC_SENTRY_TEXT, align 4
  %52 = call i32 @GetDlgItem(i32 %50, i32 %51)
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @EnableWindow(i32 %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IDC_SENTRY_COMBO, align 4
  %57 = call i32 @GetDlgItem(i32 %55, i32 %56)
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @EnableWindow(i32 %57, i32 %58)
  br label %85

60:                                               ; preds = %28
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SSF_SOUNDSENTRYON, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @IDC_SENTRY_BOX, align 4
  %71 = load i32, i32* @BST_CHECKED, align 4
  %72 = call i32 @CheckDlgButton(i32 %69, i32 %70, i32 %71)
  br label %84

73:                                               ; preds = %60
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @IDC_SENTRY_TEXT, align 4
  %76 = call i32 @GetDlgItem(i32 %74, i32 %75)
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @EnableWindow(i32 %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @IDC_SENTRY_COMBO, align 4
  %81 = call i32 @GetDlgItem(i32 %79, i32 %80)
  %82 = load i32, i32* @FALSE, align 4
  %83 = call i32 @EnableWindow(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %73, %68
  br label %85

85:                                               ; preds = %84, %44
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @IDC_SSHOW_BOX, align 4
  %93 = load i32, i32* @BST_CHECKED, align 4
  %94 = call i32 @CheckDlgButton(i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @LoadString(i32, i64, i32*, i32) #1

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @CheckDlgButton(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
