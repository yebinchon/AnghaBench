; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUse.c_EnumerateConnections.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUse.c_EnumerateConnections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8* }

@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i32] [i32 37, i32 115, i32 9, i32 9, i32 9, i32 37, i32 115, i32 9, i32 9, i32 9, i32 9, i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 76, i32 111, i32 99, i32 97, i32 108, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 82, i32 101, i32 109, i32 111, i32 116, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 0], align 4
@RESOURCE_CONNECTED = common dso_local global i32 0, align 4
@RESOURCETYPE_DISK = common dso_local global i32 0, align 4
@WN_SUCCESS = common dso_local global i64 0, align 8
@WN_MORE_DATA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i32] [i32 37, i32 115, i32 9, i32 9, i32 9, i32 37, i32 115, i32 9, i32 9, i32 37, i32 115, i32 10, i32 0], align 4
@WN_NO_MORE_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @EnumerateConnections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EnumerateConnections(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store i64 4096, i64* %7, align 8
  store i64 -1, i64* %8, align 8
  %10 = load i32, i32* @StdOut, align 4
  %11 = call i32 @ConPrintf(i32 %10, i8* bitcast ([15 x i32]* @.str to i8*), i8* bitcast ([6 x i32]* @.str.1 to i8*), i8* bitcast ([7 x i32]* @.str.2 to i8*), i8* bitcast ([9 x i32]* @.str.3 to i8*))
  %12 = load i32, i32* @RESOURCE_CONNECTED, align 4
  %13 = load i32, i32* @RESOURCETYPE_DISK, align 4
  %14 = call i64 @WNetOpenEnum(i32 %12, i32 %13, i32 0, i32* null, i32* %5)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @WN_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i64 1, i64* %2, align 8
  br label %88

19:                                               ; preds = %1
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.TYPE_6__* @HeapAlloc(i32 %20, i32 0, i64 %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @WNetCloseEnum(i32 %26)
  store i64 1, i64* %2, align 8
  br label %88

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %78, %28
  store i64 4096, i64* %7, align 8
  store i64 -1, i64* %8, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @memset(%struct.TYPE_6__* %30, i32 0, i64 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = call i64 @WNetEnumResource(i32 %33, i64* %8, %struct.TYPE_6__* %34, i64* %7)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @WN_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @WN_MORE_DATA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %39, %29
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %9, align 8
  br label %45

45:                                               ; preds = %73, %43
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @wcsicmp(i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51, %48
  %59 = load i32, i32* @StdOut, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @ConPrintf(i32 %59, i8* bitcast ([13 x i32]* @.str.4 to i8*), i8* %62, i8* %65, i8* %68)
  br label %70

70:                                               ; preds = %58, %51
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 1
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %9, align 8
  br label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %8, align 8
  br label %45

76:                                               ; preds = %45
  br label %77

77:                                               ; preds = %76, %39
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @WN_NO_MORE_ENTRIES, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %29, label %82

82:                                               ; preds = %78
  %83 = call i32 (...) @GetProcessHeap()
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = call i32 @HeapFree(i32 %83, i32 0, %struct.TYPE_6__* %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @WNetCloseEnum(i32 %86)
  store i64 0, i64* %2, align 8
  br label %88

88:                                               ; preds = %82, %25, %18
  %89 = load i64, i64* %2, align 8
  ret i64 %89
}

declare dso_local i32 @ConPrintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @WNetOpenEnum(i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WNetCloseEnum(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i64 @WNetEnumResource(i32, i64*, %struct.TYPE_6__*, i64*) #1

declare dso_local i64 @wcsicmp(i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
