; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_d3dx9_private.h_is_conversion_to_supported.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_d3dx9_private.h_is_conversion_to_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixel_format_desc = type { i64, i32 }

@FORMAT_ARGB = common dso_local global i64 0, align 8
@FORMAT_ARGBF16 = common dso_local global i64 0, align 8
@FORMAT_ARGBF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pixel_format_desc*)* @is_conversion_to_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_conversion_to_supported(%struct.pixel_format_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pixel_format_desc*, align 8
  store %struct.pixel_format_desc* %0, %struct.pixel_format_desc** %3, align 8
  %4 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %3, align 8
  %5 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FORMAT_ARGB, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %3, align 8
  %11 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FORMAT_ARGBF16, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %3, align 8
  %17 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FORMAT_ARGBF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %9, %1
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %15
  %24 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %3, align 8
  %25 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
