; ModuleID = '/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_log.c_LogToFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_log.c_LogToFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i32] [i32 37, i32 115, i32 32, i32 58, i32 32, i32 37, i32 115, i32 9, i32 69, i32 114, i32 114, i32 78, i32 117, i32 109, i32 32, i32 61, i32 32, i32 37, i32 108, i32 117, i32 32, i32 69, i32 120, i32 105, i32 116, i32 67, i32 111, i32 100, i32 101, i32 32, i32 61, i32 32, i32 37, i32 108, i32 117, i32 13, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 37, i32 115, i32 13, i32 10, i32 0], align 4
@MAXDWORD = common dso_local global i32 0, align 4
@EXCEPTION_INT_OVERFLOW = common dso_local global i32 0, align 4
@hLogFile = common dso_local global i32 0, align 4
@olWrite = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i32] [i32 70, i32 97, i32 105, i32 108, i32 101, i32 100, i32 32, i32 116, i32 111, i32 32, i32 119, i32 114, i32 105, i32 116, i32 101, i32 32, i32 116, i32 111, i32 32, i32 108, i32 111, i32 103, i32 32, i32 102, i32 105, i32 108, i32 101, i32 0], align 4
@LOG_EVENTLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @LogToFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LogToFile(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @wcslen(i32* %17)
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @LOG_ERROR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %4
  %25 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %26 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LANG_NEUTRAL, align 4
  %30 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %31 = call i32 @MAKELANGID(i32 %29, i32 %30)
  %32 = bitcast i32** %12 to i32*
  %33 = call i32 @FormatMessageW(i32 %27, i32* null, i32 %28, i32 %31, i32* %32, i32 0, i32* null)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %34, %35
  %37 = add nsw i32 %36, 40
  store i32 %37, i32* %11, align 4
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32* @HeapAlloc(i32 %38, i32 0, i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %24
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i32*, i32, i8*, i32*, ...) @_snwprintf(i32* %47, i32 %48, i8* bitcast ([38 x i32]* @.str to i8*), i32* %49, i32* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %24
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @LocalFree(i32* %55)
  br label %74

57:                                               ; preds = %4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %11, align 4
  %60 = call i32 (...) @GetProcessHeap()
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i32* @HeapAlloc(i32 %60, i32 0, i32 %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 (i32*, i32, i8*, i32*, ...) @_snwprintf(i32* %69, i32 %70, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32* %71)
  br label %73

73:                                               ; preds = %68, %57
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @wcslen(i32* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* @MAXDWORD, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 4
  %82 = icmp ugt i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @EXCEPTION_INT_OVERFLOW, align 4
  %85 = call i32 @RaiseException(i32 %84, i32 0, i32 0, i32* null)
  br label %86

86:                                               ; preds = %83, %74
  %87 = load i32*, i32** %10, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %134

89:                                               ; preds = %86
  %90 = load i32, i32* @hLogFile, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i64 @WriteFile(i32 %90, i32* %91, i32 %95, i32* %14, %struct.TYPE_4__* @olWrite)
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %16, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %89
  %100 = call i64 (...) @GetLastError()
  %101 = load i64, i64* @ERROR_IO_PENDING, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* @FALSE, align 8
  store i64 %104, i64* %16, align 8
  br label %117

105:                                              ; preds = %99
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @olWrite, i32 0, i32 0), align 4
  %107 = load i32, i32* @INFINITE, align 4
  %108 = call i32 @WaitForSingleObject(i32 %106, i32 %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  switch i32 %109, label %114 [
    i32 128, label %110
  ]

110:                                              ; preds = %105
  %111 = load i32, i32* @hLogFile, align 4
  %112 = load i64, i64* @FALSE, align 8
  %113 = call i64 @GetOverlappedResult(i32 %111, %struct.TYPE_4__* @olWrite, i32* %14, i64 %112)
  store i64 %113, i64* %16, align 8
  br label %116

114:                                              ; preds = %105
  %115 = load i64, i64* @FALSE, align 8
  store i64 %115, i64* %16, align 8
  br label %116

116:                                              ; preds = %114, %110
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %117, %89
  %119 = load i64, i64* %16, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121, %118
  %125 = call i64 (...) @GetLastError()
  %126 = load i32, i32* @LOG_EVENTLOG, align 4
  %127 = load i32, i32* @LOG_ERROR, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @LogToEventLog(i8* bitcast ([28 x i32]* @.str.2 to i8*), i64 %125, i32 0, i32 %128)
  br label %130

130:                                              ; preds = %124, %121
  %131 = call i32 (...) @GetProcessHeap()
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @HeapFree(i32 %131, i32 0, i32* %132)
  br label %134

134:                                              ; preds = %130, %86
  %135 = load i32, i32* %8, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @ExitProcess(i32 %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @FormatMessageW(i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @_snwprintf(i32*, i32, i8*, i32*, ...) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @RaiseException(i32, i32, i32, i32*) #1

declare dso_local i64 @WriteFile(i32, i32*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i64 @GetOverlappedResult(i32, %struct.TYPE_4__*, i32*, i64) #1

declare dso_local i32 @LogToEventLog(i8*, i64, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @ExitProcess(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
