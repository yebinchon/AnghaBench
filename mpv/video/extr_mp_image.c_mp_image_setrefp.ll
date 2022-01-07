; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_setrefp.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_setrefp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_image_setrefp(%struct.mp_image** %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.mp_image**, align 8
  %4 = alloca %struct.mp_image*, align 8
  store %struct.mp_image** %0, %struct.mp_image*** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %5 = load %struct.mp_image**, %struct.mp_image*** %3, align 8
  %6 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %7 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %8 = icmp ne %struct.mp_image* %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.mp_image**, %struct.mp_image*** %3, align 8
  %11 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %12 = call i32 @talloc_free(%struct.mp_image* %11)
  %13 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %14 = icmp ne %struct.mp_image* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %17 = call %struct.mp_image* @mp_image_new_ref(%struct.mp_image* %16)
  br label %19

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi %struct.mp_image* [ %17, %15 ], [ null, %18 ]
  %21 = load %struct.mp_image**, %struct.mp_image*** %3, align 8
  store %struct.mp_image* %20, %struct.mp_image** %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local %struct.mp_image* @mp_image_new_ref(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
