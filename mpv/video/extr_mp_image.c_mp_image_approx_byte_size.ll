; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_approx_byte_size.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_approx_byte_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { %struct.AVBufferRef** }
%struct.AVBufferRef = type { i64 }

@MP_MAX_PLANES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_image_approx_byte_size(%struct.mp_image* %0) #0 {
  %2 = alloca %struct.mp_image*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.AVBufferRef*, align 8
  store %struct.mp_image* %0, %struct.mp_image** %2, align 8
  store i32 8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MP_MAX_PLANES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %12 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %11, i32 0, i32 0
  %13 = load %struct.AVBufferRef**, %struct.AVBufferRef*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.AVBufferRef*, %struct.AVBufferRef** %13, i64 %15
  %17 = load %struct.AVBufferRef*, %struct.AVBufferRef** %16, align 8
  store %struct.AVBufferRef* %17, %struct.AVBufferRef** %5, align 8
  %18 = load %struct.AVBufferRef*, %struct.AVBufferRef** %5, align 8
  %19 = icmp ne %struct.AVBufferRef* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = load %struct.AVBufferRef*, %struct.AVBufferRef** %5, align 8
  %22 = getelementptr inbounds %struct.AVBufferRef, %struct.AVBufferRef* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %6

32:                                               ; preds = %6
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
