; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_is_vformat_ok.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_is_vformat_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i64, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_image*, %struct.mp_image*)* @is_vformat_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_vformat_ok(%struct.mp_image* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.mp_image*, align 8
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %5 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %6 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %9 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %2
  %13 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %14 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %17 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %12
  %21 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %22 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %27 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %32 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %36 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %42 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %46 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %52 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %55 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br label %58

58:                                               ; preds = %50, %40, %30, %25, %20, %12, %2
  %59 = phi i1 [ false, %40 ], [ false, %30 ], [ false, %25 ], [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %57, %50 ]
  %60 = zext i1 %59 to i32
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
