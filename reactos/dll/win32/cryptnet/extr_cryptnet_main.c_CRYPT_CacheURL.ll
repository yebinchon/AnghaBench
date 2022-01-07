; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptnet/extr_cryptnet_main.c_CRYPT_CacheURL.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptnet/extr_cryptnet_main.c_CRYPT_CacheURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@CACHE_ENTRY_EXPTIME_FC = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@CRYPT_STICKY_CACHE_RETRIEVAL = common dso_local global i32 0, align 4
@NORMAL_CACHE_ENTRY = common dso_local global i32 0, align 4
@STICKY_CACHE_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_11__*, i32, i32)* @CRYPT_CacheURL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CRYPT_CacheURL(i32 %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @GetUrlCacheEntryInfoW(i32 %21, %struct.TYPE_10__* null, i32* %12)
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.TYPE_10__* @CryptMemAlloc(i32 %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %15, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %117

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %36 = call i64 @GetUrlCacheEntryInfoW(i32 %34, %struct.TYPE_10__* %35, i32* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @lstrcpyW(i32* %20, i32 %41)
  %43 = call i32 @GetSystemTimeAsFileTime(i32* %14)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = call i64 @CompareFileTime(i32* %45, i32* %14)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @DeleteUrlCacheEntryW(i32 %49)
  br label %61

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %57 = load i32, i32* @CACHE_ENTRY_EXPTIME_FC, align 4
  %58 = call i32 @SetUrlCacheEntryInfoW(i32 %55, %struct.TYPE_10__* %56, i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %60 = call i32 @CryptMemFree(%struct.TYPE_10__* %59)
  store i32 1, i32* %16, align 4
  br label %117

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %33
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %64 = call i32 @CryptMemFree(%struct.TYPE_10__* %63)
  br label %65

65:                                               ; preds = %62, %4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CreateUrlCacheEntryW(i32 %66, i32 %72, i32* null, i32* %20, i32 0)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  store i32 1, i32* %16, align 4
  br label %117

76:                                               ; preds = %65
  %77 = load i32, i32* @GENERIC_WRITE, align 4
  %78 = load i32, i32* @OPEN_EXISTING, align 4
  %79 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %80 = call i64 @CreateFileW(i32* %20, i32 %77, i32 0, i32* null, i32 %78, i32 %79, i32* null)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 1, i32* %16, align 4
  br label %117

85:                                               ; preds = %76
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @WriteFile(i64 %86, i32 %92, i32 %98, i32* %12, i32* null)
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @CloseHandle(i64 %100)
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @CRYPT_STICKY_CACHE_RETRIEVAL, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %85
  %107 = load i32, i32* @NORMAL_CACHE_ENTRY, align 4
  store i32 %107, i32* %13, align 4
  br label %110

108:                                              ; preds = %85
  %109 = load i32, i32* @STICKY_CACHE_ENTRY, align 4
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = call i32 @memset(i32* %14, i32 0, i32 4)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @CommitUrlCacheEntryW(i32 %112, i32* %20, i32 %113, i32 %114, i32 %115, i32* null, i32 0, i32* null, i32* null)
  store i32 0, i32* %16, align 4
  br label %117

117:                                              ; preds = %110, %84, %75, %51, %31
  %118 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %16, align 4
  switch i32 %119, label %121 [
    i32 0, label %120
    i32 1, label %120
  ]

120:                                              ; preds = %117, %117
  ret void

121:                                              ; preds = %117
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetUrlCacheEntryInfoW(i32, %struct.TYPE_10__*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local %struct.TYPE_10__* @CryptMemAlloc(i32) #2

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @lstrcpyW(i32*, i32) #2

declare dso_local i32 @GetSystemTimeAsFileTime(i32*) #2

declare dso_local i64 @CompareFileTime(i32*, i32*) #2

declare dso_local i32 @DeleteUrlCacheEntryW(i32) #2

declare dso_local i32 @SetUrlCacheEntryInfoW(i32, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @CryptMemFree(%struct.TYPE_10__*) #2

declare dso_local i32 @CreateUrlCacheEntryW(i32, i32, i32*, i32*, i32) #2

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @WriteFile(i64, i32, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CommitUrlCacheEntryW(i32, i32*, i32, i32, i32, i32*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
