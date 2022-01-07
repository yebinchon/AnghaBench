; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_image_pool_clear.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_image_pool_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image_pool = type { i32, %struct.mp_image** }
%struct.mp_image = type { %struct.image_flags* }
%struct.image_flags = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_image_pool_clear(%struct.mp_image_pool* %0) #0 {
  %2 = alloca %struct.mp_image_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.image_flags*, align 8
  %6 = alloca i32, align 4
  store %struct.mp_image_pool* %0, %struct.mp_image_pool** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mp_image_pool*, %struct.mp_image_pool** %2, align 8
  %10 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %7
  %14 = load %struct.mp_image_pool*, %struct.mp_image_pool** %2, align 8
  %15 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %14, i32 0, i32 1
  %16 = load %struct.mp_image**, %struct.mp_image*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mp_image*, %struct.mp_image** %16, i64 %18
  %20 = load %struct.mp_image*, %struct.mp_image** %19, align 8
  store %struct.mp_image* %20, %struct.mp_image** %4, align 8
  %21 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %22 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %21, i32 0, i32 0
  %23 = load %struct.image_flags*, %struct.image_flags** %22, align 8
  store %struct.image_flags* %23, %struct.image_flags** %5, align 8
  %24 = call i32 (...) @pool_lock()
  %25 = load %struct.image_flags*, %struct.image_flags** %5, align 8
  %26 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.image_flags*, %struct.image_flags** %5, align 8
  %30 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.image_flags*, %struct.image_flags** %5, align 8
  %32 = getelementptr inbounds %struct.image_flags, %struct.image_flags* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = call i32 (...) @pool_unlock()
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %13
  %38 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %39 = call i32 @talloc_free(%struct.mp_image* %38)
  br label %40

40:                                               ; preds = %37, %13
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %7

44:                                               ; preds = %7
  %45 = load %struct.mp_image_pool*, %struct.mp_image_pool** %2, align 8
  %46 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
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
