; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder_optimum_normal.c_get_pos_len_price.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder_optimum_normal.c_get_pos_len_price.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64**, i64**, i64*, i32 }

@FULL_DISTANCES = common dso_local global i64 0, align 8
@ALIGN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64, i64)* @get_pos_len_price to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_pos_len_price(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @get_len_to_pos_state(i64 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @FULL_DISTANCES, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64**, i64*** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i64*, i64** %20, i64 %21
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  br label %48

27:                                               ; preds = %4
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @get_pos_slot_2(i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64**, i64*** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i64*, i64** %32, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @ALIGN_MASK, align 8
  %44 = and i64 %42, %43
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %38, %46
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %27, %17
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @get_len_price(i32* %50, i64 %51, i64 %52)
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  ret i64 %56
}

declare dso_local i64 @get_len_to_pos_state(i64) #1

declare dso_local i64 @get_pos_slot_2(i64) #1

declare dso_local i64 @get_len_price(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
