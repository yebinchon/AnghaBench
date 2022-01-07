; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_new_copy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_new_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @mp_image_new_copy(%struct.mp_image* %0) #0 {
  %2 = alloca %struct.mp_image*, align 8
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.mp_image*, align 8
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  %5 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %6 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %9 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %12 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mp_image* @mp_image_alloc(i32 %7, i32 %10, i32 %13)
  store %struct.mp_image* %14, %struct.mp_image** %4, align 8
  %15 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %16 = icmp ne %struct.mp_image* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.mp_image* null, %struct.mp_image** %2, align 8
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %20 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %21 = call i32 @mp_image_copy(%struct.mp_image* %19, %struct.mp_image* %20)
  %22 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %23 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %24 = call i32 @mp_image_copy_attributes(%struct.mp_image* %22, %struct.mp_image* %23)
  %25 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  store %struct.mp_image* %25, %struct.mp_image** %2, align 8
  br label %26

26:                                               ; preds = %18, %17
  %27 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  ret %struct.mp_image* %27
}

declare dso_local %struct.mp_image* @mp_image_alloc(i32, i32, i32) #1

declare dso_local i32 @mp_image_copy(%struct.mp_image*, %struct.mp_image*) #1

declare dso_local i32 @mp_image_copy_attributes(%struct.mp_image*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
