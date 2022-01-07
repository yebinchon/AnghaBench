; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_compare_fmt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_compare_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpvs_fmt = type { i64, i64, i64 }
%struct.mp_regular_imgfmt = type { i64, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mpvs_fmt*)* @compare_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_fmt(i32 %0, %struct.mpvs_fmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpvs_fmt*, align 8
  %6 = alloca %struct.mp_regular_imgfmt, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mpvs_fmt* %1, %struct.mpvs_fmt** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @mp_get_regular_imgfmt(%struct.mp_regular_imgfmt* %6, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %83

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** %5, align 8
  %21 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** %5, align 8
  %28 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %17
  store i32 0, i32* %3, align 4
  br label %83

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %36, %38
  %40 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** %5, align 8
  %41 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %83

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %83

50:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %82

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 5
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %83

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 5
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %83

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %51

82:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %77, %63, %49, %44, %31, %16, %11
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @mp_get_regular_imgfmt(%struct.mp_regular_imgfmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
