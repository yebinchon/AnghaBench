; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_draw_drop_shadow.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_draw_drop_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft2_source = type { i32*, i32, i32, i32, i32 }
%struct.gs_vb_data = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_drop_shadow(%struct.ft2_source* %0) #0 {
  %2 = alloca %struct.ft2_source*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gs_vb_data*, align 8
  store %struct.ft2_source* %0, %struct.ft2_source** %2, align 8
  %5 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %6 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.gs_vb_data* @gs_vertexbuffer_get_data(i32 %7)
  store %struct.gs_vb_data* %8, %struct.gs_vb_data** %4, align 8
  %9 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %10 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %16 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %3, align 8
  %18 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %19 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %22 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = call i32 (...) @gs_matrix_push()
  %24 = call i32 @gs_matrix_translate3f(float 4.000000e+00, float 4.000000e+00, float 0.000000e+00)
  %25 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %26 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %29 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %32 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %35 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @wcslen(i32 %36)
  %38 = trunc i64 %37 to i32
  %39 = mul nsw i32 %38, 6
  %40 = call i32 @draw_uv_vbuffer(i32 %27, i32 %30, i32 %33, i32 %39)
  %41 = call i32 (...) @gs_matrix_identity()
  %42 = call i32 (...) @gs_matrix_pop()
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %45 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  br label %46

46:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.gs_vb_data* @gs_vertexbuffer_get_data(i32) #1

declare dso_local i32 @gs_matrix_push(...) #1

declare dso_local i32 @gs_matrix_translate3f(float, float, float) #1

declare dso_local i32 @draw_uv_vbuffer(i32, i32, i32, i32) #1

declare dso_local i64 @wcslen(i32) #1

declare dso_local i32 @gs_matrix_identity(...) #1

declare dso_local i32 @gs_matrix_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
