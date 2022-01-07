; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_bench.c_LZ4_buildCompressionParameters.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_bench.c_LZ4_buildCompressionParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressionParameters = type { i32, i8*, i32, i32, i32, i32, i32 }

@LZ4HC_CLEVEL_MIN = common dso_local global i32 0, align 4
@LZ4_compressInitStream = common dso_local global i32 0, align 4
@LZ4_compressResetStream = common dso_local global i32 0, align 4
@LZ4_compressBlockStream = common dso_local global i32 0, align 4
@LZ4_compressCleanupStream = common dso_local global i32 0, align 4
@LZ4_compressInitStreamHC = common dso_local global i32 0, align 4
@LZ4_compressResetStreamHC = common dso_local global i32 0, align 4
@LZ4_compressBlockStreamHC = common dso_local global i32 0, align 4
@LZ4_compressCleanupStreamHC = common dso_local global i32 0, align 4
@LZ4_compressInitNoStream = common dso_local global i32 0, align 4
@LZ4_compressResetNoStream = common dso_local global i32 0, align 4
@LZ4_compressCleanupNoStream = common dso_local global i32 0, align 4
@LZ4_compressBlockNoStream = common dso_local global i32 0, align 4
@LZ4_compressBlockNoStreamHC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.compressionParameters*, i32, i8*, i32)* @LZ4_buildCompressionParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LZ4_buildCompressionParameters(%struct.compressionParameters* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.compressionParameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.compressionParameters* %0, %struct.compressionParameters** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %11 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %14 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %17 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @LZ4HC_CLEVEL_MIN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, i32* @LZ4_compressInitStream, align 4
  %26 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %27 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @LZ4_compressResetStream, align 4
  %29 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %30 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @LZ4_compressBlockStream, align 4
  %32 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %33 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @LZ4_compressCleanupStream, align 4
  %35 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %36 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  br label %50

37:                                               ; preds = %20
  %38 = load i32, i32* @LZ4_compressInitStreamHC, align 4
  %39 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %40 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @LZ4_compressResetStreamHC, align 4
  %42 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %43 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @LZ4_compressBlockStreamHC, align 4
  %45 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %46 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @LZ4_compressCleanupStreamHC, align 4
  %48 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %49 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %37, %24
  br label %73

51:                                               ; preds = %4
  %52 = load i32, i32* @LZ4_compressInitNoStream, align 4
  %53 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %54 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @LZ4_compressResetNoStream, align 4
  %56 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %57 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @LZ4_compressCleanupNoStream, align 4
  %59 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %60 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @LZ4HC_CLEVEL_MIN, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load i32, i32* @LZ4_compressBlockNoStream, align 4
  %66 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %67 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %51
  %69 = load i32, i32* @LZ4_compressBlockNoStreamHC, align 4
  %70 = load %struct.compressionParameters*, %struct.compressionParameters** %5, align 8
  %71 = getelementptr inbounds %struct.compressionParameters, %struct.compressionParameters* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
