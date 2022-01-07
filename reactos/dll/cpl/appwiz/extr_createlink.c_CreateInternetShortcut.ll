; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_createlink.c_CreateInternetShortcut.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_createlink.c_CreateInternetShortcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i32*, i32)*, i32 (%struct.TYPE_12__*, i32, i32)* }

@MAX_PATH = common dso_local global i32 0, align 4
@CLSID_InternetShortcut = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@IID_IUniformResourceLocatorW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IID_IPersistFile = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateInternetShortcut(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @_countof(i32* %13)
  %18 = call i32 @GetFullPathNameW(i32 %16, i32 %17, i32* %13, i32* null)
  %19 = load i32, i32* @CLSCTX_ALL, align 4
  %20 = bitcast %struct.TYPE_12__** %4 to i8**
  %21 = call i32 @CoCreateInstance(i32* @CLSID_InternetShortcut, i32* null, i32 %19, i32* @IID_IUniformResourceLocatorW, i8** %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

27:                                               ; preds = %1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = bitcast %struct.TYPE_12__** %5 to i8**
  %30 = call i32 @IUnknown_QueryInterface(%struct.TYPE_12__* %28, i32* @IID_IPersistFile, i8** %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = call i32 @IUnknown_Release(%struct.TYPE_12__* %35)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

38:                                               ; preds = %27
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %43(%struct.TYPE_12__* %44, i32 %47, i32 0)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_12__*, i32*, i32)*, i32 (%struct.TYPE_12__*, i32*, i32)** %52, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 %53(%struct.TYPE_12__* %54, i32* %13, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = call i32 @IUnknown_Release(%struct.TYPE_12__* %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = call i32 @IUnknown_Release(%struct.TYPE_12__* %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @SUCCEEDED(i32 %61)
  store i32 %62, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %38, %34, %25
  %64 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetFullPathNameW(i32, i32, i32*, i32*) #2

declare dso_local i32 @_countof(i32*) #2

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @IUnknown_QueryInterface(%struct.TYPE_12__*, i32*, i8**) #2

declare dso_local i32 @IUnknown_Release(%struct.TYPE_12__*) #2

declare dso_local i32 @SUCCEEDED(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
