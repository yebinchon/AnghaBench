; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_get_dxtn_conversion_func.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_get_dxtn_conversion_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wined3d_dxt1_encode = common dso_local global i32* null, align 8
@wined3d_dxt1_decode = common dso_local global i32* null, align 8
@wined3d_dxt3_encode = common dso_local global i32* null, align 8
@wined3d_dxt3_decode = common dso_local global i32* null, align 8
@wined3d_dxt5_encode = common dso_local global i32* null, align 8
@wined3d_dxt5_decode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @get_dxtn_conversion_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dxtn_conversion_func(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %34 [
    i32 130, label %7
    i32 129, label %16
    i32 128, label %25
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32*, i32** @wined3d_dxt1_encode, align 8
  br label %14

12:                                               ; preds = %7
  %13 = load i32*, i32** @wined3d_dxt1_decode, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32* [ %11, %10 ], [ %13, %12 ]
  store i32* %15, i32** %3, align 8
  br label %35

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** @wined3d_dxt3_encode, align 8
  br label %23

21:                                               ; preds = %16
  %22 = load i32*, i32** @wined3d_dxt3_decode, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32* [ %20, %19 ], [ %22, %21 ]
  store i32* %24, i32** %3, align 8
  br label %35

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32*, i32** @wined3d_dxt5_encode, align 8
  br label %32

30:                                               ; preds = %25
  %31 = load i32*, i32** @wined3d_dxt5_decode, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32* [ %29, %28 ], [ %31, %30 ]
  store i32* %33, i32** %3, align 8
  br label %35

34:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %35

35:                                               ; preds = %34, %32, %23, %14
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
