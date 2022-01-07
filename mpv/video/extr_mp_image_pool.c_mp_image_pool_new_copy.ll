; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_image_pool_new_copy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_image_pool_new_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image_pool = type { i32 }
%struct.mp_image = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @mp_image_pool_new_copy(%struct.mp_image_pool* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.mp_image_pool*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.mp_image*, align 8
  store %struct.mp_image_pool* %0, %struct.mp_image_pool** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %6 = load %struct.mp_image_pool*, %struct.mp_image_pool** %3, align 8
  %7 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %8 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %11 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %14 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mp_image* @mp_image_pool_get(%struct.mp_image_pool* %6, i32 %9, i32 %12, i32 %15)
  store %struct.mp_image* %16, %struct.mp_image** %5, align 8
  %17 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %18 = icmp ne %struct.mp_image* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %21 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %22 = call i32 @mp_image_copy(%struct.mp_image* %20, %struct.mp_image* %21)
  %23 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %24 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %25 = call i32 @mp_image_copy_attributes(%struct.mp_image* %23, %struct.mp_image* %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  ret %struct.mp_image* %27
}

declare dso_local %struct.mp_image* @mp_image_pool_get(%struct.mp_image_pool*, i32, i32, i32) #1

declare dso_local i32 @mp_image_copy(%struct.mp_image*, %struct.mp_image*) #1

declare dso_local i32 @mp_image_copy_attributes(%struct.mp_image*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
