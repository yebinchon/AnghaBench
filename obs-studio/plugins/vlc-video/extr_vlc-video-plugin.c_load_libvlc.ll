; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-plugin.c_load_libvlc.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-plugin.c_load_libvlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libvlc = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Couldn't create libvlc instance\00", align 1
@time_start = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_libvlc() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @libvlc, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %15

5:                                                ; preds = %0
  %6 = call i64 @libvlc_new_(i32 0, i32 0)
  store i64 %6, i64* @libvlc, align 8
  %7 = load i64, i64* @libvlc, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* @LOG_INFO, align 4
  %11 = call i32 @blog(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

12:                                               ; preds = %5
  %13 = call i64 (...) @libvlc_clock_()
  %14 = mul i64 %13, 1000
  store i64 %14, i64* @time_start, align 8
  store i32 1, i32* %1, align 4
  br label %15

15:                                               ; preds = %12, %9, %4
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i64 @libvlc_new_(i32, i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64 @libvlc_clock_(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
