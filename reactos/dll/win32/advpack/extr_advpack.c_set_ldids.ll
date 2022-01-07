; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_advpack.c_set_ldids.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_advpack.c_set_ldids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_FIELD_LENGTH = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@set_ldids.source_dir = internal constant [10 x i8] c"SourceDir\00", align 1
@set_ldids.custDestW = internal constant [18 x i8] c"CustomDestination\00", align 16
@.str = private unnamed_addr constant [55 x i8] c"Need to support changing paths - default will be used\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_ldids(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %20 = load i32, i32* @MAX_FIELD_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load i32, i32* @MAX_FIELD_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @MAX_FIELD_LENGTH, align 4
  %33 = call i32 @SetupGetLineTextW(i32* null, i32* %30, i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @set_ldids.custDestW, i64 0, i64 0), i8* %23, i32 %32, i32* %12)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  br label %122

36:                                               ; preds = %3
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @SetupFindFirstLineW(i32* %37, i8* %23, i32* null, i32* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 1, i32* %14, align 4
  br label %122

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %118, %41
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %43 = load i32, i32* @MAX_FIELD_LENGTH, align 4
  %44 = call i32 @SetupGetLineTextW(i32* %11, i32* null, i32* null, i8* null, i8* %26, i32 %43, i32* %12)
  %45 = call i8* @wcschr(i8* %26, i8 signext 61)
  store i8* %45, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = call i32 @SetupGetStringFieldW(i32* %11, i32 0, i8* null, i32 0, i32* %12)
  %49 = call i32 (...) @GetProcessHeap()
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = call i8* @HeapAlloc(i32 %49, i32 0, i32 %53)
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %17, align 8
  store i8* %55, i8** %18, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @SetupGetStringFieldW(i32* %11, i32 0, i8* %56, i32 %57, i32* %12)
  store i8* %26, i8** %15, align 8
  br label %62

59:                                               ; preds = %42
  store i8* %26, i8** %17, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %15, align 8
  store i8 0, i8* %60, align 1
  br label %62

62:                                               ; preds = %59, %47
  br label %63

63:                                               ; preds = %68, %62
  %64 = load i8*, i8** %15, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %15, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %15, align 8
  br label %63

71:                                               ; preds = %63
  %72 = load i8*, i8** %15, align 8
  %73 = call i8* @wcschr(i8* %72, i8 signext 44)
  store i8* %73, i8** %16, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** %16, align 8
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %16, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @wcstol(i8* %79, i32* null, i32 10)
  store i32 %80, i32* %19, align 4
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i32*, i32** %6, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i8*, i8** %15, align 8
  %86 = call i32 @lstrcmpiW(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @set_ldids.source_dir, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @MAX_PATH, align 4
  %91 = call i32 @lstrcpynW(i8* %29, i32* %89, i32 %90)
  br label %97

92:                                               ; preds = %84, %81
  %93 = load i32*, i32** %4, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = load i32, i32* @MAX_PATH, align 4
  %96 = call i32 @get_dest_dir(i32* %93, i8* %94, i8* %29, i32 %95)
  br label %97

97:                                               ; preds = %92, %88
  %98 = load i32, i32* %19, align 4
  %99 = and i32 %98, 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @FIXME(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %97
  br label %104

104:                                              ; preds = %108, %103
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i8* @get_parameter(i8** %17, i8 signext 44, i32 %105)
  store i8* %106, i8** %16, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i8*, i8** %16, align 8
  %110 = call i32 @wcstol(i8* %109, i32* null, i32 10)
  store i32 %110, i32* %13, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @SetupSetDirectoryIdW(i32* %111, i32 %112, i8* %29)
  br label %104

114:                                              ; preds = %104
  %115 = call i32 (...) @GetProcessHeap()
  %116 = load i8*, i8** %18, align 8
  %117 = call i32 @HeapFree(i32 %115, i32 0, i8* %116)
  br label %118

118:                                              ; preds = %114
  %119 = call i64 @SetupFindNextLine(i32* %11, i32* %11)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %42, label %121

121:                                              ; preds = %118
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %121, %40, %35
  %123 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %14, align 4
  switch i32 %124, label %126 [
    i32 0, label %125
    i32 1, label %125
  ]

125:                                              ; preds = %122, %122
  ret void

126:                                              ; preds = %122
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetupGetLineTextW(i32*, i32*, i32*, i8*, i8*, i32, i32*) #2

declare dso_local i32 @SetupFindFirstLineW(i32*, i8*, i32*, i32*) #2

declare dso_local i8* @wcschr(i8*, i8 signext) #2

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i8*, i32, i32*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @wcstol(i8*, i32*, i32) #2

declare dso_local i32 @lstrcmpiW(i8*, i8*) #2

declare dso_local i32 @lstrcpynW(i8*, i32*, i32) #2

declare dso_local i32 @get_dest_dir(i32*, i8*, i8*, i32) #2

declare dso_local i32 @FIXME(i8*) #2

declare dso_local i8* @get_parameter(i8**, i8 signext, i32) #2

declare dso_local i32 @SetupSetDirectoryIdW(i32*, i32, i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
