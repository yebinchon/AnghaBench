; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_handle_video_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_handle_video_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, i64, i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.mp_filter*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mp_image* }
%struct.mp_image = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @handle_video_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_video_frame(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.mp_filter*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %7 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  store %struct.mp_image* %13, %struct.mp_image** %4, align 8
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %25 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.priv*, %struct.priv** %3, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %33 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.priv*, %struct.priv** %3, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.priv*, %struct.priv** %3, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 3
  %43 = call i32 @mp_subfilter_continue(%struct.TYPE_7__* %42)
  br label %88

44:                                               ; preds = %31, %23
  %45 = load %struct.priv*, %struct.priv** %3, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 3
  %47 = call i32 @mp_subfilter_drain_destroy(%struct.TYPE_7__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.priv*, %struct.priv** %3, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.priv*, %struct.priv** %3, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %88

54:                                               ; preds = %44
  %55 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %56 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.priv*, %struct.priv** %3, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %62 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.priv*, %struct.priv** %3, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.priv*, %struct.priv** %3, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  store %struct.mp_filter* null, %struct.mp_filter** %5, align 8
  %69 = load %struct.priv*, %struct.priv** %3, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 5
  %71 = load %struct.priv*, %struct.priv** %3, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %75 = call i64 @build_image_converter(i32* %70, i32 %73, %struct.mp_image* %74, %struct.mp_filter** %5)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %54
  %78 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %79 = load %struct.priv*, %struct.priv** %3, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store %struct.mp_filter* %78, %struct.mp_filter** %81, align 8
  %82 = load %struct.priv*, %struct.priv** %3, align 8
  %83 = getelementptr inbounds %struct.priv, %struct.priv* %82, i32 0, i32 3
  %84 = call i32 @mp_subfilter_continue(%struct.TYPE_7__* %83)
  br label %88

85:                                               ; preds = %54
  %86 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %87 = call i32 @mp_filter_internal_mark_failed(%struct.mp_filter* %86)
  br label %88

88:                                               ; preds = %40, %49, %85, %77
  ret void
}

declare dso_local i32 @mp_subfilter_continue(%struct.TYPE_7__*) #1

declare dso_local i32 @mp_subfilter_drain_destroy(%struct.TYPE_7__*) #1

declare dso_local i64 @build_image_converter(i32*, i32, %struct.mp_image*, %struct.mp_filter**) #1

declare dso_local i32 @mp_filter_internal_mark_failed(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
