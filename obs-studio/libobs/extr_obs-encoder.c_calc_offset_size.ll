; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_calc_offset_size.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_calc_offset_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.obs_encoder*, i64, i64)* @calc_offset_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_offset_size(%struct.obs_encoder* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.obs_encoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.obs_encoder* %0, %struct.obs_encoder** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = sub i64 %8, %9
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.obs_encoder*, %struct.obs_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = mul i64 %11, %14
  %16 = udiv i64 %15, 1000000000
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.obs_encoder*, %struct.obs_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = mul i64 %17, %20
  ret i64 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
