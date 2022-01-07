; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_set_gpu_converted_plane.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_set_gpu_converted_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64, i64, i64, i32*, i32*)* @set_gpu_converted_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_gpu_converted_plane(i64 %0, i64 %1, i64 %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %6
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = mul i64 %23, %24
  store i64 %25, i64* %13, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @memcpy(i32* %26, i32* %27, i64 %28)
  %30 = load i64, i64* %13, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  store i32* %32, i32** %11, align 8
  br label %53

33:                                               ; preds = %18, %6
  store i64 0, i64* %14, align 8
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @memcpy(i32* %39, i32* %40, i64 %41)
  %43 = load i64, i64* %10, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 %43
  store i32* %45, i32** %12, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32* %48, i32** %11, align 8
  br label %49

49:                                               ; preds = %38
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %14, align 8
  br label %34

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i32*, i32** %11, align 8
  ret i32* %54
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
