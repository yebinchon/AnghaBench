; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_flip_page.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_flip_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32, i32, %struct.TYPE_2__**, i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Hole in swapchain?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @flip_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flip_page(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %84

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %76, %71, %25
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load %struct.priv*, %struct.priv** %3, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.priv*, %struct.priv** %3, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %32, %35
  br label %37

37:                                               ; preds = %29, %26
  %38 = phi i1 [ true, %26 ], [ %36, %29 ]
  br i1 %38, label %39, label %84

39:                                               ; preds = %37
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.vo*, %struct.vo** %2, align 8
  %46 = call i32 @wait_on_flip(%struct.vo* %45)
  %47 = load %struct.vo*, %struct.vo** %2, align 8
  %48 = call i32 @swapchain_step(%struct.vo* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.priv*, %struct.priv** %3, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sle i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %84

55:                                               ; preds = %49
  %56 = load %struct.priv*, %struct.priv** %3, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = icmp ne %struct.TYPE_2__* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.priv*, %struct.priv** %3, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %62, %55
  %72 = load %struct.vo*, %struct.vo** %2, align 8
  %73 = call i32 @MP_ERR(%struct.vo* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.vo*, %struct.vo** %2, align 8
  %75 = call i32 @swapchain_step(%struct.vo* %74)
  br label %26

76:                                               ; preds = %62
  %77 = load %struct.vo*, %struct.vo** %2, align 8
  %78 = load %struct.priv*, %struct.priv** %3, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %80, i64 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = call i32 @queue_flip(%struct.vo* %77, %struct.TYPE_2__* %82)
  br label %26

84:                                               ; preds = %24, %54, %37
  ret void
}

declare dso_local i32 @wait_on_flip(%struct.vo*) #1

declare dso_local i32 @swapchain_step(%struct.vo*) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i32 @queue_flip(%struct.vo*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
