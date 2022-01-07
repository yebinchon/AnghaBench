; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_skip_samples.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_skip_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_aframe_skip_samples(%struct.mp_aframe* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_aframe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mp_aframe* %0, %struct.mp_aframe** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %13 = call i32 @mp_aframe_get_size(%struct.mp_aframe* %12)
  %14 = icmp sle i32 %11, %13
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %20 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i64 @av_frame_make_writable(%struct.TYPE_2__* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %96

25:                                               ; preds = %15
  %26 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %27 = call i32 @mp_aframe_get_planes(%struct.mp_aframe* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %29 = call i64 @mp_aframe_get_sstride(%struct.mp_aframe* %28)
  store i64 %29, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %70, %25
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %30
  %35 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %36 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %45 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = mul i64 %54, %55
  %57 = add i64 %52, %56
  %58 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %59 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %6, align 8
  %67 = mul i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memmove(i64 %43, i64 %57, i32 %68)
  br label %70

70:                                               ; preds = %34
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %30

73:                                               ; preds = %30
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %76 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, %74
  store i32 %80, i32* %78, align 8
  %81 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %82 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %73
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %89 = call i32 @mp_aframe_get_effective_rate(%struct.mp_aframe* %88)
  %90 = sdiv i32 %87, %89
  %91 = sext i32 %90 to i64
  %92 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %93 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %24, %86, %73
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_aframe_get_size(%struct.mp_aframe*) #1

declare dso_local i64 @av_frame_make_writable(%struct.TYPE_2__*) #1

declare dso_local i32 @mp_aframe_get_planes(%struct.mp_aframe*) #1

declare dso_local i64 @mp_aframe_get_sstride(%struct.mp_aframe*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @mp_aframe_get_effective_rate(%struct.mp_aframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
