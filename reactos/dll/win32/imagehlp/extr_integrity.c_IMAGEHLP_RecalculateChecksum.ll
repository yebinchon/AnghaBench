; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imagehlp/extr_integrity.c_IMAGEHLP_RecalculateChecksum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imagehlp/extr_integrity.c_IMAGEHLP_RecalculateChecksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"handle %p\0A\00", align 1
@HDR_NT32 = common dso_local global i32 0, align 4
@HDR_NT64 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@INVALID_SET_FILE_POINTER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @IMAGEHLP_RecalculateChecksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IMAGEHLP_RecalculateChecksum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @IMAGEHLP_GetNTHeaders(i32 %19, i32* %7, %struct.TYPE_10__* %9, %struct.TYPE_9__* %10)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @HDR_NT32, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32* %26, i32** %13, align 8
  %27 = bitcast %struct.TYPE_10__* %9 to i8*
  store i8* %27, i8** %14, align 8
  store i32 4, i32* %8, align 4
  br label %39

28:                                               ; preds = %1
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @HDR_NT64, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32* %34, i32** %13, align 8
  %35 = bitcast %struct.TYPE_9__* %10 to i8*
  store i8* %35, i8** %14, align 8
  store i32 4, i32* %8, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %101

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PAGE_READONLY, align 4
  %42 = call i32 @CreateFileMappingW(i32 %40, i32* null, i32 %41, i32 0, i32 0, i32* null)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %2, align 4
  br label %101

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @FILE_MAP_READ, align 4
  %50 = call i32 @MapViewOfFile(i32 %48, i32 %49, i32 0, i32 0, i32 0)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @CloseHandle(i32 %54)
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %2, align 4
  br label %101

57:                                               ; preds = %47
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @GetFileSize(i32 %58, i32* null)
  store i32 %59, i32* %4, align 4
  %60 = load i32*, i32** %13, align 8
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @CheckSumMappedFile(i32 %61, i32 %62, i32* %6, i32* %63)
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @UnmapViewOfFile(i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @CloseHandle(i32 %67)
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %57
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @FILE_BEGIN, align 4
  %76 = call i32 @SetFilePointer(i32 %73, i32 %74, i32* null, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @INVALID_SET_FILE_POINTER, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %2, align 4
  br label %101

82:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i8*, i8** %14, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @WriteFile(i32 %83, i8* %84, i32 %85, i32* %5, i32* null)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %2, align 4
  br label %101

91:                                               ; preds = %82
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %2, align 4
  br label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %2, align 4
  br label %101

99:                                               ; preds = %57
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %97, %95, %89, %80, %53, %45, %36
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @IMAGEHLP_GetNTHeaders(i32, i32*, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @CreateFileMappingW(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @MapViewOfFile(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @GetFileSize(i32, i32*) #1

declare dso_local i32 @CheckSumMappedFile(i32, i32, i32*, i32*) #1

declare dso_local i32 @UnmapViewOfFile(i32) #1

declare dso_local i32 @SetFilePointer(i32, i32, i32*, i32) #1

declare dso_local i32 @WriteFile(i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
