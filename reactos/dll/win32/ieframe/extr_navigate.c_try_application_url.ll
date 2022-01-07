; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_try_application_url.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_try_application_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@try_application_url.wszURLProtocol = internal constant [13 x i8] c"URL Protocol\00", align 1
@PARSE_SCHEMA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"opening application %s\0A\00", align 1
@SW_SHOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @try_application_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_application_url(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PARSE_SCHEMA, align 4
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i8* %13)
  %15 = call i32 @CoInternetParseUrl(i32 %10, i32 %11, i32 0, i8* %12, i32 %14, i32* null, i32 0)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %1
  %22 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %24 = call i64 @RegOpenKeyW(i32 %22, i8* %23, i32* %6)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %55

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @RegQueryValueExW(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @try_application_url.wszURLProtocol, i64 0, i64 0), i32* null, i64* %8, i32* null, i32* null)
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @RegCloseKey(i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @REG_SZ, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %30
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %2, align 4
  br label %55

44:                                               ; preds = %38
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %46 = call i32 @debugstr_w(i8* %45)
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 12)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 12, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @SW_SHOW, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = call i32 @ShellExecuteExW(%struct.TYPE_4__* %4)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %44, %42, %28, %19
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @CoInternetParseUrl(i32, i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @RegOpenKeyW(i32, i8*, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i64*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ShellExecuteExW(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
