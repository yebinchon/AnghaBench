; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_adapter.c_GetDriverName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_adapter.c_GetDriverName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"\\Registry\\Machine\\\00", align 1
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@MAX_DEVICE_IDENTIFIER_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".dll\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"InstalledDisplayDrivers\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @GetDriverName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetDriverName(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %18 = call i64 @RegOpenKeyExA(i32 %11, i64 %16, i32 0, i32 %17, i32* %5)
  %19 = icmp eq i64 %10, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load i64, i64* @MAX_DEVICE_IDENTIFIER_STRING, align 8
  %22 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = sub i64 %21, %22
  store i64 %23, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = call i64 @RegQueryValueExA(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 0, i64* %8, i32 %29, i64* %7)
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %20
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i64, i64* @MAX_DEVICE_IDENTIFIER_STRING, align 8
  %42 = call i32 @SafeAppendString(i8* %40, i64 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %32, %20
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @RegCloseKey(i32 %45)
  br label %47

47:                                               ; preds = %44, %2
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i64 @RegOpenKeyExA(i32, i64, i32, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32, i64*, i32, i64*) #1

declare dso_local i32 @SafeAppendString(i8*, i64, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
