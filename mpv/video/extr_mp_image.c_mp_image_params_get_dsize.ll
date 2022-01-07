; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_params_get_dsize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_params_get_dsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image_params = type { i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_image_params_get_dsize(%struct.mp_image_params* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mp_image_params*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.mp_image_params* %0, %struct.mp_image_params** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %8 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %12 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %16 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %19 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %3
  %23 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %24 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 1
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %31 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %35 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %33, %36
  %38 = load i32, i32* @INT_MAX, align 4
  %39 = call i32 @MPCLAMP(i32 %37, i32 1, i32 %38)
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %27, %22, %3
  %42 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %43 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %46 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %51 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 1
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %58 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %62 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %60, %63
  %65 = load i32, i32* @INT_MAX, align 4
  %66 = call i32 @MPCLAMP(i32 %64, i32 1, i32 %65)
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %54, %49, %41
  ret void
}

declare dso_local i32 @MPCLAMP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
