; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_duplicator-monitor-capture.c_draw_cursor.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_duplicator-monitor-capture.c_draw_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.duplicator_capture = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.duplicator_capture*)* @draw_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_cursor(%struct.duplicator_capture* %0) #0 {
  %2 = alloca %struct.duplicator_capture*, align 8
  store %struct.duplicator_capture* %0, %struct.duplicator_capture** %2, align 8
  %3 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %4 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %3, i32 0, i32 5
  %5 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %6 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 0, %7
  %9 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %10 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 0, %11
  %13 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %14 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = srem i32 %15, 180
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %20 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %24 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %21, %18 ], [ %25, %22 ]
  %28 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %29 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = srem i32 %30, 180
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %35 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %39 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %36, %33 ], [ %40, %37 ]
  %43 = call i32 @cursor_draw(i32* %4, i32 %8, i32 %12, float 1.000000e+00, float 1.000000e+00, i32 %27, i32 %42)
  ret void
}

declare dso_local i32 @cursor_draw(i32*, i32, i32, float, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
