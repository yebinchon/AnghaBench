; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_dxdiag.c_InitializeTabCtrl.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_dxdiag.c_InitializeTabCtrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i8**, i32 }

@IDC_TAB_CONTROL = common dso_local global i32 0, align 4
@hTabCtrlWnd = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@IDD_SYSTEM_DIALOG = common dso_local global i32 0, align 4
@SystemPageWndProc = common dso_local global i32 0, align 4
@IDD_MUSIC_DIALOG = common dso_local global i32 0, align 4
@MusicPageWndProc = common dso_local global i32 0, align 4
@IDD_INPUT_DIALOG = common dso_local global i32 0, align 4
@InputPageWndProc = common dso_local global i32 0, align 4
@IDD_NETWORK_DIALOG = common dso_local global i32 0, align 4
@NetworkPageWndProc = common dso_local global i32 0, align 4
@IDD_HELP_DIALOG = common dso_local global i32 0, align 4
@HelpPageWndProc = common dso_local global i32 0, align 4
@IDS_SYSTEM_DIALOG = common dso_local global i32 0, align 4
@IDS_MUSIC_DIALOG = common dso_local global i32 0, align 4
@IDS_INPUT_DIALOG = common dso_local global i32 0, align 4
@IDS_NETWORK_DIALOG = common dso_local global i32 0, align 4
@IDS_HELP_DIALOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitializeTabCtrl(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IDC_TAB_CONTROL, align 4
  %8 = call i32 @GetDlgItem(i32 %6, i32 %7)
  store i32 %8, i32* @hTabCtrlWnd, align 4
  %9 = load i32, i32* @hTabCtrlWnd, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @hInst, align 4
  %13 = load i32, i32* @IDD_SYSTEM_DIALOG, align 4
  %14 = call i32 @MAKEINTRESOURCEW(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SystemPageWndProc, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = ptrtoint %struct.TYPE_6__* %19 to i32
  %21 = call i8* @CreateDialogParamW(i32 %12, i32 %14, i32 %17, i32 %18, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* %21, i8** %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @EnableDialogTheme(i8* %30)
  %32 = load i32, i32* @hInst, align 4
  %33 = load i32, i32* @IDD_MUSIC_DIALOG, align 4
  %34 = call i32 @MAKEINTRESOURCEW(i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MusicPageWndProc, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = ptrtoint %struct.TYPE_6__* %39 to i32
  %41 = call i8* @CreateDialogParamW(i32 %32, i32 %34, i32 %37, i32 %38, i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %41, i8** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @EnableDialogTheme(i8* %50)
  %52 = load i32, i32* @hInst, align 4
  %53 = load i32, i32* @IDD_INPUT_DIALOG, align 4
  %54 = call i32 @MAKEINTRESOURCEW(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @InputPageWndProc, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = ptrtoint %struct.TYPE_6__* %59 to i32
  %61 = call i8* @CreateDialogParamW(i32 %52, i32 %54, i32 %57, i32 %58, i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  store i8* %61, i8** %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @EnableDialogTheme(i8* %70)
  %72 = load i32, i32* @hInst, align 4
  %73 = load i32, i32* @IDD_NETWORK_DIALOG, align 4
  %74 = call i32 @MAKEINTRESOURCEW(i32 %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @NetworkPageWndProc, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = ptrtoint %struct.TYPE_6__* %79 to i32
  %81 = call i8* @CreateDialogParamW(i32 %72, i32 %74, i32 %77, i32 %78, i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 3
  store i8* %81, i8** %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 3
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @EnableDialogTheme(i8* %90)
  %92 = load i32, i32* @hInst, align 4
  %93 = load i32, i32* @IDD_HELP_DIALOG, align 4
  %94 = call i32 @MAKEINTRESOURCEW(i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @HelpPageWndProc, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = ptrtoint %struct.TYPE_6__* %99 to i32
  %101 = call i8* @CreateDialogParamW(i32 %92, i32 %94, i32 %97, i32 %98, i32 %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 4
  store i8* %101, i8** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 4
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @EnableDialogTheme(i8* %110)
  %112 = load i32, i32* @hTabCtrlWnd, align 4
  %113 = load i32, i32* @IDS_SYSTEM_DIALOG, align 4
  %114 = call i32 @MAKEINTRESOURCEW(i32 %113)
  %115 = call i32 @InsertTabCtrlItem(i32 %112, i64 0, i32 %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = call i32 @InitializeDisplayAdapters(%struct.TYPE_6__* %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = call i32 @InitializeDirectSoundPage(%struct.TYPE_6__* %118)
  %120 = load i32, i32* @hTabCtrlWnd, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = add nsw i64 %127, 1
  %129 = load i32, i32* @IDS_MUSIC_DIALOG, align 4
  %130 = call i32 @MAKEINTRESOURCEW(i32 %129)
  %131 = call i32 @InsertTabCtrlItem(i32 %120, i64 %128, i32 %130)
  %132 = load i32, i32* @hTabCtrlWnd, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = add nsw i64 %139, 2
  %141 = load i32, i32* @IDS_INPUT_DIALOG, align 4
  %142 = call i32 @MAKEINTRESOURCEW(i32 %141)
  %143 = call i32 @InsertTabCtrlItem(i32 %132, i64 %140, i32 %142)
  %144 = load i32, i32* @hTabCtrlWnd, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = add nsw i64 %151, 3
  %153 = load i32, i32* @IDS_NETWORK_DIALOG, align 4
  %154 = call i32 @MAKEINTRESOURCEW(i32 %153)
  %155 = call i32 @InsertTabCtrlItem(i32 %144, i64 %152, i32 %154)
  %156 = load i32, i32* @hTabCtrlWnd, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  %164 = add nsw i64 %163, 4
  %165 = load i32, i32* @IDS_HELP_DIALOG, align 4
  %166 = call i32 @MAKEINTRESOURCEW(i32 %165)
  %167 = call i32 @InsertTabCtrlItem(i32 %156, i64 %164, i32 %166)
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = call i32 @TabCtrl_OnSelChange(%struct.TYPE_6__* %168)
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i8* @CreateDialogParamW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @EnableDialogTheme(i8*) #1

declare dso_local i32 @InsertTabCtrlItem(i32, i64, i32) #1

declare dso_local i32 @InitializeDisplayAdapters(%struct.TYPE_6__*) #1

declare dso_local i32 @InitializeDirectSoundPage(%struct.TYPE_6__*) #1

declare dso_local i32 @TabCtrl_OnSelChange(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
