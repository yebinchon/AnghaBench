; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_block_buffer_encoder.c_lzma2_bound.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_block_buffer_encoder.c_lzma2_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPRESSED_SIZE_MAX = common dso_local global i32 0, align 4
@LZMA2_CHUNK_MAX = common dso_local global i32 0, align 4
@LZMA2_HEADER_UNCOMPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lzma2_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma2_bound(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @COMPRESSED_SIZE_MAX, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @LZMA2_CHUNK_MAX, align 4
  %12 = add nsw i32 %10, %11
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* @LZMA2_CHUNK_MAX, align 4
  %15 = sdiv i32 %13, %14
  %16 = load i32, i32* @LZMA2_HEADER_UNCOMPRESSED, align 4
  %17 = mul nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @COMPRESSED_SIZE_MAX, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %29

25:                                               ; preds = %9
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %24, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
