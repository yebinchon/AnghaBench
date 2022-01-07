; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_dependencies_tv2.c_TV2_AddDependantsToTree.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_dependencies_tv2.c_TV2_AddDependantsToTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_7__ = type { i32 }

@hInstance = common dso_local global i32 0, align 4
@IDS_NO_DEPENDS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TV2_AddDependantsToTree(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.TYPE_9__* @TV2_GetDependants(i32 %13, i64* %10)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %51, %17
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @TV2_HasDependantServices(i32* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @AddItemToTreeView(i32 %31, i32* %32, i32 %37, i32* %42, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %22
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %11, align 8
  br label %18

54:                                               ; preds = %18
  %55 = call i32 (...) @GetProcessHeap()
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = call i32 @HeapFree(i32 %55, i32 0, %struct.TYPE_9__* %56)
  br label %79

58:                                               ; preds = %3
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %78, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @hInstance, align 4
  %63 = load i32, i32* @IDS_NO_DEPENDS, align 4
  %64 = call i32 @AllocAndLoadString(i32* %9, i32 %62, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i32 @AddItemToTreeView(i32 %67, i32* null, i32 %68, i32* null, i32 0, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @LocalFree(i32 %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32 @EnableWindow(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %61, %58
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_9__* @TV2_GetDependants(i32, i64*) #1

declare dso_local i32 @TV2_HasDependantServices(i32*) #1

declare dso_local i32 @AddItemToTreeView(i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @AllocAndLoadString(i32*, i32, i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
