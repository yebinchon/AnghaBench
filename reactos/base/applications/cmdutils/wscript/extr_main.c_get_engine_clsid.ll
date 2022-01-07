; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_get_engine_clsid.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_get_engine_clsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_engine_clsid.script_engineW = internal constant [14 x i8] c"\\ScriptEngine\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fileid is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ProgID is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @get_engine_clsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_engine_clsid(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @RegOpenKeyW(i32 %12, i8* %13, i32* %10)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %22 = call i32 @ARRAY_SIZE(i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %25 = call i64 @RegQueryValueW(i32 %23, i32* null, i8* %24, i32* %9)
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @RegCloseKey(i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %20
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %35 = call i32 @wine_dbgstr_w(i8* %34)
  %36 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %38 = call i32 @strcatW(i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @get_engine_clsid.script_engineW, i64 0, i64 0))
  %39 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %41 = call i64 @RegOpenKeyW(i32 %39, i8* %40, i32* %10)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %69

47:                                               ; preds = %33
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %49 = call i32 @ARRAY_SIZE(i8* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %52 = call i64 @RegQueryValueW(i32 %50, i32* null, i8* %51, i32* %9)
  store i64 %52, i64* %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @RegCloseKey(i32 %53)
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @ERROR_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %47
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %62 = call i32 @wine_dbgstr_w(i8* %61)
  %63 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @CLSIDFromProgID(i8* %64, i32* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @SUCCEEDED(i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %58, %45, %31, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @RegOpenKeyW(i32, i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @RegQueryValueW(i32, i32*, i8*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @WINE_TRACE(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

declare dso_local i32 @CLSIDFromProgID(i8*, i32*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
