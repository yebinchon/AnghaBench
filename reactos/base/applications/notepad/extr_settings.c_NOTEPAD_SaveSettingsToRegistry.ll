; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_settings.c_NOTEPAD_SaveSettingsToRegistry.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_settings.c_NOTEPAD_SaveSettingsToRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Globals = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@s_szRegistryKey = common dso_local global i32 0, align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"lfCharSet\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"lfClipPrecision\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"lfEscapement\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"lfFaceName\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"lfItalic\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"lfOrientation\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"lfOutPrecision\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"lfPitchAndFamily\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"lfQuality\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"lfStrikeOut\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"lfUnderline\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"lfWeight\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"iPointSize\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"fWrap\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"fStatusBar\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"szHeader\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"szTrailer\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"iMarginLeft\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"iMarginTop\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"iMarginRight\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"iMarginBottom\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"iWindowPosX\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"iWindowPosY\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"iWindowPosDX\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"iWindowPosDY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NOTEPAD_SaveSettingsToRegistry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 7), align 4
  %4 = call i32 @GetWindowRect(i32 %3, %struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0))
  %5 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %6 = load i32, i32* @s_szRegistryKey, align 4
  %7 = load i32, i32* @KEY_SET_VALUE, align 4
  %8 = call i64 @RegCreateKeyEx(i32 %5, i32 %6, i32 0, i32* null, i32 0, i32 %7, i32* null, i32* %1, i32* %2)
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %125

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 0), align 8
  %15 = call i32 @SaveDword(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 1), align 4
  %19 = call i32 @SaveDword(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 2), align 8
  %23 = call i32 @SaveDword(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 12), align 8
  %27 = call i32 @SaveString(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 3), align 4
  %31 = call i32 @SaveDword(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 4), align 8
  %35 = call i32 @SaveDword(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 5), align 4
  %39 = call i32 @SaveDword(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 6), align 8
  %43 = call i32 @SaveDword(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 7), align 4
  %47 = call i32 @SaveDword(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 8), align 8
  %51 = call i32 @SaveDword(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 9), align 4
  %55 = call i32 @SaveDword(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 10), align 8
  %59 = call i32 @SaveDword(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 6, i32 11), align 4
  %63 = call i32 @PointSizeFromHeight(i32 %62)
  %64 = call i32 @SaveDword(i32 %60, i32 %61, i32 %63)
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 5), align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = call i32 @SaveDword(i32 %65, i32 %66, i32 %70)
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 4), align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = call i32 @SaveDword(i32 %72, i32 %73, i32 %77)
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 3), align 4
  %82 = call i32 @SaveString(i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 2), align 8
  %86 = call i32 @SaveString(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1, i32 0), align 8
  %90 = call i32 @SaveDword(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1, i32 1), align 4
  %94 = call i32 @SaveDword(i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %1, align 4
  %96 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1, i32 2), align 8
  %98 = call i32 @SaveDword(i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %1, align 4
  %100 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1, i32 3), align 4
  %102 = call i32 @SaveDword(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %1, align 4
  %104 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0, i32 0), align 8
  %106 = call i32 @SaveDword(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %1, align 4
  %108 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0, i32 1), align 4
  %110 = call i32 @SaveDword(i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %1, align 4
  %112 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0, i32 2), align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0, i32 0), align 8
  %115 = sub nsw i32 %113, %114
  %116 = call i32 @SaveDword(i32 %111, i32 %112, i32 %115)
  %117 = load i32, i32* %1, align 4
  %118 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0, i32 3), align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0, i32 1), align 4
  %121 = sub nsw i32 %119, %120
  %122 = call i32 @SaveDword(i32 %117, i32 %118, i32 %121)
  %123 = load i32, i32* %1, align 4
  %124 = call i32 @RegCloseKey(i32 %123)
  br label %125

125:                                              ; preds = %11, %0
  ret void
}

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @RegCreateKeyEx(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SaveDword(i32, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @SaveString(i32, i32, i32) #1

declare dso_local i32 @PointSizeFromHeight(i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
