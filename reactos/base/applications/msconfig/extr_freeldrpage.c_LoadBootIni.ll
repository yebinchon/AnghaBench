; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_freeldrpage.c_LoadBootIni.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_freeldrpage.c_LoadBootIni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 102, i32 114, i32 101, i32 101, i32 108, i32 100, i32 114, i32 46, i32 105, i32 110, i32 105, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 114, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [9 x i32] [i32 98, i32 111, i32 111, i32 116, i32 46, i32 105, i32 110, i32 105, i32 0], align 4
@IDC_LIST_BOX = common dso_local global i32 0, align 4
@LB_ADDSTRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 116, i32 105, i32 109, i32 101, i32 111, i32 117, i32 116, i32 61, i32 0], align 4
@Settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [9 x i32] [i32 100, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 61, i32 0], align 4
@LB_ERR = common dso_local global i64 0, align 8
@LB_SETITEMDATA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LB_FINDSTRING = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@IDC_TXT_BOOT_TIMEOUT = common dso_local global i32 0, align 4
@IDC_BTN_SET_DEFAULT_BOOT = common dso_local global i32 0, align 4
@IDC_BTN_MOVE_UP_BOOT_OPTION = common dso_local global i32 0, align 4
@IDC_BTN_MOVE_DOWN_BOOT_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @LoadBootIni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadBootIni(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @BUFFER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = mul nuw i64 4, %15
  %19 = trunc i64 %18 to i32
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @StringCbCopyW(i32* %17, i32 %19, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %171

27:                                               ; preds = %2
  %28 = mul nuw i64 4, %15
  %29 = trunc i64 %28 to i32
  %30 = call i32 @StringCbCatW(i32* %17, i32 %29, i8* bitcast ([12 x i32]* @.str to i8*))
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %171

36:                                               ; preds = %27
  %37 = call i32* @_wfopen(i32* %17, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %36
  %41 = mul nuw i64 4, %15
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @StringCbCopyW(i32* %17, i32 %42, i32* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %171

50:                                               ; preds = %40
  %51 = mul nuw i64 4, %15
  %52 = trunc i64 %51 to i32
  %53 = call i32 @StringCbCatW(i32* %17, i32 %52, i8* bitcast ([9 x i32]* @.str.2 to i8*))
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %171

59:                                               ; preds = %50
  %60 = call i32* @_wfopen(i32* %17, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %171

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %36
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @IDC_LIST_BOX, align 4
  %69 = call i32 @GetDlgItem(i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %126, %109, %103, %99, %66
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @feof(i32* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %127

75:                                               ; preds = %70
  %76 = load i32, i32* @BUFFER_SIZE, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = call i64 @fgetws(i32* %17, i32 %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %126

80:                                               ; preds = %75
  %81 = call i32 @wcslen(i32* %17)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %125

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %17, i64 %86
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %17, i64 %90
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @LB_ADDSTRING, align 4
  %94 = ptrtoint i32* %17 to i32
  %95 = call i64 @SendMessageW(i32 %92, i32 %93, i32 0, i32 %94)
  store i64 %95, i64* %11, align 8
  %96 = getelementptr inbounds i32, i32* %17, i64 0
  %97 = load i32, i32* %96, align 16
  %98 = icmp eq i32 %97, 91
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %70

100:                                              ; preds = %84
  %101 = call i32 @_wcsnicmp(i32* %17, i8* bitcast ([9 x i32]* @.str.3 to i8*), i32 8)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds i32, i32* %17, i64 8
  %105 = call i32 @_wtoi(i32* %104)
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 1), align 4
  br label %70

106:                                              ; preds = %100
  %107 = call i32 @_wcsnicmp(i32* %17, i8* bitcast ([9 x i32]* @.str.4 to i8*), i32 8)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 3), align 8
  %111 = getelementptr inbounds i32, i32* %17, i64 8
  %112 = call i32 @wcscpy(i64 %110, i32* %111)
  br label %70

113:                                              ; preds = %106
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* @LB_ERR, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @LB_SETITEMDATA, align 4
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @SendMessage(i32 %118, i32 %119, i64 %120, i32 1)
  br label %122

122:                                              ; preds = %117, %113
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 0), align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 0), align 8
  br label %125

125:                                              ; preds = %122, %80
  br label %126

126:                                              ; preds = %125, %75
  br label %70

127:                                              ; preds = %70
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @fclose(i32* %128)
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 4), align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @LB_FINDSTRING, align 4
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 3), align 8
  %134 = trunc i64 %133 to i32
  %135 = call i64 @SendMessageW(i32 %131, i32 %132, i32 3, i32 %134)
  store i64 %135, i64* %11, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* @LB_ERR, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %127
  %140 = load i64, i64* %11, align 8
  store i64 %140, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 2), align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @LB_SETCURSEL, align 4
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @SendMessage(i32 %141, i32 %142, i64 %143, i32 0)
  br label %145

145:                                              ; preds = %139, %127
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @IDC_TXT_BOOT_TIMEOUT, align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 1), align 4
  %149 = load i32, i32* @FALSE, align 4
  %150 = call i32 @SetDlgItemInt(i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 0), align 8
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %153, label %169

153:                                              ; preds = %145
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @IDC_BTN_SET_DEFAULT_BOOT, align 4
  %156 = call i32 @GetDlgItem(i32 %154, i32 %155)
  %157 = load i32, i32* @FALSE, align 4
  %158 = call i32 @EnableWindow(i32 %156, i32 %157)
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @IDC_BTN_MOVE_UP_BOOT_OPTION, align 4
  %161 = call i32 @GetDlgItem(i32 %159, i32 %160)
  %162 = load i32, i32* @FALSE, align 4
  %163 = call i32 @EnableWindow(i32 %161, i32 %162)
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @IDC_BTN_MOVE_DOWN_BOOT_OPTION, align 4
  %166 = call i32 @GetDlgItem(i32 %164, i32 %165)
  %167 = load i32, i32* @FALSE, align 4
  %168 = call i32 @EnableWindow(i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %153, %145
  %170 = load i32, i32* @TRUE, align 4
  store i32 %170, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %171

171:                                              ; preds = %169, %63, %57, %48, %34, %25
  %172 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StringCbCopyW(i32*, i32, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @StringCbCatW(i32*, i32, i8*) #2

declare dso_local i32* @_wfopen(i32*, i8*) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i64 @fgetws(i32*, i32, i32*) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #2

declare dso_local i32 @_wcsnicmp(i32*, i8*, i32) #2

declare dso_local i32 @_wtoi(i32*) #2

declare dso_local i32 @wcscpy(i64, i32*) #2

declare dso_local i32 @SendMessage(i32, i32, i64, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @SetDlgItemInt(i32, i32, i32, i32) #2

declare dso_local i32 @EnableWindow(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
