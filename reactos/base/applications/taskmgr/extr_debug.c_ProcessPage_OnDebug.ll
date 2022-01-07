; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_debug.c_ProcessPage_OnDebug.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_debug.c_ProcessPage_OnDebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@hInst = common dso_local global i32 0, align 4
@IDS_MSG_WARNINGDEBUG = common dso_local global i32 0, align 4
@IDS_MSG_TASKMGRWARNING = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@MB_YESNO = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@IDYES = common dso_local global i64 0, align 8
@IDS_MSG_UNABLEDEBUGPROCESS = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONSTOP = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i32] [i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 92, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 78, i32 84, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 92, i32 65, i32 101, i32 68, i32 101, i32 98, i32 117, i32 103, i32 0], align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i32] [i32 68, i32 101, i32 98, i32 117, i32 103, i32 103, i32 101, i32 114, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessPage_OnDebug() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [260 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca [260 x i32], align 16
  %5 = alloca [260 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i32], align 16
  %11 = alloca [256 x i32], align 16
  %12 = call i64 (...) @GetSelectedProcessId()
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %174

16:                                               ; preds = %0
  %17 = load i32, i32* @hInst, align 4
  %18 = load i32, i32* @IDS_MSG_WARNINGDEBUG, align 4
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %21 = call i32 @ARRAYSIZE(i32* %20)
  %22 = call i32 @LoadStringW(i32 %17, i32 %18, i32* %19, i32 %21)
  %23 = load i32, i32* @hInst, align 4
  %24 = load i32, i32* @IDS_MSG_TASKMGRWARNING, align 4
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %27 = call i32 @ARRAYSIZE(i32* %26)
  %28 = call i32 @LoadStringW(i32 %23, i32 %24, i32* %25, i32 %27)
  %29 = load i32, i32* @hMainWnd, align 4
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %32 = load i32, i32* @MB_YESNO, align 4
  %33 = load i32, i32* @MB_ICONWARNING, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @MessageBoxW(i32 %29, i32* %30, i32* %31, i32 %34)
  %36 = load i64, i64* @IDYES, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %16
  %39 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %40 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %41 = call i32 @ARRAYSIZE(i32* %40)
  %42 = call i32 @GetLastErrorText(i32* %39, i32 %41)
  %43 = load i32, i32* @hInst, align 4
  %44 = load i32, i32* @IDS_MSG_UNABLEDEBUGPROCESS, align 4
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %47 = call i32 @ARRAYSIZE(i32* %46)
  %48 = call i32 @LoadStringW(i32 %43, i32 %44, i32* %45, i32 %47)
  %49 = load i32, i32* @hMainWnd, align 4
  %50 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %51 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %52 = load i32, i32* @MB_OK, align 4
  %53 = load i32, i32* @MB_ICONSTOP, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @MessageBoxW(i32 %49, i32* %50, i32* %51, i32 %54)
  br label %174

56:                                               ; preds = %16
  %57 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %58 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %59 = call i64 @RegOpenKeyExW(i32 %57, i8* bitcast ([53 x i32]* @.str to i8*), i32 0, i32 %58, i32* %3)
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %64 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %65 = call i32 @ARRAYSIZE(i32* %64)
  %66 = call i32 @GetLastErrorText(i32* %63, i32 %65)
  %67 = load i32, i32* @hInst, align 4
  %68 = load i32, i32* @IDS_MSG_UNABLEDEBUGPROCESS, align 4
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %70 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %71 = call i32 @ARRAYSIZE(i32* %70)
  %72 = call i32 @LoadStringW(i32 %67, i32 %68, i32* %69, i32 %71)
  %73 = load i32, i32* @hMainWnd, align 4
  %74 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %76 = load i32, i32* @MB_OK, align 4
  %77 = load i32, i32* @MB_ICONSTOP, align 4
  %78 = or i32 %76, %77
  %79 = call i64 @MessageBoxW(i32 %73, i32* %74, i32* %75, i32 %78)
  br label %174

80:                                               ; preds = %56
  store i64 1040, i64* %6, align 8
  %81 = load i32, i32* %3, align 4
  %82 = getelementptr inbounds [260 x i32], [260 x i32]* %5, i64 0, i64 0
  %83 = ptrtoint i32* %82 to i32
  %84 = call i64 @RegQueryValueExW(i32 %81, i8* bitcast ([9 x i32]* @.str.1 to i8*), i32* null, i32* null, i32 %83, i64* %6)
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %80
  %88 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %89 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %90 = call i32 @ARRAYSIZE(i32* %89)
  %91 = call i32 @GetLastErrorText(i32* %88, i32 %90)
  %92 = load i32, i32* @hInst, align 4
  %93 = load i32, i32* @IDS_MSG_UNABLEDEBUGPROCESS, align 4
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %96 = call i32 @ARRAYSIZE(i32* %95)
  %97 = call i32 @LoadStringW(i32 %92, i32 %93, i32* %94, i32 %96)
  %98 = load i32, i32* @hMainWnd, align 4
  %99 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %101 = load i32, i32* @MB_OK, align 4
  %102 = load i32, i32* @MB_ICONSTOP, align 4
  %103 = or i32 %101, %102
  %104 = call i64 @MessageBoxW(i32 %98, i32* %99, i32* %100, i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @RegCloseKey(i32 %105)
  br label %174

107:                                              ; preds = %80
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @RegCloseKey(i32 %108)
  %110 = load i32, i32* @FALSE, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = call i32 @CreateEventW(i32* null, i32 %110, i32 %111, i32* null)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %117 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %118 = call i32 @ARRAYSIZE(i32* %117)
  %119 = call i32 @GetLastErrorText(i32* %116, i32 %118)
  %120 = load i32, i32* @hInst, align 4
  %121 = load i32, i32* @IDS_MSG_UNABLEDEBUGPROCESS, align 4
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %123 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %124 = call i32 @ARRAYSIZE(i32* %123)
  %125 = call i32 @LoadStringW(i32 %120, i32 %121, i32* %122, i32 %124)
  %126 = load i32, i32* @hMainWnd, align 4
  %127 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %128 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %129 = load i32, i32* @MB_OK, align 4
  %130 = load i32, i32* @MB_ICONSTOP, align 4
  %131 = or i32 %129, %130
  %132 = call i64 @MessageBoxW(i32 %126, i32* %127, i32* %128, i32 %131)
  br label %174

133:                                              ; preds = %107
  %134 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %135 = getelementptr inbounds [260 x i32], [260 x i32]* %5, i64 0, i64 0
  %136 = load i64, i64* %1, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @wsprintfW(i32* %134, i32* %135, i64 %136, i32 %137)
  %139 = call i32 @ZeroMemory(%struct.TYPE_6__* %7, i32 12)
  %140 = call i32 @ZeroMemory(%struct.TYPE_6__* %8, i32 12)
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 12, i32* %141, align 4
  %142 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %143 = load i32, i32* @FALSE, align 4
  %144 = call i32 @CreateProcessW(i32* null, i32* %142, i32* null, i32* null, i32 %143, i32 0, i32* null, i32* null, %struct.TYPE_6__* %8, %struct.TYPE_6__* %7)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %133
  %147 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %148 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %149 = call i32 @ARRAYSIZE(i32* %148)
  %150 = call i32 @GetLastErrorText(i32* %147, i32 %149)
  %151 = load i32, i32* @hInst, align 4
  %152 = load i32, i32* @IDS_MSG_UNABLEDEBUGPROCESS, align 4
  %153 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %154 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %155 = call i32 @ARRAYSIZE(i32* %154)
  %156 = call i32 @LoadStringW(i32 %151, i32 %152, i32* %153, i32 %155)
  %157 = load i32, i32* @hMainWnd, align 4
  %158 = getelementptr inbounds [260 x i32], [260 x i32]* %2, i64 0, i64 0
  %159 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %160 = load i32, i32* @MB_OK, align 4
  %161 = load i32, i32* @MB_ICONSTOP, align 4
  %162 = or i32 %160, %161
  %163 = call i64 @MessageBoxW(i32 %157, i32* %158, i32* %159, i32 %162)
  br label %171

164:                                              ; preds = %133
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @CloseHandle(i32 %166)
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @CloseHandle(i32 %169)
  br label %171

171:                                              ; preds = %164, %146
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @CloseHandle(i32 %172)
  br label %174

174:                                              ; preds = %171, %115, %87, %62, %38, %15
  ret void
}

declare dso_local i64 @GetSelectedProcessId(...) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i64 @MessageBoxW(i32, i32*, i32*, i32) #1

declare dso_local i32 @GetLastErrorText(i32*, i32) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32 @wsprintfW(i32*, i32*, i64, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @CreateProcessW(i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
