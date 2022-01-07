; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_draw_outlines.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_draw_outlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft2_source = type { i32*, i32, i32, i32, i32 }
%struct.gs_vb_data = type { i32* }

@offsets = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_outlines(%struct.ft2_source* %0) #0 {
  %2 = alloca %struct.ft2_source*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gs_vb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ft2_source* %0, %struct.ft2_source** %2, align 8
  %6 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %7 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.gs_vb_data* @gs_vertexbuffer_get_data(i32 %8)
  store %struct.gs_vb_data* %9, %struct.gs_vb_data** %4, align 8
  %10 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %11 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %68

15:                                               ; preds = %1
  %16 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %17 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %3, align 8
  %19 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %20 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %23 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = call i32 (...) @gs_matrix_push()
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %59, %15
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = load i32*, i32** @offsets, align 8
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @offsets, align 8
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gs_matrix_translate3f(i32 %34, i32 %41, float 0.000000e+00)
  %43 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %44 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %47 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %50 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %53 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @wcslen(i32 %54)
  %56 = trunc i64 %55 to i32
  %57 = mul nsw i32 %56, 6
  %58 = call i32 @draw_uv_vbuffer(i32 %45, i32 %48, i32 %51, i32 %57)
  br label %59

59:                                               ; preds = %28
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %25

62:                                               ; preds = %25
  %63 = call i32 (...) @gs_matrix_identity()
  %64 = call i32 (...) @gs_matrix_pop()
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %67 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  br label %68

68:                                               ; preds = %62, %14
  ret void
}

declare dso_local %struct.gs_vb_data* @gs_vertexbuffer_get_data(i32) #1

declare dso_local i32 @gs_matrix_push(...) #1

declare dso_local i32 @gs_matrix_translate3f(i32, i32, float) #1

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
