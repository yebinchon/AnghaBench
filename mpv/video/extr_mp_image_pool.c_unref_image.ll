; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_unref_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_unref_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { %struct.image_flags* }
%struct.image_flags = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @unref_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unref_image(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.image_flags*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.mp_image*
  store %struct.mp_image* %9, %struct.mp_image** %5, align 8
  %10 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %11 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %10, i32 0, i32 0
  %12 = load %struct.image_flags*, %struct.image_flags** %11, align 8
  store %struct.image_flags* %12, %struct.image_flags** %6, align 8
  %13 = call i32 (...) @pool_lock()
  %14 = load %struct.image_flags*, %struct.image_flags** %6, align 8
  %15 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.image_flags*, %struct.image_flags** %6, align 8
  %19 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.image_flags*, %struct.image_flags** %6, align 8
  %21 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = call i32 (...) @pool_unlock()
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %28 = call i32 @talloc_free(%struct.mp_image* %27)
  br label %29

29:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @pool_lock(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pool_unlock(...) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
