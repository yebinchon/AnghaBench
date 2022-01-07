; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.vo*, %struct.vo** %2, align 8
  %9 = call i32 @crtc_release(%struct.vo* %8)
  br label %10

10:                                               ; preds = %15, %1
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.vo*, %struct.vo** %2, align 8
  %17 = call i32 @swapchain_step(%struct.vo* %16)
  br label %10

18:                                               ; preds = %10
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 7
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.priv*, %struct.priv** %3, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 7
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.priv*, %struct.priv** %3, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @fb_destroy(i32 %35, i32* %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.priv*, %struct.priv** %3, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 7
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @kms_destroy(%struct.TYPE_2__* %49)
  %51 = load %struct.priv*, %struct.priv** %3, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 7
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %52, align 8
  br label %53

53:                                               ; preds = %46, %18
  %54 = load %struct.priv*, %struct.priv** %3, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.priv*, %struct.priv** %3, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 5
  %61 = call i32 @vt_switcher_destroy(i32* %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.priv*, %struct.priv** %3, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @talloc_free(i32 %65)
  %67 = load %struct.priv*, %struct.priv** %3, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @talloc_free(i32 %69)
  %71 = load %struct.priv*, %struct.priv** %3, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @talloc_free(i32 %73)
  ret void
}

declare dso_local i32 @crtc_release(%struct.vo*) #1

declare dso_local i32 @swapchain_step(%struct.vo*) #1

declare dso_local i32 @fb_destroy(i32, i32*) #1

declare dso_local i32 @kms_destroy(%struct.TYPE_2__*) #1

declare dso_local i32 @vt_switcher_destroy(i32*) #1

declare dso_local i32 @talloc_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
