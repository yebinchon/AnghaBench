; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_image_pool_get.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_image_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }
%struct.mp_image_pool = type { i32, i32, i32, i32, %struct.mp_image* (i32, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @mp_image_pool_get(%struct.mp_image_pool* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.mp_image_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_image*, align 8
  store %struct.mp_image_pool* %0, %struct.mp_image_pool** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %12 = icmp ne %struct.mp_image_pool* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.mp_image* @mp_image_alloc(i32 %14, i32 %15, i32 %16)
  store %struct.mp_image* %17, %struct.mp_image** %5, align 8
  br label %92

18:                                               ; preds = %4
  %19 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.mp_image* @mp_image_pool_get_no_alloc(%struct.mp_image_pool* %19, i32 %20, i32 %21, i32 %22)
  store %struct.mp_image* %23, %struct.mp_image** %10, align 8
  %24 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %25 = icmp ne %struct.mp_image* %24, null
  br i1 %25, label %90, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %29 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %35 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %41 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %32, %26
  %45 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %46 = call i32 @mp_image_pool_clear(%struct.mp_image_pool* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %50 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %53 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %56 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %58 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %57, i32 0, i32 4
  %59 = load %struct.mp_image* (i32, i32, i32, i32)*, %struct.mp_image* (i32, i32, i32, i32)** %58, align 8
  %60 = icmp ne %struct.mp_image* (i32, i32, i32, i32)* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %47
  %62 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %63 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %62, i32 0, i32 4
  %64 = load %struct.mp_image* (i32, i32, i32, i32)*, %struct.mp_image* (i32, i32, i32, i32)** %63, align 8
  %65 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %66 = getelementptr inbounds %struct.mp_image_pool, %struct.mp_image_pool* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call %struct.mp_image* %64(i32 %67, i32 %68, i32 %69, i32 %70)
  store %struct.mp_image* %71, %struct.mp_image** %10, align 8
  br label %77

72:                                               ; preds = %47
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.mp_image* @mp_image_alloc(i32 %73, i32 %74, i32 %75)
  store %struct.mp_image* %76, %struct.mp_image** %10, align 8
  br label %77

77:                                               ; preds = %72, %61
  %78 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %79 = icmp ne %struct.mp_image* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store %struct.mp_image* null, %struct.mp_image** %5, align 8
  br label %92

81:                                               ; preds = %77
  %82 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %83 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %84 = call i32 @mp_image_pool_add(%struct.mp_image_pool* %82, %struct.mp_image* %83)
  %85 = load %struct.mp_image_pool*, %struct.mp_image_pool** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call %struct.mp_image* @mp_image_pool_get_no_alloc(%struct.mp_image_pool* %85, i32 %86, i32 %87, i32 %88)
  store %struct.mp_image* %89, %struct.mp_image** %10, align 8
  br label %90

90:                                               ; preds = %81, %18
  %91 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  store %struct.mp_image* %91, %struct.mp_image** %5, align 8
  br label %92

92:                                               ; preds = %90, %80, %13
  %93 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  ret %struct.mp_image* %93
}

declare dso_local %struct.mp_image* @mp_image_alloc(i32, i32, i32) #1

declare dso_local %struct.mp_image* @mp_image_pool_get_no_alloc(%struct.mp_image_pool*, i32, i32, i32) #1

declare dso_local i32 @mp_image_pool_clear(%struct.mp_image_pool*) #1

declare dso_local i32 @mp_image_pool_add(%struct.mp_image_pool*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
