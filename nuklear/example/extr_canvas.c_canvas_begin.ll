; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_canvas.c_canvas_begin.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_canvas.c_canvas_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.nk_canvas = type { i32, i32, i8*, i8* }
%struct.nk_color = type { i32 }
%struct.nk_rect = type { i32 }

@NK_WINDOW_DYNAMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@NK_WINDOW_NO_SCROLLBAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_context*, %struct.nk_canvas*, i32, i32, i32, i32, i32, i32)* @canvas_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @canvas_begin(%struct.nk_context* %0, %struct.nk_canvas* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.nk_color, align 4
  %10 = alloca %struct.nk_context*, align 8
  %11 = alloca %struct.nk_canvas*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nk_rect, align 4
  %18 = alloca %struct.nk_rect, align 4
  %19 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  store i32 %7, i32* %19, align 4
  store %struct.nk_context* %0, %struct.nk_context** %10, align 8
  store %struct.nk_canvas* %1, %struct.nk_canvas** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  %20 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %21 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.nk_canvas*, %struct.nk_canvas** %11, align 8
  %26 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %28 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.nk_canvas*, %struct.nk_canvas** %11, align 8
  %33 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %35 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nk_canvas*, %struct.nk_canvas** %11, align 8
  %40 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = call i8* @nk_vec2(i32 0, i32 0)
  %42 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %43 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i8* %41, i8** %45, align 8
  %46 = call i8* @nk_vec2(i32 0, i32 0)
  %47 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %48 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i8* %46, i8** %50, align 8
  %51 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nk_style_item_color(i32 %52)
  %54 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %55 = getelementptr inbounds %struct.nk_context, %struct.nk_context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @NK_WINDOW_DYNAMIC, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @nk_rect(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = call i32 @nk_window_set_bounds(%struct.nk_context* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @nk_rect(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @NK_WINDOW_NO_SCROLLBAR, align 4
  %76 = load i32, i32* %12, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @nk_begin(%struct.nk_context* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77)
  %79 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %80 = call i32 @nk_window_get_content_region(%struct.nk_context* %79)
  %81 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %18, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = bitcast %struct.nk_rect* %17 to i8*
  %83 = bitcast %struct.nk_rect* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 4, i1 false)
  %84 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %85 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %17, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %84, i32 %86, i32 1)
  %88 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %89 = call i32 @nk_widget(%struct.nk_rect* %17, %struct.nk_context* %88)
  %90 = load %struct.nk_context*, %struct.nk_context** %10, align 8
  %91 = call i32 @nk_window_get_canvas(%struct.nk_context* %90)
  %92 = load %struct.nk_canvas*, %struct.nk_canvas** %11, align 8
  %93 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  ret void
}

declare dso_local i8* @nk_vec2(i32, i32) #1

declare dso_local i32 @nk_style_item_color(i32) #1

declare dso_local i32 @nk_window_set_bounds(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_window_get_content_region(%struct.nk_context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i32 @nk_widget(%struct.nk_rect*, %struct.nk_context*) #1

declare dso_local i32 @nk_window_get_canvas(%struct.nk_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
