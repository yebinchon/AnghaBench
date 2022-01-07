; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_background.c_OnColorButton.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_background.c_OnColorButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32*, i64, i64, i32*, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Control Panel\\Appearance\00", align 1
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"CustomColors\00", align 1
@g_GlobalData = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@CC_ANYCOLOR = common dso_local global i32 0, align 4
@CC_FULLOPEN = common dso_local global i32 0, align 4
@CC_RGBINIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_BACKGROUND_PREVIEW = common dso_local global i32 0, align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @OnColorButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnColorButton(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %13 = call i32 @TEXT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %15 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %16 = call i64 @RegCreateKeyEx(i32 %12, i32 %13, i32 0, i32* null, i32 %14, i32 %15, i32* null, i32** %6, i32* null)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32, i32* @REG_BINARY, align 4
  store i32 %21, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @TEXT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @RegQueryValueEx(i32* %22, i32 %23, i32* null, i32* %9, i32 %27, i32* %10)
  store i64 %28, i64* %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @RegCloseKey(i32* %29)
  store i32* null, i32** %6, align 8
  br label %31

31:                                               ; preds = %20, %2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 64, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 8
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_GlobalData, i32 0, i32 0), align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @CC_ANYCOLOR, align 4
  %43 = load i32, i32* @CC_FULLOPEN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CC_RGBINIT, align 4
  %46 = or i32 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = call i64 @ChooseColor(%struct.TYPE_7__* %8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_GlobalData, i32 0, i32 0), align 4
  %56 = load i32, i32* @TRUE, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @GetParent(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @PropSheet_Changed(i32 %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @IDC_BACKGROUND_PREVIEW, align 4
  %65 = call i32 @GetDlgItem(i32 %63, i32 %64)
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i32 @InvalidateRect(i32 %65, i32* null, i32 %66)
  %68 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %69 = call i32 @TEXT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @KEY_SET_VALUE, align 4
  %71 = call i64 @RegOpenKeyEx(i32 %68, i32 %69, i32 0, i32 %70, i32** %6)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %53
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @TEXT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @REG_BINARY, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @RegSetValueEx(i32* %76, i32 %77, i32 0, i32 %78, i32 %82, i32 8)
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @RegCloseKey(i32* %84)
  store i32* null, i32** %6, align 8
  br label %86

86:                                               ; preds = %75, %53
  br label %87

87:                                               ; preds = %86, %31
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @RegCreateKeyEx(i32, i32, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i64 @RegQueryValueEx(i32*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i64 @ChooseColor(%struct.TYPE_7__*) #1

declare dso_local i32 @PropSheet_Changed(i32, i32) #1

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32**) #1

declare dso_local i32 @RegSetValueEx(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
