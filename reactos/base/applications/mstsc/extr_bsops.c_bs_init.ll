; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_init.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_bs = common dso_local global i64 0, align 8
@g_width1 = common dso_local global i32 0, align 4
@g_height1 = common dso_local global i32 0, align 4
@g_bpp = common dso_local global i32 0, align 4
@g_Bpp = common dso_local global i32 0, align 4
@g_bs_size = common dso_local global i32 0, align 4
@g_clip_left1 = common dso_local global i64 0, align 8
@g_clip_top1 = common dso_local global i64 0, align 8
@g_clip_right1 = common dso_local global i32 0, align 4
@g_clip_bottom1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bs_init(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @g_bs, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i64, i64* @g_bs, align 8
  %11 = call i32 @free(i64 %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* @g_width1, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* @g_height1, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* @g_bpp, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 7
  %18 = sdiv i32 %17, 8
  store i32 %18, i32* @g_Bpp, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @g_Bpp, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* @g_bs_size, align 4
  %24 = load i32, i32* @g_bs_size, align 4
  %25 = call i64 @malloc(i32 %24)
  store i64 %25, i64* @g_bs, align 8
  %26 = load i64, i64* @g_bs, align 8
  %27 = load i32, i32* @g_bs_size, align 4
  %28 = call i32 @memset(i64 %26, i32 0, i32 %27)
  store i64 0, i64* @g_clip_left1, align 8
  store i64 0, i64* @g_clip_top1, align 8
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* @g_clip_right1, align 4
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* @g_clip_bottom1, align 4
  ret void
}

declare dso_local i32 @free(i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
