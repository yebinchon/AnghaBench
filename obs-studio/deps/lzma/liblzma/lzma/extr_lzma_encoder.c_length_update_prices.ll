; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_length_update_prices.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_length_update_prices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64*, i64**, i32, i32*, i32*, i32, i32 }

@LEN_LOW_SYMBOLS = common dso_local global i64 0, align 8
@LEN_LOW_BITS = common dso_local global i32 0, align 4
@LEN_MID_SYMBOLS = common dso_local global i64 0, align 8
@LEN_MID_BITS = common dso_local global i32 0, align 4
@LEN_HIGH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @length_update_prices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @length_update_prices(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %15, i64* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @rc_bit_0_price(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @rc_bit_1_price(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @rc_bit_0_price(i32 %32)
  %34 = add i64 %29, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @rc_bit_1_price(i32 %38)
  %40 = add i64 %35, %39
  store i64 %40, i64* %9, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64**, i64*** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i64*, i64** %43, i64 %44
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %10, align 8
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %72, %2
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @LEN_LOW_SYMBOLS, align 8
  %54 = icmp ult i64 %52, %53
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ false, %47 ], [ %54, %51 ]
  br i1 %56, label %57, label %75

57:                                               ; preds = %55
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LEN_LOW_BITS, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @rc_bittree_price(i32 %64, i32 %65, i64 %66)
  %68 = add i64 %58, %67
  %69 = load i64*, i64** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 %68, i64* %71, align 8
  br label %72

72:                                               ; preds = %57
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %11, align 8
  br label %47

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %105, %75
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @LEN_LOW_SYMBOLS, align 8
  %83 = load i64, i64* @LEN_MID_SYMBOLS, align 8
  %84 = add i64 %82, %83
  %85 = icmp ult i64 %81, %84
  br label %86

86:                                               ; preds = %80, %76
  %87 = phi i1 [ false, %76 ], [ %85, %80 ]
  br i1 %87, label %88, label %108

88:                                               ; preds = %86
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @LEN_MID_BITS, align 4
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @LEN_LOW_SYMBOLS, align 8
  %99 = sub i64 %97, %98
  %100 = call i64 @rc_bittree_price(i32 %95, i32 %96, i64 %99)
  %101 = add i64 %89, %100
  %102 = load i64*, i64** %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  store i64 %101, i64* %104, align 8
  br label %105

105:                                              ; preds = %88
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %76

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %129, %108
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %5, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %109
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @LEN_HIGH_BITS, align 4
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* @LEN_LOW_SYMBOLS, align 8
  %121 = sub i64 %119, %120
  %122 = load i64, i64* @LEN_MID_SYMBOLS, align 8
  %123 = sub i64 %121, %122
  %124 = call i64 @rc_bittree_price(i32 %117, i32 %118, i64 %123)
  %125 = add i64 %114, %124
  %126 = load i64*, i64** %10, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 %125, i64* %128, align 8
  br label %129

129:                                              ; preds = %113
  %130 = load i64, i64* %11, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %11, align 8
  br label %109

132:                                              ; preds = %109
  ret void
}

declare dso_local i64 @rc_bit_0_price(i32) #1

declare dso_local i64 @rc_bit_1_price(i32) #1

declare dso_local i64 @rc_bittree_price(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
