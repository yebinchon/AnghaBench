; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_virtmem.c_ReadPageFileSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_virtmem.c_ReadPageFileSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@lpKey = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"PagingFiles\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ReadPageFileSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadPageFileSettings(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32* null, i32** %3, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %9 = load i32, i32* @lpKey, align 4
  %10 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %11 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %12 = call i64 @RegCreateKeyEx(i32 %8, i32 %9, i32 0, i32* null, i32 %10, i32 %11, i32* null, i32** %3, i32* null)
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @RegQueryValueEx(i32* %16, i32 %17, i32* null, i32* %4, i32* null, i32* %5)
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @HeapAlloc(i32 %22, i32 0, i32 %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %21
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ZeroMemory(i32* %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @RegQueryValueEx(i32* %38, i32 %39, i32* null, i32* %4, i32* %42, i32* %5)
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %32
  br label %49

49:                                               ; preds = %48, %21
  br label %50

50:                                               ; preds = %49, %15
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ShowLastWin32Error(i32 %57)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32*, i32** %3, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @RegCloseKey(i32* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i64 @RegCreateKeyEx(i32, i32, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i64 @RegQueryValueEx(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32 @ShowLastWin32Error(i32) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
