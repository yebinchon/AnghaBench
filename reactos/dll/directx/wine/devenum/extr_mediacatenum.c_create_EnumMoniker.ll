; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/devenum/extr_mediacatenum.c_create_EnumMoniker.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/devenum/extr_mediacatenum.c_create_EnumMoniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32*, i32*, i32, i64, i64 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@IEnumMoniker_Vtbl = common dso_local global i32 0, align 4
@clsidW = common dso_local global i32 0, align 4
@backslashW = common dso_local global i32 0, align 4
@CHARS_IN_GUID = common dso_local global i32 0, align 4
@instanceW = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_ENUMERATE_SUB_KEYS = common dso_local global i32 0, align 4
@wszActiveMovieKey = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_EnumMoniker(i32* %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca [78 x i32], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  %9 = call %struct.TYPE_7__* @CoTaskMemAlloc(i32 64)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %3, align 4
  br label %96

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32* @IEnumMoniker_Vtbl, i32** %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds [78 x i32], [78 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* @clsidW, align 4
  %30 = call i32 @lstrcpyW(i32* %28, i32 %29)
  %31 = getelementptr inbounds [78 x i32], [78 x i32]* %7, i64 0, i64 0
  %32 = load i32, i32* @backslashW, align 4
  %33 = call i32 @lstrcatW(i32* %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds [78 x i32], [78 x i32]* %7, i64 0, i64 0
  %36 = getelementptr inbounds [78 x i32], [78 x i32]* %7, i64 0, i64 0
  %37 = call i32 @lstrlenW(i32* %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* @CHARS_IN_GUID, align 4
  %41 = call i32 @StringFromGUID2(i32* %34, i32* %39, i32 %40)
  %42 = getelementptr inbounds [78 x i32], [78 x i32]* %7, i64 0, i64 0
  %43 = load i32, i32* @instanceW, align 4
  %44 = call i32 @lstrcatW(i32* %42, i32 %43)
  %45 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %46 = getelementptr inbounds [78 x i32], [78 x i32]* %7, i64 0, i64 0
  %47 = load i32, i32* @KEY_ENUMERATE_SUB_KEYS, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = call i64 @RegOpenKeyExW(i32 %45, i32* %46, i32 0, i32 %47, i32** %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %14
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %14
  %56 = getelementptr inbounds [78 x i32], [78 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* @wszActiveMovieKey, align 4
  %58 = call i32 @lstrcpyW(i32* %56, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds [78 x i32], [78 x i32]* %7, i64 0, i64 0
  %61 = getelementptr inbounds [78 x i32], [78 x i32]* %7, i64 0, i64 0
  %62 = call i32 @lstrlenW(i32* %61)
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* @CHARS_IN_GUID, align 4
  %66 = call i32 @StringFromGUID2(i32* %59, i32* %64, i32 %65)
  %67 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %68 = getelementptr inbounds [78 x i32], [78 x i32]* %7, i64 0, i64 0
  %69 = load i32, i32* @KEY_ENUMERATE_SUB_KEYS, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = call i64 @RegOpenKeyExW(i32 %67, i32* %68, i32 0, i32 %69, i32** %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %55
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %55
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = call i32 @DMOEnum(i32* %78, i32 0, i32 0, i32* null, i32 0, i32* null, i32* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @FAILED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = call i32 @IEnumMoniker_Release(%struct.TYPE_6__* %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %96

90:                                               ; preds = %77
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %93, align 8
  %94 = call i32 (...) @DEVENUM_LockModule()
  %95 = load i32, i32* @S_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %85, %12
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_7__* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @lstrcpyW(i32*, i32) #1

declare dso_local i32 @lstrcatW(i32*, i32) #1

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32**) #1

declare dso_local i32 @DMOEnum(i32*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IEnumMoniker_Release(%struct.TYPE_6__*) #1

declare dso_local i32 @DEVENUM_LockModule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
