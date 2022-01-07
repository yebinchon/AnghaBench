; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_advanced.c_GetSupportedCP.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_advanced.c_GetSupportedCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, i32*, i64 }
%struct.TYPE_8__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i32] [i32 67, i32 111, i32 100, i32 101, i32 80, i32 97, i32 103, i32 101, i32 115, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@PCPage = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i32] [i32 67, i32 79, i32 68, i32 69, i32 80, i32 65, i32 71, i32 69, i32 95, i32 82, i32 69, i32 77, i32 79, i32 86, i32 69, i32 95, i32 37, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 65, i32 100, i32 100, i32 82, i32 101, i32 103, i32 0], align 4
@CODEPAGE_NOT_REMOVEABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GetSupportedCP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetSupportedCP(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @SetupFindFirstLine(i32 %16, i8* bitcast ([10 x i32]* @.str to i8*), i32* null, i32* %6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %103

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %100, %21
  %23 = ptrtoint i64* %10 to i32
  %24 = call i64 @SetupGetIntField(i32* %6, i32 0, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %96

26:                                               ; preds = %22
  %27 = call i32 (...) @GetProcessHeap()
  %28 = call %struct.TYPE_7__* @HeapAlloc(i32 %27, i32 0, i32 4)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = icmp eq %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %103

33:                                               ; preds = %26
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* @UNICODE_NULL, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @GetCPInfoExW(i64 %44, i32 0, %struct.TYPE_8__* %9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %33
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wcscpy(i32* %50, i32 %52)
  br label %60

54:                                               ; preds = %33
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @MAX_PATH, align 4
  %59 = call i32 @SetupGetStringFieldW(i32* %6, i32 1, i32* %57, i32 %58, i32* null)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @wcslen(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PCPage, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %69, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** @PCPage, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @wsprintf(i32* %15, i8* bitcast ([19 x i32]* @.str.1 to i8*), i64 %71)
  %73 = load i64, i64* %10, align 8
  %74 = call i64 (...) @GetACP()
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %66
  %77 = load i64, i64* %10, align 8
  %78 = call i64 (...) @GetOEMCP()
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @SetupFindFirstLineW(i32 %81, i32* %15, i8* bitcast ([7 x i32]* @.str.2 to i8*), i32* %7)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80, %76, %66
  %85 = load i32, i32* @CODEPAGE_NOT_REMOVEABLE, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %80
  br label %95

91:                                               ; preds = %60
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = call i32 @HeapFree(i32 %92, i32 0, %struct.TYPE_7__* %93)
  br label %95

95:                                               ; preds = %91, %90
  br label %96

96:                                               ; preds = %95, %22
  %97 = call i32 @SetupFindNextLine(i32* %6, i32* %6)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  br label %101

100:                                              ; preds = %96
  br label %22

101:                                              ; preds = %99
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %103

103:                                              ; preds = %101, %31, %19
  %104 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetupFindFirstLine(i32, i8*, i32*, i32*) #2

declare dso_local i64 @SetupGetIntField(i32*, i32, i32) #2

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @GetCPInfoExW(i64, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @wcscpy(i32*, i32) #2

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i32*, i32, i32*) #2

declare dso_local i64 @wcslen(i32*) #2

declare dso_local i32 @wsprintf(i32*, i8*, i64) #2

declare dso_local i64 @GetACP(...) #2

declare dso_local i64 @GetOEMCP(...) #2

declare dso_local i32 @SetupFindFirstLineW(i32, i32*, i8*, i32*) #2

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @SetupFindNextLine(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
