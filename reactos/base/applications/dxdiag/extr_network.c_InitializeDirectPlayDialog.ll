; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_network.c_InitializeDirectPlayDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_network.c_InitializeDirectPlayDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i32] [i32 83, i32 79, i32 70, i32 84, i32 87, i32 65, i32 82, i32 69, i32 92, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 92, i32 68, i32 105, i32 114, i32 101, i32 99, i32 116, i32 80, i32 108, i32 97, i32 121, i32 56, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 115, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@IDC_LIST_PROVIDER = common dso_local global i32 0, align 4
@LVM_SETEXTENDEDLISTVIEWSTYLE = common dso_local global i32 0, align 4
@LVS_EX_FULLROWSELECT = common dso_local global i32 0, align 4
@DirectPlay8SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i32] [i32 83, i32 79, i32 70, i32 84, i32 87, i32 65, i32 82, i32 69, i32 92, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 92, i32 68, i32 105, i32 114, i32 101, i32 99, i32 116, i32 80, i32 108, i32 97, i32 121, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 115, i32 0], align 4
@DirectPlaySP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @InitializeDirectPlayDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitializeDirectPlayDialog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %7 = load i32, i32* @KEY_READ, align 4
  %8 = call i64 @RegOpenKeyExW(i32 %6, i8* bitcast ([49 x i32]* @.str to i8*), i32 0, i32 %7, i32* %3)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @IDC_LIST_PROVIDER, align 4
  %16 = call i32 @GetDlgItem(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @LVM_SETEXTENDEDLISTVIEWSTYLE, align 4
  %19 = load i32, i32* @LVS_EX_FULLROWSELECT, align 4
  %20 = call i32 @SendMessage(i32 %17, i32 %18, i32 0, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @InitListViewColumns(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DirectPlay8SP, align 4
  %26 = call i64 @EnumerateServiceProviders(i32 %23, i32 %24, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @RegCloseKey(i32 %27)
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %13
  br label %47

32:                                               ; preds = %13
  %33 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %34 = load i32, i32* @KEY_READ, align 4
  %35 = call i64 @RegOpenKeyExW(i32 %33, i8* bitcast ([48 x i32]* @.str.1 to i8*), i32 0, i32 %34, i32* %3)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %47

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @DirectPlaySP, align 4
  %44 = call i64 @EnumerateServiceProviders(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @RegCloseKey(i32 %45)
  br label %47

47:                                               ; preds = %40, %39, %31, %12
  ret void
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @InitListViewColumns(i32) #1

declare dso_local i64 @EnumerateServiceProviders(i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
