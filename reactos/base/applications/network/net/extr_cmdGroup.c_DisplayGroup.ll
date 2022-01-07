; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdGroup.c_DisplayGroup.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdGroup.c_DisplayGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@NERR_Success = common dso_local global i64 0, align 8
@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @DisplayGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DisplayGroup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  store i64* null, i64** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 15, i32* %11, align 4
  %13 = load i64, i64* %3, align 8
  %14 = bitcast %struct.TYPE_4__** %4 to i32*
  %15 = call i64 @NetGroupGetInfo(i32* null, i64 %13, i32 1, i32* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @NERR_Success, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* %12, align 8
  store i64 %20, i64* %2, align 8
  br label %129

21:                                               ; preds = %1
  %22 = load i64, i64* %3, align 8
  %23 = bitcast %struct.TYPE_4__** %5 to i32*
  %24 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %25 = call i64 @NetGroupGetUsers(i32* null, i64 %22, i32 0, i32* %23, i32 %24, i32* %7, i32* %8, i32* %9)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @NERR_Success, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %108

30:                                               ; preds = %21
  %31 = call i32 (...) @RtlGetProcessHeap()
  %32 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i64* @RtlAllocateHeap(i32 %31, i32 %32, i32 %36)
  store i64* %37, i64** %6, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = icmp eq i64* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %41, i64* %12, align 8
  br label %108

42:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %53, i64* %57, align 8
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @PrintPaddedMessageString(i32 4401, i32 %62)
  %64 = load i32, i32* @StdOut, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ConPrintf(i32 %64, i8* bitcast ([4 x i32]* @.str to i8*), i64 %67)
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @PrintPaddedMessageString(i32 4402, i32 %69)
  %71 = load i32, i32* @StdOut, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ConPrintf(i32 %71, i8* bitcast ([4 x i32]* @.str to i8*), i64 %74)
  %76 = load i32, i32* @StdOut, align 4
  %77 = call i32 @ConPuts(i32 %76, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %78 = call i32 @PrintMessageString(i32 4403)
  %79 = load i32, i32* @StdOut, align 4
  %80 = call i32 @ConPuts(i32 %79, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %81 = call i32 @PrintPadding(i32 45, i32 79)
  %82 = load i32, i32* @StdOut, align 4
  %83 = call i32 @ConPuts(i32 %82, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %104, %61
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load i64*, i64** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i32, i32* @StdOut, align 4
  %97 = load i64*, i64** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ConPrintf(i32 %96, i8* bitcast ([4 x i32]* @.str to i8*), i64 %101)
  br label %103

103:                                              ; preds = %95, %88
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %84

107:                                              ; preds = %84
  br label %108

108:                                              ; preds = %107, %40, %29
  %109 = load i64*, i64** %6, align 8
  %110 = icmp ne i64* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = call i32 (...) @RtlGetProcessHeap()
  %113 = load i64*, i64** %6, align 8
  %114 = call i32 @RtlFreeHeap(i32 %112, i32 0, i64* %113)
  br label %115

115:                                              ; preds = %111, %108
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = icmp ne %struct.TYPE_4__* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = call i32 @NetApiBufferFree(%struct.TYPE_4__* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = icmp ne %struct.TYPE_4__* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = call i32 @NetApiBufferFree(%struct.TYPE_4__* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i64, i64* %12, align 8
  store i64 %128, i64* %2, align 8
  br label %129

129:                                              ; preds = %127, %19
  %130 = load i64, i64* %2, align 8
  ret i64 %130
}

declare dso_local i64 @NetGroupGetInfo(i32*, i64, i32, i32*) #1

declare dso_local i64 @NetGroupGetUsers(i32*, i64, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @PrintPaddedMessageString(i32, i32) #1

declare dso_local i32 @ConPrintf(i32, i8*, i64) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @PrintPadding(i32, i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i64*) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
