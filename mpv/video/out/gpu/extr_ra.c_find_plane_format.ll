; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_find_plane_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_find_plane_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_format = type { i32 }
%struct.ra = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ra_format* (%struct.ra*, i32, i32, i32)* @find_plane_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ra_format* @find_plane_format(%struct.ra* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ra_format*, align 8
  %6 = alloca %struct.ra*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ra_format*, align 8
  store %struct.ra* %0, %struct.ra** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  switch i32 %11, label %31 [
    i32 128, label %12
    i32 129, label %26
  ]

12:                                               ; preds = %4
  %13 = load %struct.ra*, %struct.ra** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.ra_format* @ra_find_unorm_format(%struct.ra* %13, i32 %14, i32 %15)
  store %struct.ra_format* %16, %struct.ra_format** %10, align 8
  %17 = load %struct.ra_format*, %struct.ra_format** %10, align 8
  %18 = icmp ne %struct.ra_format* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load %struct.ra_format*, %struct.ra_format** %10, align 8
  store %struct.ra_format* %20, %struct.ra_format** %5, align 8
  br label %32

21:                                               ; preds = %12
  %22 = load %struct.ra*, %struct.ra** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.ra_format* @ra_find_uint_format(%struct.ra* %22, i32 %23, i32 %24)
  store %struct.ra_format* %25, %struct.ra_format** %5, align 8
  br label %32

26:                                               ; preds = %4
  %27 = load %struct.ra*, %struct.ra** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.ra_format* @ra_find_float_format(%struct.ra* %27, i32 %28, i32 %29)
  store %struct.ra_format* %30, %struct.ra_format** %5, align 8
  br label %32

31:                                               ; preds = %4
  store %struct.ra_format* null, %struct.ra_format** %5, align 8
  br label %32

32:                                               ; preds = %31, %26, %21, %19
  %33 = load %struct.ra_format*, %struct.ra_format** %5, align 8
  ret %struct.ra_format* %33
}

declare dso_local %struct.ra_format* @ra_find_unorm_format(%struct.ra*, i32, i32) #1

declare dso_local %struct.ra_format* @ra_find_uint_format(%struct.ra*, i32, i32) #1

declare dso_local %struct.ra_format* @ra_find_float_format(%struct.ra*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
