; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_config.c_ScmCreateServiceKey.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_config.c_ScmCreateServiceKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_CREATE_SUB_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@ERROR_SERVICE_EXISTS = common dso_local global i64 0, align 8
@REG_OPENED_EXISTING_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmCreateServiceKey(i32 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load i32**, i32*** %7, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %13 = load i32, i32* @KEY_READ, align 4
  %14 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @RegOpenKeyExW(i32 %12, i8* bitcast ([34 x i32]* @.str to i8*), i32 0, i32 %15, i32** %8)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %4, align 8
  br label %32

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32**, i32*** %7, align 8
  %28 = call i64 @RegCreateKeyExW(i32* %23, i32 %24, i32 0, i32* null, i32 %25, i32 %26, i32* null, i32** %27, i64* %9)
  store i64 %28, i64* %10, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @RegCloseKey(i32* %29)
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %22, %20
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32**) #1

declare dso_local i64 @RegCreateKeyExW(i32*, i32, i32, i32*, i32, i32, i32*, i32**, i64*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
