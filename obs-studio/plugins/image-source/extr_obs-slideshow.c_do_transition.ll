; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_obs-slideshow.c_do_transition.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_obs-slideshow.c_do_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slideshow = type { i64, i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@OBS_TRANSITION_MODE_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @do_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_transition(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.slideshow*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.slideshow*
  store %struct.slideshow* %8, %struct.slideshow** %5, align 8
  %9 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %10 = call i32 @item_valid(%struct.slideshow* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %15 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %20 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %23 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %27 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @obs_transition_set(i32 %21, i32* %31)
  br label %68

33:                                               ; preds = %13, %2
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %36
  %40 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %41 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OBS_TRANSITION_MODE_AUTO, align 4
  %44 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %45 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %48 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %52 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @obs_transition_start(i32 %42, i32 %43, i32 %46, i32* %56)
  br label %67

58:                                               ; preds = %36, %33
  %59 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %60 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OBS_TRANSITION_MODE_AUTO, align 4
  %63 = load %struct.slideshow*, %struct.slideshow** %5, align 8
  %64 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @obs_transition_start(i32 %61, i32 %62, i32 %65, i32* null)
  br label %67

67:                                               ; preds = %58, %39
  br label %68

68:                                               ; preds = %67, %18
  ret void
}

declare dso_local i32 @item_valid(%struct.slideshow*) #1

declare dso_local i32 @obs_transition_set(i32, i32*) #1

declare dso_local i32 @obs_transition_start(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
