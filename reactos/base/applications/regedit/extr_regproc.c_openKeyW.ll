; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_openKeyW.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_openKeyW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@currentKeyHandle = common dso_local global i32* null, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@currentKeyName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @openKeyW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @openKeyW(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %11, i64* %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @parseKeyName(i32* %13, i32* %4, i32** %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %17, i64* %2, align 8
  br label %33

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %22 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %23 = call i64 @RegCreateKeyExW(i32 %19, i32* %20, i32 0, i32* null, i32 %21, i32 %22, i32* null, i32** @currentKeyHandle, i32* %6)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @GetMultiByteString(i32* %28)
  store i32 %29, i32* @currentKeyName, align 4
  br label %31

30:                                               ; preds = %18
  store i32* null, i32** @currentKeyHandle, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %31, %16, %10
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i32 @parseKeyName(i32*, i32*, i32**) #1

declare dso_local i64 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @GetMultiByteString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
