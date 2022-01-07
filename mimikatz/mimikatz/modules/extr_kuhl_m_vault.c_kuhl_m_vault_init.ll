; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_vault.c_kuhl_m_vault_init.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_vault.c_kuhl_m_vault_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i32] [i32 118, i32 97, i32 117, i32 108, i32 116, i32 99, i32 108, i32 105, i32 0], align 4
@hVaultCli = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"VaultEnumerateItemTypes\00", align 1
@VaultEnumerateItemTypes = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"VaultEnumerateVaults\00", align 1
@VaultEnumerateVaults = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"VaultOpenVault\00", align 1
@VaultOpenVault = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"VaultGetInformation\00", align 1
@VaultGetInformation = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"VaultEnumerateItems\00", align 1
@VaultEnumerateItems = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"VaultCloseVault\00", align 1
@VaultCloseVault = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"VaultFree\00", align 1
@VaultFree = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"VaultGetItem\00", align 1
@VaultGetItem7 = common dso_local global i64 0, align 8
@VaultGetItem8 = common dso_local global i64 0, align 8
@isVaultInit = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_vault_init() #0 {
  %1 = call i32 @LoadLibrary(i8* bitcast ([9 x i32]* @.str to i8*))
  store i32 %1, i32* @hVaultCli, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %47

3:                                                ; preds = %0
  %4 = load i32, i32* @hVaultCli, align 4
  %5 = call i64 @GetProcAddress(i32 %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i64 %5, i64* @VaultEnumerateItemTypes, align 8
  %6 = load i32, i32* @hVaultCli, align 4
  %7 = call i64 @GetProcAddress(i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i64 %7, i64* @VaultEnumerateVaults, align 8
  %8 = load i32, i32* @hVaultCli, align 4
  %9 = call i64 @GetProcAddress(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i64 %9, i64* @VaultOpenVault, align 8
  %10 = load i32, i32* @hVaultCli, align 4
  %11 = call i64 @GetProcAddress(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i64 %11, i64* @VaultGetInformation, align 8
  %12 = load i32, i32* @hVaultCli, align 4
  %13 = call i64 @GetProcAddress(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i64 %13, i64* @VaultEnumerateItems, align 8
  %14 = load i32, i32* @hVaultCli, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i64 %15, i64* @VaultCloseVault, align 8
  %16 = load i32, i32* @hVaultCli, align 4
  %17 = call i64 @GetProcAddress(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i64 %17, i64* @VaultFree, align 8
  %18 = load i32, i32* @hVaultCli, align 4
  %19 = call i64 @GetProcAddress(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i64 %19, i64* @VaultGetItem7, align 8
  %20 = load i64, i64* @VaultGetItem7, align 8
  store i64 %20, i64* @VaultGetItem8, align 8
  %21 = load i64, i64* @VaultEnumerateItemTypes, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %3
  %24 = load i64, i64* @VaultEnumerateVaults, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i64, i64* @VaultOpenVault, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i64, i64* @VaultGetInformation, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i64, i64* @VaultEnumerateItems, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i64, i64* @VaultCloseVault, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* @VaultFree, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* @VaultGetItem7, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %3
  %45 = phi i1 [ false, %38 ], [ false, %35 ], [ false, %32 ], [ false, %29 ], [ false, %26 ], [ false, %23 ], [ false, %3 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* @isVaultInit, align 4
  br label %47

47:                                               ; preds = %44, %0
  %48 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %48
}

declare dso_local i32 @LoadLibrary(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
