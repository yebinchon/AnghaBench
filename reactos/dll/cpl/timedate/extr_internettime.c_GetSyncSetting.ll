; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_internettime.c_GetSyncSetting.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_internettime.c_GetSyncSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 87, i32 51, i32 50, i32 84, i32 105, i32 109, i32 101, i32 92, i32 80, i32 97, i32 114, i32 97, i32 109, i32 101, i32 116, i32 101, i32 114, i32 115, i32 0], align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i32] [i32 84, i32 121, i32 112, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 78, i32 84, i32 80, i32 0], align 4
@IDC_AUTOSYNC = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@BST_UNCHECKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GetSyncSetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetSyncSetting(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %8 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %9 = call i64 @RegOpenKeyExW(i32 %7, i8* bitcast ([53 x i32]* @.str to i8*), i32 0, i32 %8, i32* %4)
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  store i32 32, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %15 = ptrtoint i32* %14 to i32
  %16 = call i64 @RegQueryValueExW(i32 %13, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32* null, i32* null, i32 %15, i32* %6)
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %12
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %21 = call i64 @wcscmp(i32* %20, i8* bitcast ([4 x i32]* @.str.2 to i8*))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @IDC_AUTOSYNC, align 4
  %26 = load i32, i32* @BM_SETCHECK, align 4
  %27 = load i32, i32* @BST_CHECKED, align 4
  %28 = call i32 @SendDlgItemMessageW(i32 %24, i32 %25, i32 %26, i32 %27, i32 0)
  br label %35

29:                                               ; preds = %19
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @IDC_AUTOSYNC, align 4
  %32 = load i32, i32* @BM_SETCHECK, align 4
  %33 = load i32, i32* @BST_UNCHECKED, align 4
  %34 = call i32 @SendDlgItemMessageW(i32 %30, i32 %31, i32 %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %29, %23
  br label %36

36:                                               ; preds = %35, %12
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @RegCloseKey(i32 %37)
  br label %39

39:                                               ; preds = %36, %1
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @wcscmp(i32*, i8*) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
