; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_cursor_draw.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_cursor_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cursor_data = type { i64, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@GS_BLEND_SRCALPHA = common dso_local global i32 0, align 4
@GS_BLEND_INVSRCALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_draw(%struct.cursor_data* %0, i64 %1, i64 %2, float %3, float %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.cursor_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.cursor_data* %0, %struct.cursor_data** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %19 = load %struct.cursor_data*, %struct.cursor_data** %8, align 8
  %20 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %15, align 8
  %25 = load %struct.cursor_data*, %struct.cursor_data** %8, align 8
  %26 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load %struct.cursor_data*, %struct.cursor_data** %8, align 8
  %33 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  store i64 %35, i64* %17, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load %struct.cursor_data*, %struct.cursor_data** %8, align 8
  %38 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  store i64 %40, i64* %18, align 8
  %41 = load i64, i64* %15, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %7
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %16, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %47, %43, %7
  br label %84

55:                                               ; preds = %50
  %56 = load %struct.cursor_data*, %struct.cursor_data** %8, align 8
  %57 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %55
  %61 = load %struct.cursor_data*, %struct.cursor_data** %8, align 8
  %62 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = call i32 (...) @gs_blend_state_push()
  %67 = load i32, i32* @GS_BLEND_SRCALPHA, align 4
  %68 = load i32, i32* @GS_BLEND_INVSRCALPHA, align 4
  %69 = call i32 @gs_blend_function(i32 %67, i32 %68)
  %70 = call i32 @gs_enable_color(i32 1, i32 1, i32 1, i32 0)
  %71 = call i32 (...) @gs_matrix_push()
  %72 = load float, float* %11, align 4
  %73 = load float, float* %12, align 4
  %74 = call i32 @gs_matrix_scale3f(float %72, float %73, float 1.000000e+00)
  %75 = load %struct.cursor_data*, %struct.cursor_data** %8, align 8
  %76 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %18, align 8
  %80 = call i32 @obs_source_draw(i32 %77, i64 %78, i64 %79, i32 0, i32 0, i32 0)
  %81 = call i32 (...) @gs_matrix_pop()
  %82 = call i32 @gs_enable_color(i32 1, i32 1, i32 1, i32 1)
  %83 = call i32 (...) @gs_blend_state_pop()
  br label %84

84:                                               ; preds = %54, %65, %60, %55
  ret void
}

declare dso_local i32 @gs_blend_state_push(...) #1

declare dso_local i32 @gs_blend_function(i32, i32) #1

declare dso_local i32 @gs_enable_color(i32, i32, i32, i32) #1

declare dso_local i32 @gs_matrix_push(...) #1

declare dso_local i32 @gs_matrix_scale3f(float, float, float) #1

declare dso_local i32 @obs_source_draw(i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @gs_matrix_pop(...) #1

declare dso_local i32 @gs_blend_state_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
