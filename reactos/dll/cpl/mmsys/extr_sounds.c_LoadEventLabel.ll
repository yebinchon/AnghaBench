; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_LoadEventLabel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_LoadEventLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i8*, i8*, i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DispFileName\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadEventLabel(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @KEY_READ, align 4
  %25 = call i64 @RegOpenKeyEx(i32 %22, i32* %23, i32 0, i32 %24, i32* %8)
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %97

30:                                               ; preds = %3
  %31 = mul nuw i64 4, %16
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = ptrtoint i32* %18 to i32
  %35 = call i64 @RegQueryValueEx(i32 %33, i32* null, i32* null, i32* null, i32 %34, i32* %9)
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @RegCloseKey(i32 %39)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %97

42:                                               ; preds = %30
  %43 = mul nuw i64 4, %20
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32* @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %47 = ptrtoint i32* %21 to i32
  %48 = call i64 @RegQueryValueEx(i32 %45, i32* %46, i32* null, i32* null, i32 %47, i32* %9)
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @RegCloseKey(i32 %52)
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %97

55:                                               ; preds = %42
  %56 = call i32 (...) @GetProcessHeap()
  %57 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %58 = call %struct.TYPE_5__* @HeapAlloc(i32 %56, i32 %57, i32 4)
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %13, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %97

63:                                               ; preds = %55
  %64 = load i32*, i32** %7, align 8
  %65 = call i8* @_tcsdup(i32* %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = call i8* @_tcsdup(i32* %18)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = call i8* @_tcsdup(i32* %21)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = icmp ne %struct.TYPE_5__* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %63
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %86, align 8
  br label %95

87:                                               ; preds = %63
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %94, align 8
  br label %95

95:                                               ; preds = %87, %78
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %97

97:                                               ; preds = %95, %61, %51, %38, %28
  %98 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyEx(i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueEx(i32, i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32* @_T(i8*) #2

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i8* @_tcsdup(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
