; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_add_dialog.c_GetDefaultLayoutForLocale.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_add_dialog.c_GetDefaultLayoutForLocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i32] [i32 105, i32 110, i32 116, i32 108, i32 46, i32 105, i32 110, i32 102, i32 0], align 4
@INF_STYLE_WIN4 = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MAX_STR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 56, i32 88, i32 0], align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 76, i32 111, i32 99, i32 97, i32 108, i32 101, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 58, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GetDefaultLayoutForLocale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetDefaultLayoutForLocale(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %12 = load i32, i32* @INF_STYLE_WIN4, align 4
  %13 = call i64 @SetupOpenInfFileW(i8* bitcast ([9 x i32]* @.str to i8*), i32* null, i32 %12, i32* null)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %1
  %18 = load i32, i32* @MAX_STR_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = call i32 @ARRAYSIZE(i8* %21)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @StringCchPrintfW(i8* %21, i32 %22, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @SetupFindFirstLineW(i64 %25, i8* bitcast ([8 x i32]* @.str.2 to i8*), i8* %21, i32* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %17
  %29 = call i32 @SetupGetFieldCount(i32* %7)
  %30 = icmp sge i32 %29, 5
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  %32 = load i32, i32* @MAX_STR_LEN, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %8, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %9, align 8
  %36 = call i32 @ARRAYSIZE(i8* %35)
  %37 = call i64 @SetupGetStringFieldW(i32* %7, i32 5, i8* %35, i32 %36, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %31
  %40 = call i32 @wcslen(i8* %35)
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  store i8* bitcast ([2 x i32]* @.str.3 to i8*), i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @wcstok(i8* %35, i8* %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = call i8* @wcstok(i8* null, i8* %48)
  store i8* %49, i8** %11, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @DWORDfromString(i8* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %57, %31
  %59 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %59)
  br label %60

60:                                               ; preds = %58, %28
  br label %61

61:                                               ; preds = %60, %17
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @SetupCloseInfFile(i64 %62)
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  br label %65

65:                                               ; preds = %61, %1
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @SetupOpenInfFileW(i8*, i32*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StringCchPrintfW(i8*, i32, i8*, i32) #1

declare dso_local i32 @ARRAYSIZE(i8*) #1

declare dso_local i64 @SetupFindFirstLineW(i64, i8*, i8*, i32*) #1

declare dso_local i32 @SetupGetFieldCount(i32*) #1

declare dso_local i64 @SetupGetStringFieldW(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i8* @wcstok(i8*, i8*) #1

declare dso_local i32 @DWORDfromString(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @SetupCloseInfFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
