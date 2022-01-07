; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_out_bmpcache2_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_out_bmpcache2_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDP_CAPSET_BMPCACHE2 = common dso_local global i32 0, align 4
@RDP_CAPLEN_BMPCACHE2 = common dso_local global i32 0, align 4
@g_bitmap_cache_persist_enable = common dso_local global i64 0, align 8
@BMPCACHE2_C0_CELLS = common dso_local global i32 0, align 4
@BMPCACHE2_C1_CELLS = common dso_local global i32 0, align 4
@BMPCACHE2_NUM_PSTCELLS = common dso_local global i32 0, align 4
@BMPCACHE2_FLAG_PERSIST = common dso_local global i32 0, align 4
@BMPCACHE2_C2_CELLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rdp_out_bmpcache2_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_out_bmpcache2_caps(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @RDP_CAPSET_BMPCACHE2, align 4
  %5 = call i32 @out_uint16_le(i32 %3, i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @RDP_CAPLEN_BMPCACHE2, align 4
  %8 = call i32 @out_uint16_le(i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i64, i64* @g_bitmap_cache_persist_enable, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 2, i32 0
  %14 = call i32 @out_uint16_le(i32 %9, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @out_uint16_be(i32 %15, i32 3)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @BMPCACHE2_C0_CELLS, align 4
  %19 = call i32 @out_uint32_le(i32 %17, i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @BMPCACHE2_C1_CELLS, align 4
  %22 = call i32 @out_uint32_le(i32 %20, i32 %21)
  %23 = call i64 @pstcache_init(i32 2)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @BMPCACHE2_NUM_PSTCELLS, align 4
  %28 = load i32, i32* @BMPCACHE2_FLAG_PERSIST, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @out_uint32_le(i32 %26, i32 %29)
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @BMPCACHE2_C2_CELLS, align 4
  %34 = call i32 @out_uint32_le(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @out_uint8s(i32 %36, i32 20)
  ret void
}

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint16_be(i32, i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i64 @pstcache_init(i32) #1

declare dso_local i32 @out_uint8s(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
