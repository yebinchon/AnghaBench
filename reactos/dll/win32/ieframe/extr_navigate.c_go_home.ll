; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_go_home.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_go_home.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@go_home.wszAboutBlank = internal constant [12 x i8] c"about:blank\00", align 1
@go_home.wszStartPage = internal constant [11 x i8] c"Start Page\00", align 1
@go_home.wszSubKey = internal constant [42 x i8] c"Software\\Microsoft\\Internet Explorer\\Main\00", align 16
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @go_home(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %16 = call i64 @RegOpenKeyW(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @go_home.wszSubKey, i64 0, i64 0), i32* %4)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @navigate_url(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @go_home.wszAboutBlank, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %42

23:                                               ; preds = %1
  store i64 %12, i64* %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = ptrtoint i8* %14 to i32
  %26 = call i64 @RegQueryValueExW(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @go_home.wszStartPage, i64 0, i64 0), i32* null, i64* %6, i32 %25, i64* %7)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @RegCloseKey(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @REG_SZ, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %23
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @navigate_url(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @go_home.wszAboutBlank, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @navigate_url(i32* %40, i8* %14, i32* null, i32* null, i32* null, i32* null)
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %39, %36, %20
  %43 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyW(i32, i8*, i32*) #2

declare dso_local i32 @navigate_url(i32*, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i64*, i32, i64*) #2

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
