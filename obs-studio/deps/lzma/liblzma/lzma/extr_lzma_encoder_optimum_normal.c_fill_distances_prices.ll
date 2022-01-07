; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder_optimum_normal.c_fill_distances_prices.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder_optimum_normal.c_fill_distances_prices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64**, i64, i64**, i64, i64, i32* }

@LEN_TO_POS_STATES = common dso_local global i64 0, align 8
@POS_SLOT_BITS = common dso_local global i32 0, align 4
@END_POS_MODEL_INDEX = common dso_local global i64 0, align 8
@ALIGN_BITS = common dso_local global i64 0, align 8
@START_POS_MODEL_INDEX = common dso_local global i64 0, align 8
@FULL_DISTANCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @fill_distances_prices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_distances_prices(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %92, %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @LEN_TO_POS_STATES, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %95

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64**, i64*** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i64*, i64** %21, i64 %22
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %4, align 8
  store i64 0, i64* %5, align 8
  br label %25

25:                                               ; preds = %44, %18
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @POS_SLOT_BITS, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @rc_bittree_price(i32 %37, i32 %38, i64 %39)
  %41 = load i64*, i64** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %40, i64* %43, align 8
  br label %44

44:                                               ; preds = %31
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %25

47:                                               ; preds = %25
  %48 = load i64, i64* @END_POS_MODEL_INDEX, align 8
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %67, %47
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = lshr i64 %56, 1
  %58 = sub i64 %57, 1
  %59 = load i64, i64* @ALIGN_BITS, align 8
  %60 = sub i64 %58, %59
  %61 = call i64 @rc_direct_price(i64 %60)
  %62 = load i64*, i64** %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %61
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %55
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %49

70:                                               ; preds = %49
  store i64 0, i64* %7, align 8
  br label %71

71:                                               ; preds = %88, %70
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @START_POS_MODEL_INDEX, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load i64*, i64** %4, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i64**, i64*** %81, align 8
  %83 = load i64, i64* %3, align 8
  %84 = getelementptr inbounds i64*, i64** %82, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %79, i64* %87, align 8
  br label %88

88:                                               ; preds = %75
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %71

91:                                               ; preds = %71
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %3, align 8
  br label %14

95:                                               ; preds = %14
  %96 = load i64, i64* @START_POS_MODEL_INDEX, align 8
  store i64 %96, i64* %8, align 8
  br label %97

97:                                               ; preds = %153, %95
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @FULL_DISTANCES, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %97
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @get_pos_slot(i64 %102)
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %9, align 8
  %105 = lshr i64 %104, 1
  %106 = sub i64 %105, 1
  store i64 %106, i64* %10, align 8
  %107 = load i64, i64* %9, align 8
  %108 = and i64 %107, 1
  %109 = or i64 2, %108
  %110 = load i64, i64* %10, align 8
  %111 = shl i64 %109, %110
  store i64 %111, i64* %11, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %114, %115
  %117 = load i64, i64* %9, align 8
  %118 = sub i64 %116, %117
  %119 = sub i64 %118, 1
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %11, align 8
  %123 = sub i64 %121, %122
  %124 = call i64 @rc_bittree_reverse_price(i64 %119, i64 %120, i64 %123)
  store i64 %124, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %125

125:                                              ; preds = %149, %101
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* @LEN_TO_POS_STATES, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %125
  %130 = load i64, i64* %12, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64**, i64*** %132, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds i64*, i64** %133, i64 %134
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %9, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %130, %139
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i64**, i64*** %142, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds i64*, i64** %143, i64 %144
  %146 = load i64*, i64** %145, align 8
  %147 = load i64, i64* %8, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  store i64 %140, i64* %148, align 8
  br label %149

149:                                              ; preds = %129
  %150 = load i64, i64* %13, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %13, align 8
  br label %125

152:                                              ; preds = %125
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %8, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %8, align 8
  br label %97

156:                                              ; preds = %97
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  store i64 0, i64* %158, align 8
  ret void
}

declare dso_local i64 @rc_bittree_price(i32, i32, i64) #1

declare dso_local i64 @rc_direct_price(i64) #1

declare dso_local i64 @get_pos_slot(i64) #1

declare dso_local i64 @rc_bittree_reverse_price(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
