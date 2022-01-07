; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, i64, i64, i32, i32, i32, i32, i32* }

@VA_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %5 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %6 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.priv*, %struct.priv** %3, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vaDestroyBuffer(i32 %17, i32 %24)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.priv*, %struct.priv** %3, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VA_INVALID_ID, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.priv*, %struct.priv** %3, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.priv*, %struct.priv** %3, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @vaDestroyContext(i32 %38, i64 %41)
  br label %43

43:                                               ; preds = %35, %29
  %44 = load %struct.priv*, %struct.priv** %3, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VA_INVALID_ID, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.priv*, %struct.priv** %3, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.priv*, %struct.priv** %3, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @vaDestroyConfig(i32 %52, i64 %55)
  br label %57

57:                                               ; preds = %49, %43
  %58 = load %struct.priv*, %struct.priv** %3, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 5
  %60 = call i32 @av_buffer_unref(i32* %59)
  %61 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %62 = call i32 @flush_frames(%struct.mp_filter* %61)
  %63 = load %struct.priv*, %struct.priv** %3, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @talloc_free(i32 %65)
  %67 = load %struct.priv*, %struct.priv** %3, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 3
  %69 = call i32 @av_buffer_unref(i32* %68)
  ret void
}

declare dso_local i32 @vaDestroyBuffer(i32, i32) #1

declare dso_local i32 @vaDestroyContext(i32, i64) #1

declare dso_local i32 @vaDestroyConfig(i32, i64) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @flush_frames(%struct.mp_filter*) #1

declare dso_local i32 @talloc_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
