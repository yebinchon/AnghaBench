; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_logon.c_OnApply.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_logon.c_OnApply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SERVICE_NO_CHANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@IDC_LOGON_SYSTEMACCOUNT = common dso_local global i32 0, align 4
@BM_GETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i32] [i32 76, i32 111, i32 99, i32 97, i32 108, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@IDC_LOGON_INTERACTIVE = common dso_local global i32 0, align 4
@SERVICE_INTERACTIVE_PROCESS = common dso_local global i32 0, align 4
@IDC_LOGON_ACCOUNTNAME = common dso_local global i32 0, align 4
@IDC_LOGON_PASSWORD1 = common dso_local global i32 0, align 4
@IDC_LOGON_PASSWORD2 = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@IDS_APPNAME = common dso_local global i32 0, align 4
@IDS_NOT_SAME_PASSWORD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@DEFAULT_PASSWORD = common dso_local global i32* null, align 8
@IDS_INVALID_PASSWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_7__*)* @OnApply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OnApply(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [64 x i32], align 16
  %7 = alloca [64 x i32], align 16
  %8 = alloca [64 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load i32, i32* @SERVICE_NO_CHANGE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* @TRUE, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %3, align 8
  br label %121

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IDC_LOGON_SYSTEMACCOUNT, align 4
  %22 = load i32, i32* @BM_GETCHECK, align 4
  %23 = call i64 @SendDlgItemMessageW(i32 %20, i32 %21, i32 %22, i32 0, i32 0)
  %24 = load i64, i64* @BST_CHECKED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %19
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %28 = call i32 @wcscpy(i32* %27, i8* bitcast ([12 x i32]* @.str to i8*))
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %30 = call i32 @wcscpy(i32* %29, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %32 = call i32 @wcscpy(i32* %31, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IDC_LOGON_INTERACTIVE, align 4
  %40 = load i32, i32* @BM_GETCHECK, align 4
  %41 = call i64 @SendDlgItemMessageW(i32 %38, i32 %39, i32 %40, i32 0, i32 0)
  %42 = load i64, i64* @BST_CHECKED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %26
  %45 = load i32, i32* @SERVICE_INTERACTIVE_PROCESS, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %53

48:                                               ; preds = %26
  %49 = load i32, i32* @SERVICE_INTERACTIVE_PROCESS, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %48, %44
  br label %97

54:                                               ; preds = %19
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IDC_LOGON_ACCOUNTNAME, align 4
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %58 = call i32 @GetDlgItemText(i32 %55, i32 %56, i32* %57, i32 64)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @IDC_LOGON_PASSWORD1, align 4
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %62 = call i32 @GetDlgItemText(i32 %59, i32 %60, i32* %61, i32 64)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @IDC_LOGON_PASSWORD2, align 4
  %65 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %66 = call i32 @GetDlgItemText(i32 %63, i32 %64, i32* %65, i32 64)
  %67 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %69 = call i64 @wcscmp(i32* %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %54
  %72 = call i32 @GetModuleHandle(i32* null)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @MB_OK, align 4
  %75 = load i32, i32* @MB_ICONWARNING, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @IDS_APPNAME, align 4
  %78 = load i32, i32* @IDS_NOT_SAME_PASSWORD, align 4
  %79 = call i32 @ResourceMessageBox(i32 %72, i32 %73, i32 %76, i32 %77, i32 %78)
  %80 = load i64, i64* @FALSE, align 8
  store i64 %80, i64* %3, align 8
  br label %121

81:                                               ; preds = %54
  %82 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %83 = load i32*, i32** @DEFAULT_PASSWORD, align 8
  %84 = call i64 @wcscmp(i32* %82, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = call i32 @GetModuleHandle(i32* null)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @MB_OK, align 4
  %90 = load i32, i32* @MB_ICONWARNING, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @IDS_APPNAME, align 4
  %93 = load i32, i32* @IDS_INVALID_PASSWORD, align 4
  %94 = call i32 @ResourceMessageBox(i32 %87, i32 %88, i32 %91, i32 %92, i32 %93)
  %95 = load i64, i64* @FALSE, align 8
  store i64 %95, i64* %3, align 8
  br label %121

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96, %53
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %105 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %106 = call i64 @SetServiceAccount(i32 %102, i32 %103, i32* %104, i32* %105)
  store i64 %106, i64* %10, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @FALSE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %97
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @TRUE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i64, i64* @FALSE, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i64, i64* %10, align 8
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %119, %86, %71, %17
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wcscpy(i32*, i8*) #1

declare dso_local i32 @GetDlgItemText(i32, i32, i32*, i32) #1

declare dso_local i64 @wcscmp(i32*, i32*) #1

declare dso_local i32 @ResourceMessageBox(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetModuleHandle(i32*) #1

declare dso_local i64 @SetServiceAccount(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
