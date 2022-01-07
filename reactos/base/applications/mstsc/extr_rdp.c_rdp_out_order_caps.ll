; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_out_order_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_out_order_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_bitmap_cache = common dso_local global i64 0, align 8
@g_desktop_save = common dso_local global i64 0, align 8
@g_polygon_ellipse_orders = common dso_local global i64 0, align 8
@RDP_CAPSET_ORDER = common dso_local global i32 0, align 4
@RDP_CAPLEN_ORDER = common dso_local global i32 0, align 4
@False = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rdp_out_order_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_out_order_caps(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [32 x i32], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %5 = call i32 @memset(i32* %4, i32 0, i32 32)
  %6 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  store i32 1, i32* %6, align 16
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 1
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 2
  store i32 1, i32* %8, align 8
  %9 = load i64, i64* @g_bitmap_cache, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 3
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 4
  store i32 0, i32* %14, align 16
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 8
  store i32 1, i32* %15, align 16
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 9
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 10
  store i32 1, i32* %17, align 8
  %18 = load i64, i64* @g_desktop_save, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 11
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 13
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 14
  store i32 1, i32* %24, align 8
  %25 = load i64, i64* @g_polygon_ellipse_orders, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 20
  store i32 %28, i32* %29, align 16
  %30 = load i64, i64* @g_polygon_ellipse_orders, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 21
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 22
  store i32 1, i32* %35, align 8
  %36 = load i64, i64* @g_polygon_ellipse_orders, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 25
  store i32 %39, i32* %40, align 4
  %41 = load i64, i64* @g_polygon_ellipse_orders, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 26
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 27
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @RDP_CAPSET_ORDER, align 4
  %49 = call i32 @out_uint16_le(i32 %47, i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @RDP_CAPLEN_ORDER, align 4
  %52 = call i32 @out_uint16_le(i32 %50, i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @out_uint8s(i32 %53, i32 20)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @out_uint16_le(i32 %55, i32 1)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @out_uint16_le(i32 %57, i32 20)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @out_uint16(i32 %59, i32 0)
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @out_uint16_le(i32 %61, i32 1)
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @out_uint16_le(i32 %63, i32 327)
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @out_uint16_le(i32 %65, i32 42)
  %67 = load i32, i32* %2, align 4
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %69 = call i32 @out_uint8p(i32 %67, i32* %68, i32 32)
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @out_uint16_le(i32 %70, i32 1697)
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @out_uint8s(i32 %72, i32 6)
  %74 = load i32, i32* %2, align 4
  %75 = load i64, i64* @g_desktop_save, align 8
  %76 = load i64, i64* @False, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 230400
  %80 = call i32 @out_uint32_le(i32 %74, i32 %79)
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @out_uint32(i32 %81, i32 0)
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @out_uint32_le(i32 %83, i32 1252)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint8s(i32, i32) #1

declare dso_local i32 @out_uint16(i32, i32) #1

declare dso_local i32 @out_uint8p(i32, i32*, i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @out_uint32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
