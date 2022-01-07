; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_vflip.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_vflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32, i32*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_image_vflip(%struct.mp_image* %0) #0 {
  %2 = alloca %struct.mp_image*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %54, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %8 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %5
  %12 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @mp_image_plane_h(%struct.mp_image* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %16 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %23 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  %31 = mul nsw i32 %28, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %21, %32
  %34 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %35 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 %33, i64* %39, align 8
  %40 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %41 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 0, %46
  %48 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %49 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %11
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %5

57:                                               ; preds = %5
  ret void
}

declare dso_local i32 @mp_image_plane_h(%struct.mp_image*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
