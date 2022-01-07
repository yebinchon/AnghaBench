; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_cursor_capture_icon.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_cursor_capture_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cursor_data = type { i64, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cursor_data*, i32)* @cursor_capture_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cursor_capture_icon(%struct.cursor_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cursor_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  store %struct.cursor_data* %0, %struct.cursor_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GetIconInfo(i32 %14, %struct.TYPE_4__* %9)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %79

18:                                               ; preds = %13
  %19 = call i32* @cursor_capture_icon_bitmap(%struct.TYPE_4__* %9, i64* %8, i64* %7)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = load %struct.cursor_data*, %struct.cursor_data** %4, align 8
  %24 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.cursor_data*, %struct.cursor_data** %4, align 8
  %30 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28, %22
  %35 = load %struct.cursor_data*, %struct.cursor_data** %4, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @get_cached_texture(%struct.cursor_data* %35, i64 %36, i64 %37)
  %39 = load %struct.cursor_data*, %struct.cursor_data** %4, align 8
  %40 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.cursor_data*, %struct.cursor_data** %4, align 8
  %43 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.cursor_data*, %struct.cursor_data** %4, align 8
  %46 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %34, %28
  %48 = load %struct.cursor_data*, %struct.cursor_data** %4, align 8
  %49 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = mul nsw i64 %52, 4
  %54 = call i32 @gs_texture_set_image(i32 %50, i32* %51, i64 %53, i32 0)
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @bfree(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cursor_data*, %struct.cursor_data** %4, align 8
  %60 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cursor_data*, %struct.cursor_data** %4, align 8
  %64 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %47, %18
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DeleteObject(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DeleteObject(i32 %70)
  %72 = load %struct.cursor_data*, %struct.cursor_data** %4, align 8
  %73 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %65, %17, %12
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @GetIconInfo(i32, %struct.TYPE_4__*) #1

declare dso_local i32* @cursor_capture_icon_bitmap(%struct.TYPE_4__*, i64*, i64*) #1

declare dso_local i32 @get_cached_texture(%struct.cursor_data*, i64, i64) #1

declare dso_local i32 @gs_texture_set_image(i32, i32*, i64, i32) #1

declare dso_local i32 @bfree(i32*) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
