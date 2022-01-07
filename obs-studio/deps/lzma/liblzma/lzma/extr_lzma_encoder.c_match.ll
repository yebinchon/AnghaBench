; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_match.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64*, i32, i32, i32, i32*, i32, i32, i32 }

@POS_SLOT_BITS = common dso_local global i32 0, align 4
@START_POS_MODEL_INDEX = common dso_local global i64 0, align 8
@END_POS_MODEL_INDEX = common dso_local global i64 0, align 8
@ALIGN_BITS = common dso_local global i64 0, align 8
@ALIGN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64, i64)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @update_match(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @length(i32* %19, i32* %21, i64 %22, i64 %23, i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @get_pos_slot(i64 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @get_len_to_pos_state(i64 %30)
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @POS_SLOT_BITS, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @rc_bittree(i32* %33, i32 %39, i32 %40, i64 %41)
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @START_POS_MODEL_INDEX, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %100

46:                                               ; preds = %4
  %47 = load i64, i64* %9, align 8
  %48 = lshr i64 %47, 1
  %49 = sub i64 %48, 1
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %9, align 8
  %51 = and i64 %50, 1
  %52 = or i64 2, %51
  %53 = load i64, i64* %11, align 8
  %54 = shl i64 %52, %53
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @END_POS_MODEL_INDEX, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %46
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %66, %67
  %69 = load i64, i64* %9, align 8
  %70 = sub i64 %68, %69
  %71 = sub i64 %70, 1
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @rc_bittree_reverse(i32* %63, i64 %71, i64 %72, i64 %73)
  br label %99

75:                                               ; preds = %46
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @ALIGN_BITS, align 8
  %80 = lshr i64 %78, %79
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @ALIGN_BITS, align 8
  %83 = sub i64 %81, %82
  %84 = call i32 @rc_direct(i32* %77, i64 %80, i64 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ALIGN_BITS, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @ALIGN_MASK, align 8
  %93 = and i64 %91, %92
  %94 = call i32 @rc_bittree_reverse(i32* %86, i64 %89, i64 %90, i64 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %75, %61
  br label %100

100:                                              ; preds = %99, %4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 3
  store i64 %105, i64* %109, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  store i64 %114, i64* %118, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  store i64 %123, i64* %127, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  store i64 %128, i64* %132, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  ret void
}

declare dso_local i32 @update_match(i32) #1

declare dso_local i32 @length(i32*, i32*, i64, i64, i32) #1

declare dso_local i64 @get_pos_slot(i64) #1

declare dso_local i64 @get_len_to_pos_state(i64) #1

declare dso_local i32 @rc_bittree(i32*, i32, i32, i64) #1

declare dso_local i32 @rc_bittree_reverse(i32*, i64, i64, i64) #1

declare dso_local i32 @rc_direct(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
