; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_mp_to_vs.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_mp_to_vs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpvs_fmt = type { i32, i64 }

@mpvs_fmt_table = common dso_local global %struct.mpvs_fmt* null, align 8
@pfNone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mp_to_vs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_to_vs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpvs_fmt*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** @mpvs_fmt_table, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %7, i64 %9
  %11 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %6
  %15 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** @mpvs_fmt_table, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %15, i64 %17
  store %struct.mpvs_fmt* %18, %struct.mpvs_fmt** %5, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** %5, align 8
  %21 = call i64 @compare_fmt(i32 %19, %struct.mpvs_fmt* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.mpvs_fmt*, %struct.mpvs_fmt** %5, align 8
  %25 = getelementptr inbounds %struct.mpvs_fmt, %struct.mpvs_fmt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %6

31:                                               ; preds = %6
  %32 = load i32, i32* @pfNone, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @compare_fmt(i32, %struct.mpvs_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
