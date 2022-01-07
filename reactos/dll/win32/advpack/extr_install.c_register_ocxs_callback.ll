; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_register_ocxs_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_register_ocxs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@MAX_INF_STRING_LENGTH = common dso_local global i32 0, align 4
@LOAD_WITH_ALTERED_SEARCH_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*)* @register_ocxs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @register_ocxs_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i64, i64* @S_OK, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @SetupFindFirstLineW(i32 %15, i32 %16, i32* null, i32* %8)
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %58, %3
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %18
  %22 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = call i32 @SetupGetStringFieldW(i32* %8, i32 1, i32* %25, i32 %26, i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 4, i32* %13, align 4
  br label %54

30:                                               ; preds = %21
  %31 = load i32, i32* @LOAD_WITH_ALTERED_SEARCH_PATH, align 4
  %32 = call i64 @LoadLibraryExW(i32* %25, i32* null, i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i64 @do_ocx_reg(i64 %36, i32 %37, i32* null, i32* null)
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @E_FAIL, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @FreeLibrary(i64 %44)
  br label %48

46:                                               ; preds = %30
  %47 = load i64, i64* @E_FAIL, align 8
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @FAILED(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 2, i32* %13, align 4
  br label %54

53:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %52, %29
  %55 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %13, align 4
  switch i32 %56, label %62 [
    i32 0, label %57
    i32 4, label %58
    i32 2, label %60
  ]

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %54
  %59 = call i64 @SetupFindNextLine(i32* %8, i32* %8)
  store i64 %59, i64* %10, align 8
  br label %18

60:                                               ; preds = %54, %18
  %61 = load i64, i64* %9, align 8
  ret i64 %61

62:                                               ; preds = %54
  unreachable
}

declare dso_local i64 @SetupFindFirstLineW(i32, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @LoadLibraryExW(i32*, i32*, i32) #1

declare dso_local i64 @do_ocx_reg(i64, i32, i32*, i32*) #1

declare dso_local i32 @FreeLibrary(i64) #1

declare dso_local i64 @FAILED(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
