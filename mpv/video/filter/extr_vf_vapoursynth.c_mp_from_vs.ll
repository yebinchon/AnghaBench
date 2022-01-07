; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_mp_from_vs.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_mp_from_vs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpvs_fmt = type { i64, i64 }

@mpvs_fmt_table = common dso_local global %struct.mpvs_fmt* null, align 8
@IMGFMT_START = common dso_local global i32 0, align 4
@IMGFMT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @mp_from_vs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_from_vs(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpvs_fmt*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** @mpvs_fmt_table, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %8, i64 %10
  %12 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %7
  %16 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** @mpvs_fmt_table, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %16, i64 %18
  store %struct.mpvs_fmt* %19, %struct.mpvs_fmt** %5, align 8
  %20 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** %5, align 8
  %21 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %15
  %26 = load i32, i32* @IMGFMT_START, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %39, %25
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IMGFMT_END, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** %5, align 8
  %34 = call i64 @compare_fmt(i32 %32, %struct.mpvs_fmt* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %48

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %27

42:                                               ; preds = %27
  br label %47

43:                                               ; preds = %15
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %7

47:                                               ; preds = %42, %7
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @compare_fmt(i32, %struct.mpvs_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
