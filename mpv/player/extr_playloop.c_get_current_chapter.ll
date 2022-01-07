; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_get_current_chapter.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_get_current_chapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_current_chapter(%struct.MPContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %13 = call double @get_current_time(%struct.MPContext* %12)
  store double %13, double* %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %33, %11
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load double, double* %4, align 8
  %22 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fcmp olt double %21, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %36

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %14

36:                                               ; preds = %31, %14
  %37 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @MPMAX(i32 %39, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %36, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local double @get_current_time(%struct.MPContext*) #1

declare dso_local i32 @MPMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
