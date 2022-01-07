; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_dc_capture_capture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_dc_capture_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_capture = type { i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[capture_screen] Failed to get texture DC\00", align 1
@SRCCOPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_capture_capture(%struct.dc_capture* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_capture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dc_capture* %0, %struct.dc_capture** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %8 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %13 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %12, i32 0, i32 7
  %14 = call i32 @memset(%struct.TYPE_3__* %13, i32 0, i32 4)
  %15 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %16 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %19 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %18, i32 0, i32 7
  %20 = call i64 @GetCursorInfo(%struct.TYPE_3__* %19)
  %21 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %22 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %11, %2
  %24 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %25 = call i32 @dc_capture_get_dc(%struct.dc_capture* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @LOG_WARNING, align 4
  %30 = call i32 @blog(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %71

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @GetDC(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %36 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %39 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %43 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %46 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SRCCOPY, align 4
  %49 = call i32 @BitBlt(i32 %34, i32 0, i32 0, i32 %37, i32 %40, i32 %41, i32 %44, i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ReleaseDC(i32* null, i32 %50)
  %52 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %53 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %31
  %57 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %58 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @draw_cursor(%struct.dc_capture* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %56, %31
  %67 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %68 = call i32 @dc_capture_release_dc(%struct.dc_capture* %67)
  %69 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %70 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %28
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @GetCursorInfo(%struct.TYPE_3__*) #1

declare dso_local i32 @dc_capture_get_dc(%struct.dc_capture*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

declare dso_local i32 @draw_cursor(%struct.dc_capture*, i32, i32) #1

declare dso_local i32 @dc_capture_release_dc(%struct.dc_capture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
