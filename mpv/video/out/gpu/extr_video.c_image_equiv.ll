; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_image_equiv.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_image_equiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image*, %struct.image*)* @image_equiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_equiv(%struct.image* byval(%struct.image) align 8 %0, %struct.image* byval(%struct.image) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.image, %struct.image* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.image, %struct.image* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.image, %struct.image* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.image, %struct.image* %1, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %75

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.image, %struct.image* %0, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.image, %struct.image* %1, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.image, %struct.image* %0, i32 0, i32 6
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.image, %struct.image* %1, i32 0, i32 6
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %25, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.image, %struct.image* %0, i32 0, i32 6
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.image, %struct.image* %1, i32 0, i32 6
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.image, %struct.image* %0, i32 0, i32 6
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.image, %struct.image* %1, i32 0, i32 6
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.image, %struct.image* %0, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.image, %struct.image* %1, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.image, %struct.image* %0, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.image, %struct.image* %1, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.image, %struct.image* %0, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.image, %struct.image* %1, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @gl_transform_eq(i32 %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %68, %62, %56, %44, %32, %20, %14, %8, %2
  %76 = phi i1 [ false, %62 ], [ false, %56 ], [ false, %44 ], [ false, %32 ], [ false, %20 ], [ false, %14 ], [ false, %8 ], [ false, %2 ], [ %74, %68 ]
  %77 = zext i1 %76 to i32
  ret i32 %77
}

declare dso_local i64 @gl_transform_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
