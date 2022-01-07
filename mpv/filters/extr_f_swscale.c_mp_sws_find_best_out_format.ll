; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swscale.c_mp_sws_find_best_out_format.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swscale.c_mp_sws_find_best_out_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_sws_filter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_sws_find_best_out_format(%struct.mp_sws_filter* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mp_sws_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mp_sws_filter* %0, %struct.mp_sws_filter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %47, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %13
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.mp_sws_filter*, %struct.mp_sws_filter** %5, align 8
  %24 = getelementptr inbounds %struct.mp_sws_filter, %struct.mp_sws_filter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mp_sws_supports_formats(i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %47

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mp_imgfmt_select_best(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %34
  br label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %43
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %13

50:                                               ; preds = %13
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @mp_sws_supports_formats(i32, i32, i32) #1

declare dso_local i32 @mp_imgfmt_select_best(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
