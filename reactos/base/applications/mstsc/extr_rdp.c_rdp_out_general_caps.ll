; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_out_general_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_out_general_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDP_CAPSET_GENERAL = common dso_local global i32 0, align 4
@RDP_CAPLEN_GENERAL = common dso_local global i32 0, align 4
@g_rdp_version = common dso_local global i64 0, align 8
@RDP_V5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rdp_out_general_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_out_general_caps(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @RDP_CAPSET_GENERAL, align 4
  %5 = call i32 @out_uint16_le(i32 %3, i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @RDP_CAPLEN_GENERAL, align 4
  %8 = call i32 @out_uint16_le(i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @out_uint16_le(i32 %9, i32 1)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @out_uint16_le(i32 %11, i32 3)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @out_uint16_le(i32 %13, i32 512)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @out_uint16(i32 %15, i32 0)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @out_uint16(i32 %17, i32 0)
  %19 = load i32, i32* %2, align 4
  %20 = load i64, i64* @g_rdp_version, align 8
  %21 = load i64, i64* @RDP_V5, align 8
  %22 = icmp sge i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1037, i32 0
  %25 = call i32 @out_uint16_le(i32 %19, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @out_uint16(i32 %26, i32 0)
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @out_uint16(i32 %28, i32 0)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @out_uint16(i32 %30, i32 0)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @out_uint16(i32 %32, i32 0)
  ret void
}

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
