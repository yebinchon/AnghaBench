; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdConfig.c_DisplayServerConfig.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdConfig.c_DisplayServerConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@NERR_Success = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 92, i32 92, i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 37, i32 115, i32 10, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [9 x i32] [i32 37, i32 108, i32 117, i32 46, i32 37, i32 108, i32 117, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [15 x i32] [i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 37, i32 115, i32 32, i32 40, i32 37, i32 115, i32 41, i32 10, i32 0], align 4
@SV_HIDDEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 117, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [6 x i32] [i32 46, i32 46, i32 46, i32 10, i32 10, i32 0], align 4
@SV_NODISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @DisplayServerConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisplayServerConfig(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  store i32 38, i32* %7, align 4
  %9 = bitcast %struct.TYPE_5__** %3 to i32*
  %10 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %11 = call i64 @NetServerTransportEnum(i32* null, i32 0, i32* %9, i32 %10, i64* %4, i64* %5, i32* null)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @NERR_Success, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %109

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @PrintPaddedMessageString(i32 4481, i32 %17)
  %19 = load i32, i32* @StdOut, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, i32, ...) @ConPrintf(i32 %19, i8* bitcast ([6 x i32]* @.str to i8*), i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @PrintPaddedMessageString(i32 4482, i32 %24)
  %26 = load i32, i32* @StdOut, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, i32, ...) @ConPrintf(i32 %26, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @PrintPaddedMessageString(i32 4484, i32 %31)
  %33 = load i32, i32* @StdOut, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, i32, ...) @ConPrintf(i32 %33, i8* bitcast ([9 x i32]* @.str.2 to i8*), i32 %36, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @PrintPaddedMessageString(i32 4489, i32 %41)
  %43 = load i32, i32* @StdOut, align 4
  %44 = call i32 @ConPuts(i32 %43, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  store i64 0, i64* %6, align 8
  br label %45

45:                                               ; preds = %64, %16
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i32, i32* @StdOut, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  %57 = ptrtoint i32* %56 to i32
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, i32, ...) @ConPrintf(i32 %50, i8* bitcast ([15 x i32]* @.str.4 to i8*), i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %49
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %45

67:                                               ; preds = %45
  %68 = load i32, i32* @StdOut, align 4
  %69 = call i32 @ConPuts(i32 %68, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @PrintPaddedMessageString(i32 4492, i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SV_HIDDEN, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 4300, i32 4301
  %79 = call i32 @PrintMessageString(i32 %78)
  %80 = load i32, i32* @StdOut, align 4
  %81 = call i32 @ConPuts(i32 %80, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @PrintPaddedMessageString(i32 4506, i32 %82)
  %84 = load i32, i32* @StdOut, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, i32, ...) @ConPrintf(i32 %84, i8* bitcast ([5 x i32]* @.str.5 to i8*), i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @PrintPaddedMessageString(i32 4511, i32 %89)
  %91 = load i32, i32* @StdOut, align 4
  %92 = call i32 @ConPuts(i32 %91, i8* bitcast ([6 x i32]* @.str.6 to i8*))
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @PrintPaddedMessageString(i32 4520, i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SV_NODISC, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %67
  %101 = call i32 @PrintMessageString(i32 4306)
  br label %108

102:                                              ; preds = %67
  %103 = load i32, i32* @StdOut, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, i32, ...) @ConPrintf(i32 %103, i8* bitcast ([5 x i32]* @.str.5 to i8*), i32 %106)
  br label %108

108:                                              ; preds = %102, %100
  br label %109

109:                                              ; preds = %108, %15
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = icmp ne %struct.TYPE_5__* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = call i32 @NetApiBufferFree(%struct.TYPE_5__* %113)
  br label %115

115:                                              ; preds = %112, %109
  ret i32 0
}

declare dso_local i64 @NetServerTransportEnum(i32*, i32, i32*, i32, i64*, i64*, i32*) #1

declare dso_local i32 @PrintPaddedMessageString(i32, i32) #1

declare dso_local i32 @ConPrintf(i32, i8*, i32, ...) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
