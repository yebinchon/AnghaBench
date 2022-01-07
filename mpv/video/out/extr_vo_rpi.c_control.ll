; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.priv* }
%struct.priv = type { i32, double, i32, i32 }
%struct.mp_image = type { i32 }

@VO_TRUE = common dso_local global i32 0, align 4
@VO_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.vo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.vo*, %struct.vo** %5, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %74 [
    i32 132, label %14
    i32 128, label %26
    i32 130, label %38
    i32 129, label %42
    i32 133, label %48
    i32 131, label %67
  ]

14:                                               ; preds = %3
  %15 = load %struct.priv*, %struct.priv** %8, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.vo*, %struct.vo** %5, align 8
  %21 = call i32 @set_geometry(%struct.vo* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.vo*, %struct.vo** %5, align 8
  %24 = getelementptr inbounds %struct.vo, %struct.vo* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @VO_TRUE, align 4
  store i32 %25, i32* %4, align 4
  br label %76

26:                                               ; preds = %3
  %27 = load %struct.priv*, %struct.priv** %8, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.vo*, %struct.vo** %5, align 8
  %33 = call i32 @resize(%struct.vo* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.vo*, %struct.vo** %5, align 8
  %36 = getelementptr inbounds %struct.vo, %struct.vo* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* @VO_TRUE, align 4
  store i32 %37, i32* %4, align 4
  br label %76

38:                                               ; preds = %3
  %39 = load %struct.vo*, %struct.vo** %5, align 8
  %40 = call i32 @update_osd(%struct.vo* %39)
  %41 = load i32, i32* @VO_TRUE, align 4
  store i32 %41, i32* %4, align 4
  br label %76

42:                                               ; preds = %3
  %43 = load %struct.vo*, %struct.vo** %5, align 8
  %44 = call %struct.mp_image* @take_screenshot(%struct.vo* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to %struct.mp_image**
  store %struct.mp_image* %44, %struct.mp_image** %46, align 8
  %47 = load i32, i32* @VO_TRUE, align 4
  store i32 %47, i32* %4, align 4
  br label %76

48:                                               ; preds = %3
  %49 = load %struct.priv*, %struct.priv** %8, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 2
  %51 = call i32 @pthread_mutex_lock(i32* %50)
  %52 = load %struct.priv*, %struct.priv** %8, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  %55 = load %struct.priv*, %struct.priv** %8, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.priv*, %struct.priv** %8, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 2
  %59 = call i32 @pthread_mutex_unlock(i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load %struct.vo*, %struct.vo** %5, align 8
  %64 = call i32 @recreate_renderer(%struct.vo* %63)
  br label %65

65:                                               ; preds = %62, %48
  %66 = load i32, i32* @VO_TRUE, align 4
  store i32 %66, i32* %4, align 4
  br label %76

67:                                               ; preds = %3
  %68 = load %struct.priv*, %struct.priv** %8, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = bitcast i8* %71 to double*
  store double %70, double* %72, align 8
  %73 = load i32, i32* @VO_TRUE, align 4
  store i32 %73, i32* %4, align 4
  br label %76

74:                                               ; preds = %3
  %75 = load i32, i32* @VO_NOTIMPL, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %67, %65, %42, %38, %34, %22
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @set_geometry(%struct.vo*) #1

declare dso_local i32 @resize(%struct.vo*) #1

declare dso_local i32 @update_osd(%struct.vo*) #1

declare dso_local %struct.mp_image* @take_screenshot(%struct.vo*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @recreate_renderer(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
