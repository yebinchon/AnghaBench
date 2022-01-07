; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_length.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i32, i32, i32*, i32, i32* }

@MATCH_LEN_MAX = common dso_local global i64 0, align 8
@MATCH_LEN_MIN = common dso_local global i64 0, align 8
@LEN_LOW_SYMBOLS = common dso_local global i64 0, align 8
@LEN_LOW_BITS = common dso_local global i32 0, align 4
@LEN_MID_SYMBOLS = common dso_local global i64 0, align 8
@LEN_MID_BITS = common dso_local global i32 0, align 4
@LEN_HIGH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i64, i64, i32)* @length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @length(i32* %0, %struct.TYPE_4__* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* @MATCH_LEN_MAX, align 8
  %13 = icmp sle i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* @MATCH_LEN_MIN, align 8
  %17 = load i64, i64* %9, align 8
  %18 = sub nsw i64 %17, %16
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @LEN_LOW_SYMBOLS, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = call i32 @rc_bit(i32* %23, i32* %25, i32 0)
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LEN_LOW_BITS, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @rc_bittree(i32* %27, i32 %33, i32 %34, i64 %35)
  br label %79

37:                                               ; preds = %5
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = call i32 @rc_bit(i32* %38, i32* %40, i32 1)
  %42 = load i64, i64* @LEN_LOW_SYMBOLS, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @LEN_MID_SYMBOLS, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %37
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = call i32 @rc_bit(i32* %49, i32* %51, i32 0)
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @LEN_MID_BITS, align 4
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @rc_bittree(i32* %53, i32 %59, i32 %60, i64 %61)
  br label %78

63:                                               ; preds = %37
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = call i32 @rc_bit(i32* %64, i32* %66, i32 1)
  %68 = load i64, i64* @LEN_MID_SYMBOLS, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @LEN_HIGH_BITS, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @rc_bittree(i32* %71, i32 %74, i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %63, %48
  br label %79

79:                                               ; preds = %78, %22
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %87, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @length_update_prices(%struct.TYPE_4__* %92, i64 %93)
  br label %95

95:                                               ; preds = %91, %82
  br label %96

96:                                               ; preds = %95, %79
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rc_bit(i32*, i32*, i32) #1

declare dso_local i32 @rc_bittree(i32*, i32, i32, i64) #1

declare dso_local i32 @length_update_prices(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
