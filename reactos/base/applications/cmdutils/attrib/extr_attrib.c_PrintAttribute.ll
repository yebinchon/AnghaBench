; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/attrib/extr_attrib.c_PrintAttribute.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/attrib/extr_attrib.c_PrintAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 46, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 46, i32 46, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i32] [i32 37, i32 99, i32 32, i32 32, i32 37, i32 99, i32 37, i32 99, i32 37, i32 99, i32 32, i32 32, i32 32, i32 32, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@FILE_ATTRIBUTE_ARCHIVE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_SYSTEM = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @PrintAttribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintAttribute(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @wcscpy(i32* %17, i32* %18)
  %20 = call i32 @wcslen(i32* %17)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32* %22, i32** %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %73

25:                                               ; preds = %3
  %26 = load i32*, i32** %12, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @wcscpy(i32* %26, i32* %27)
  %29 = call i64 @FindFirstFileW(i32* %17, %struct.TYPE_4__* %8)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = call i32 (...) @GetLastError()
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ErrorMessage(i32 %34, i32* %35)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %135

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %66, %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %66

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @wcscmp(i32* %47, i8* bitcast ([2 x i32]* @.str to i8*))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @wcscmp(i32* %52, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %45
  br label %66

56:                                               ; preds = %50
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @wcscpy(i32* %57, i32* %59)
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @wcscat(i32* %61, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @PrintAttribute(i32* %17, i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %56, %55, %44
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @FindNextFileW(i64 %67, %struct.TYPE_4__* %8)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %38, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @FindClose(i64 %71)
  br label %73

73:                                               ; preds = %70, %3
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @wcscpy(i32* %74, i32* %75)
  %77 = call i64 @FindFirstFileW(i32* %17, %struct.TYPE_4__* %8)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = call i32 (...) @GetLastError()
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @ErrorMessage(i32 %82, i32* %83)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %135

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %128, %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %128

93:                                               ; preds = %86
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @wcscpy(i32* %94, i32* %96)
  %98 = load i32, i32* @StdOut, align 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 65, i32 32
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 83, i32 32
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 72, i32 32
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 82, i32 32
  %127 = call i32 @ConPrintf(i32 %98, i8* bitcast ([19 x i32]* @.str.3 to i8*), i32 %105, i32 %112, i32 %119, i32 %126, i32* %17)
  br label %128

128:                                              ; preds = %93, %92
  %129 = load i64, i64* %9, align 8
  %130 = call i64 @FindNextFileW(i64 %129, %struct.TYPE_4__* %8)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %86, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @FindClose(i64 %133)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %135

135:                                              ; preds = %132, %81, %33
  %136 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wcscpy(i32*, i32*) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i64 @FindFirstFileW(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @ErrorMessage(i32, i32*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @wcscmp(i32*, i8*) #2

declare dso_local i32 @wcscat(i32*, i8*) #2

declare dso_local i64 @FindNextFileW(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i32 @ConPrintf(i32, i8*, i32, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
