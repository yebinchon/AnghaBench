; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_security.c_CRegKeySecurity_fnQueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_security.c_CRegKeySecurity_fnQueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IRegKeySecurity = common dso_local global i32 0, align 4
@ISecurityInformation = common dso_local global i32 0, align 4
@IID_IEffectivePermission = common dso_local global i32 0, align 4
@IEffectivePermission = common dso_local global i32 0, align 4
@IID_ISecurityObjectTypeInfo = common dso_local global i32 0, align 4
@ISecurityObjectTypeInfo = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@IID_IRegKeySecurity2 = common dso_local global i32 0, align 4
@ISecurityInformation2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32**)* @CRegKeySecurity_fnQueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRegKeySecurity_fnQueryInterface(i32 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @IsEqualGUID(i32 %9, i32* @IID_IRegKeySecurity)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ISecurityInformation, align 4
  %15 = call i64 @impl_to_interface(i32 %13, i32 %14)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %8, align 8
  br label %37

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @IsEqualGUID(i32 %18, i32* @IID_IEffectivePermission)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IEffectivePermission, align 4
  %24 = call i64 @impl_to_interface(i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %8, align 8
  br label %36

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @IsEqualGUID(i32 %27, i32* @IID_ISecurityObjectTypeInfo)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ISecurityObjectTypeInfo, align 4
  %33 = call i64 @impl_to_interface(i32 %31, i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %8, align 8
  br label %35

35:                                               ; preds = %30, %26
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36, %12
  %38 = load i32*, i32** %8, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %41, i32* %4, align 4
  br label %48

42:                                               ; preds = %37
  %43 = load i32*, i32** %8, align 8
  %44 = load i32**, i32*** %7, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @CRegKeySecurity_fnAddRef(i32 %45)
  %47 = load i32, i32* @S_OK, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %40
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @IsEqualGUID(i32, i32*) #1

declare dso_local i64 @impl_to_interface(i32, i32) #1

declare dso_local i32 @CRegKeySecurity_fnAddRef(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
