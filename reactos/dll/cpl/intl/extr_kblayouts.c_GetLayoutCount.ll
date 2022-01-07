; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_kblayouts.c_GetLayoutCount.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_kblayouts.c_GetLayoutCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCH_LAYOUT_ID = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i32] [i32 75, i32 101, i32 121, i32 98, i32 111, i32 97, i32 114, i32 100, i32 32, i32 76, i32 97, i32 121, i32 111, i32 117, i32 116, i32 92, i32 80, i32 114, i32 101, i32 108, i32 111, i32 97, i32 100, i32 0], align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GetLayoutCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetLayoutCount(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* @CCH_LAYOUT_ID, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %23 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %24 = call i64 @RegOpenKeyExW(i32 %22, i8* bitcast ([24 x i32]* @.str to i8*), i32 0, i32 %23, i32* %3)
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %1
  store i32 16, i32* %10, align 4
  br label %28

28:                                               ; preds = %67, %27
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %32 = call i64 @RegEnumValue(i32 %29, i32 %30, i32* %31, i32* %10, i32* null, i32* %9, i32* null, i32* null)
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %28
  %36 = mul nuw i64 4, %16
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %3, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %40 = ptrtoint i32* %18 to i32
  %41 = call i32 @RegQueryValueExW(i32 %38, i32* %39, i32* null, i32* null, i32 %40, i32* %10)
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %55, %35
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @wcslen(i32* %18)
  %45 = add nsw i32 %44, 1
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %18, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %21, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load i32, i32* %2, align 4
  %62 = call i64 @wcscmp(i32* %21, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %60
  store i32 16, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %28

70:                                               ; preds = %28
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @RegCloseKey(i32 %71)
  br label %73

73:                                               ; preds = %70, %1
  %74 = load i32, i32* %11, align 4
  %75 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %75)
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @RegEnumValue(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @RegQueryValueExW(i32, i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i64 @wcscmp(i32*, i32) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
