; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_settings_page.c_OnCommandSettingsPage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_settings_page.c_OnCommandSettingsPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i32 }

@hApplet = common dso_local global i32 0, align 4
@IDD_ADD = common dso_local global i32 0, align 4
@AddDialogProc = common dso_local global i32 0, align 4
@IDOK = common dso_local global i32 0, align 4
@IDC_KEYLAYOUT_LIST = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i8* null, align 8
@LVNI_SELECTED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDD_INPUT_LANG_PROP = common dso_local global i32 0, align 4
@EditDialogProc = common dso_local global i32 0, align 4
@IDD_KEYSETTINGS = common dso_local global i32 0, align 4
@KeySettingsDialogProc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OnCommandSettingsPage(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @LOWORD(i32 %12)
  switch i32 %13, label %141 [
    i32 132, label %14
    i32 129, label %33
    i32 130, label %64
    i32 128, label %103
    i32 131, label %134
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @hApplet, align 4
  %16 = load i32, i32* @IDD_ADD, align 4
  %17 = call i32 @MAKEINTRESOURCEW(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @AddDialogProc, align 4
  %20 = call i32 @DialogBoxW(i32 %15, i32 %17, i32* %18, i32 %19)
  %21 = load i32, i32* @IDOK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @IDC_KEYLAYOUT_LIST, align 4
  %26 = call i32* @GetDlgItem(i32* %24, i32 %25)
  %27 = call i32 @UpdateInputListView(i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @GetParent(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @PropSheet_Changed(i32 %29, i32* %30)
  br label %32

32:                                               ; preds = %23, %14
  br label %141

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @IDC_KEYLAYOUT_LIST, align 4
  %36 = call i32* @GetDlgItem(i32* %34, i32 %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %40, i8 0, i64 32, i1 false)
  %41 = load i8*, i8** @LVIF_PARAM, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i8* %41, i8** %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @LVNI_SELECTED, align 4
  %45 = call i8* @ListView_GetNextItem(i32* %43, i32 -1, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @ListView_GetItem(i32* %47, %struct.TYPE_3__* %7)
  %49 = load i32, i32* @FALSE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @InputList_Remove(i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @UpdateInputListView(i32* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @GetParent(i32* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @PropSheet_Changed(i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %51, %39
  br label %63

63:                                               ; preds = %62, %33
  br label %141

64:                                               ; preds = %2
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @IDC_KEYLAYOUT_LIST, align 4
  %67 = call i32* @GetDlgItem(i32* %65, i32 %66)
  store i32* %67, i32** %8, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %102

70:                                               ; preds = %64
  %71 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %71, i8 0, i64 32, i1 false)
  %72 = load i8*, i8** @LVIF_PARAM, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @LVNI_SELECTED, align 4
  %76 = call i8* @ListView_GetNextItem(i32* %74, i32 -1, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @ListView_GetItem(i32* %78, %struct.TYPE_3__* %9)
  %80 = load i32, i32* @FALSE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %70
  %83 = load i32, i32* @hApplet, align 4
  %84 = load i32, i32* @IDD_INPUT_LANG_PROP, align 4
  %85 = call i32 @MAKEINTRESOURCEW(i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @EditDialogProc, align 4
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @DialogBoxParamW(i32 %83, i32 %85, i32* %86, i32 %87, i64 %89)
  %91 = load i32, i32* @IDOK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %82
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @UpdateInputListView(i32* %94)
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @GetParent(i32* %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @PropSheet_Changed(i32 %97, i32* %98)
  br label %100

100:                                              ; preds = %93, %82
  br label %101

101:                                              ; preds = %100, %70
  br label %102

102:                                              ; preds = %101, %64
  br label %141

103:                                              ; preds = %2
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* @IDC_KEYLAYOUT_LIST, align 4
  %106 = call i32* @GetDlgItem(i32* %104, i32 %105)
  store i32* %106, i32** %10, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %133

109:                                              ; preds = %103
  %110 = bitcast %struct.TYPE_3__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %110, i8 0, i64 32, i1 false)
  %111 = load i8*, i8** @LVIF_PARAM, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i8* %111, i8** %112, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* @LVNI_SELECTED, align 4
  %115 = call i8* @ListView_GetNextItem(i32* %113, i32 -1, i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i8* %115, i8** %116, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @ListView_GetItem(i32* %117, %struct.TYPE_3__* %11)
  %119 = load i32, i32* @FALSE, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  %125 = call i32 @InputList_SetDefault(i32* %124)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @UpdateInputListView(i32* %126)
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @GetParent(i32* %128)
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @PropSheet_Changed(i32 %129, i32* %130)
  br label %132

132:                                              ; preds = %121, %109
  br label %133

133:                                              ; preds = %132, %103
  br label %141

134:                                              ; preds = %2
  %135 = load i32, i32* @hApplet, align 4
  %136 = load i32, i32* @IDD_KEYSETTINGS, align 4
  %137 = call i32 @MAKEINTRESOURCEW(i32 %136)
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* @KeySettingsDialogProc, align 4
  %140 = call i32 @DialogBoxW(i32 %135, i32 %137, i32* %138, i32 %139)
  br label %141

141:                                              ; preds = %2, %134, %133, %102, %63, %32
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @DialogBoxW(i32, i32, i32*, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @UpdateInputListView(i32*) #1

declare dso_local i32* @GetDlgItem(i32*, i32) #1

declare dso_local i32 @PropSheet_Changed(i32, i32*) #1

declare dso_local i32 @GetParent(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @ListView_GetNextItem(i32*, i32, i32) #1

declare dso_local i32 @ListView_GetItem(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @InputList_Remove(i32*) #1

declare dso_local i32 @DialogBoxParamW(i32, i32, i32*, i32, i64) #1

declare dso_local i32 @InputList_SetDefault(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
