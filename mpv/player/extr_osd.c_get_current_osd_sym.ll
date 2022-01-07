; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_get_current_osd_sym.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_get_current_osd_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@OSD_CLOCK = common dso_local global i32 0, align 4
@OSD_PAUSE = common dso_local global i32 0, align 4
@OSD_PLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_current_osd_sym(%struct.MPContext* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %3
  %14 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %15 = call i64 @is_busy(%struct.MPContext* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22, %13
  %30 = load i32, i32* @OSD_CLOCK, align 4
  store i32 %30, i32* %7, align 4
  br label %46

31:                                               ; preds = %22, %17
  %32 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31
  %42 = load i32, i32* @OSD_PAUSE, align 4
  store i32 %42, i32* %7, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @OSD_PLAY, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @osd_get_function_sym(i8* %48, i64 %49, i32 %50)
  ret void
}

declare dso_local i64 @is_busy(%struct.MPContext*) #1

declare dso_local i32 @osd_get_function_sym(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
