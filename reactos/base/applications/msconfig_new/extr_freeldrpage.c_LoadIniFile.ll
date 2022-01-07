; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig_new/extr_freeldrpage.c_LoadIniFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig_new/extr_freeldrpage.c_LoadIniFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [3 x i32] [i32 114, i32 116, i32 0], align 4
@_SH_DENYWR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_LIST_BOX = common dso_local global i32 0, align 4
@WM_GETFONT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 116, i32 105, i32 109, i32 101, i32 111, i32 117, i32 116, i32 61, i32 0], align 4
@Settings = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i32] [i32 100, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 61, i32 0], align 4
@LB_ERR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@IDC_TXT_BOOT_TIMEOUT = common dso_local global i32 0, align 4
@IDC_BTN_SET_DEFAULT_BOOT = common dso_local global i32 0, align 4
@IDC_BTN_MOVE_UP_BOOT_OPTION = common dso_local global i32 0, align 4
@IDC_BTN_MOVE_DOWN_BOOT_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @LoadIniFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadIniFile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [512 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ExpandEnvironmentStringsW(i32 %18, i32* null, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i64 @MemAlloc(i32 0, i32 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ExpandEnvironmentStringsW(i32 %26, i32* %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @_SH_DENYWR, align 4
  %32 = call i32* @_wfsopen(i32* %30, i8* bitcast ([3 x i32]* @.str to i8*), i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @MemFree(i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %173

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @IDC_LIST_BOX, align 4
  %42 = call i32 @GetDlgItem(i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @GetDC(i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @WM_GETFONT, align 4
  %47 = call i64 @SendMessageW(i32 %45, i32 %46, i32 0, i32 0)
  store i64 %47, i64* %16, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i64, i64* %16, align 8
  %50 = call i64 @SelectObject(i32 %48, i64 %49)
  store i64 %50, i64* %17, align 8
  br label %51

51:                                               ; preds = %125, %110, %103, %98, %39
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @feof(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %57 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %58 = call i32 @ARRAYSIZE(i32* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i64 @fgetws(i32* %56, i32 %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %55, %51
  %63 = phi i1 [ false, %51 ], [ %61, %55 ]
  br i1 %63, label %64, label %126

64:                                               ; preds = %62
  %65 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %66 = call i32 @wcslen(i32* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %125

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 %71
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 %75
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %79 = call i64 @ListBox_AddString(i32 %77, i32* %78)
  store i64 %79, i64* %12, align 8
  %80 = load i32, i32* %15, align 4
  %81 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %82 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %83 = call i32 @wcslen(i32* %82)
  %84 = call i32 @GetTextExtentPoint32W(i32 %80, i32* %81, i32 %83, %struct.TYPE_4__* %13)
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @ListBox_GetHorizontalExtent(i32 %85)
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 5
  %91 = call i32 @max(i32 %87, i64 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @ListBox_SetHorizontalExtent(i32 %92, i32 %93)
  %95 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = icmp eq i32 %96, 91
  br i1 %97, label %98, label %99

98:                                               ; preds = %69
  br label %51

99:                                               ; preds = %69
  %100 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %101 = call i32 @_wcsnicmp(i32* %100, i8* bitcast ([9 x i32]* @.str.1 to i8*), i32 8)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 8
  %105 = call i32 @_wtoi(i32* %104)
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Settings, i32 0, i32 1), align 4
  br label %51

106:                                              ; preds = %99
  %107 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %108 = call i32 @_wcsnicmp(i32* %107, i8* bitcast ([9 x i32]* @.str.2 to i8*), i32 8)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Settings, i32 0, i32 3), align 8
  %112 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 8
  %113 = call i32 @wcscpy(i32 %111, i32* %112)
  br label %51

114:                                              ; preds = %106
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* @LB_ERR, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* %10, align 4
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @ListBox_SetItemData(i32 %119, i64 %120, i32 1)
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Settings, i32 0, i32 0), align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Settings, i32 0, i32 0), align 8
  br label %125

125:                                              ; preds = %122, %64
  br label %51

126:                                              ; preds = %62
  %127 = load i32, i32* %15, align 4
  %128 = load i64, i64* %17, align 8
  %129 = call i64 @SelectObject(i32 %127, i64 %128)
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @ReleaseDC(i32 %130, i32 %131)
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @fclose(i32* %133)
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Settings, i32 0, i32 4), align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Settings, i32 0, i32 3), align 8
  %138 = call i64 @ListBox_FindString(i32 %136, i32 3, i32 %137)
  store i64 %138, i64* %12, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* @LB_ERR, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %126
  %143 = load i64, i64* %12, align 8
  store i64 %143, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Settings, i32 0, i32 2), align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @ListBox_SetCurSel(i32 %144, i64 %145)
  br label %147

147:                                              ; preds = %142, %126
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @IDC_TXT_BOOT_TIMEOUT, align 4
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Settings, i32 0, i32 1), align 4
  %151 = load i32, i32* @FALSE, align 4
  %152 = call i32 @SetDlgItemInt(i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Settings, i32 0, i32 0), align 8
  %154 = icmp slt i32 %153, 2
  br i1 %154, label %155, label %171

155:                                              ; preds = %147
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @IDC_BTN_SET_DEFAULT_BOOT, align 4
  %158 = call i32 @GetDlgItem(i32 %156, i32 %157)
  %159 = load i32, i32* @FALSE, align 4
  %160 = call i32 @EnableWindow(i32 %158, i32 %159)
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @IDC_BTN_MOVE_UP_BOOT_OPTION, align 4
  %163 = call i32 @GetDlgItem(i32 %161, i32 %162)
  %164 = load i32, i32* @FALSE, align 4
  %165 = call i32 @EnableWindow(i32 %163, i32 %164)
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @IDC_BTN_MOVE_DOWN_BOOT_OPTION, align 4
  %168 = call i32 @GetDlgItem(i32 %166, i32 %167)
  %169 = load i32, i32* @FALSE, align 4
  %170 = call i32 @EnableWindow(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %155, %147
  %172 = load i32, i32* @TRUE, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %37
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @ExpandEnvironmentStringsW(i32, i32*, i32) #1

declare dso_local i64 @MemAlloc(i32, i32) #1

declare dso_local i32* @_wfsopen(i32*, i8*, i32) #1

declare dso_local i32 @MemFree(i32*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @fgetws(i32*, i32, i32*) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i64 @ListBox_AddString(i32, i32*) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i64 @ListBox_GetHorizontalExtent(i32) #1

declare dso_local i32 @ListBox_SetHorizontalExtent(i32, i32) #1

declare dso_local i32 @_wcsnicmp(i32*, i8*, i32) #1

declare dso_local i32 @_wtoi(i32*) #1

declare dso_local i32 @wcscpy(i32, i32*) #1

declare dso_local i32 @ListBox_SetItemData(i32, i64, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ListBox_FindString(i32, i32, i32) #1

declare dso_local i32 @ListBox_SetCurSel(i32, i64) #1

declare dso_local i32 @SetDlgItemInt(i32, i32, i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
