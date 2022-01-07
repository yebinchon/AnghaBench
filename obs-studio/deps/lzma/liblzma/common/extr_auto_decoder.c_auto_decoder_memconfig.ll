; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_auto_decoder.c_auto_decoder_memconfig.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_auto_decoder.c_auto_decoder_memconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32, i64*, i64*, i64)*, i32 }

@LZMA_MEMUSAGE_BASE = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64*, i64*, i64)* @auto_decoder_memconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @auto_decoder_memconfig(%struct.TYPE_5__* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64 (i32, i64*, i64*, i64)*, i64 (i32, i64*, i64*, i64)** %12, align 8
  %14 = icmp ne i64 (i32, i64*, i64*, i64)* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64 (i32, i64*, i64*, i64)*, i64 (i32, i64*, i64*, i64)** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 %19(i32 %23, i64* %24, i64* %25, i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  br label %44

36:                                               ; preds = %4
  %37 = load i64, i64* @LZMA_MEMUSAGE_BASE, align 8
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* @LZMA_OK, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %36, %15
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @LZMA_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %48, %44
  %56 = load i64, i64* %9, align 8
  ret i64 %56
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
