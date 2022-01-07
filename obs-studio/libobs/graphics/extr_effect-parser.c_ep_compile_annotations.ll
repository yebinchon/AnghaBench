; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile_annotations.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile_annotations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64, i64 }
%struct.effect_parser = type { i32 }
%struct.gs_effect_param = type { i32, i32, i32, i32, i32 }
%struct.ep_param = type { i32, i32, i32 }

@EFFECT_ANNOTATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.darray*, %struct.darray*, %struct.effect_parser*)* @ep_compile_annotations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_compile_annotations(%struct.darray* %0, %struct.darray* %1, %struct.effect_parser* %2) #0 {
  %4 = alloca %struct.darray*, align 8
  %5 = alloca %struct.darray*, align 8
  %6 = alloca %struct.effect_parser*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gs_effect_param*, align 8
  %9 = alloca %struct.ep_param*, align 8
  store %struct.darray* %0, %struct.darray** %4, align 8
  store %struct.darray* %1, %struct.darray** %5, align 8
  store %struct.effect_parser* %2, %struct.effect_parser** %6, align 8
  %10 = load %struct.darray*, %struct.darray** %5, align 8
  %11 = load %struct.darray*, %struct.darray** %4, align 8
  %12 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @darray_resize(i32 20, %struct.darray* %10, i64 %13)
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %61, %3
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.darray*, %struct.darray** %4, align 8
  %18 = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %15
  %22 = load %struct.darray*, %struct.darray** %5, align 8
  %23 = getelementptr inbounds %struct.darray, %struct.darray* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.gs_effect_param*
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %25, i64 %26
  store %struct.gs_effect_param* %27, %struct.gs_effect_param** %8, align 8
  %28 = load %struct.darray*, %struct.darray** %4, align 8
  %29 = getelementptr inbounds %struct.darray, %struct.darray* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ep_param*
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %31, i64 %32
  store %struct.ep_param* %33, %struct.ep_param** %9, align 8
  %34 = load %struct.ep_param*, %struct.ep_param** %9, align 8
  %35 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bstrdup(i32 %36)
  %38 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %39 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @EFFECT_ANNOTATION, align 4
  %41 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %42 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.effect_parser*, %struct.effect_parser** %6, align 8
  %44 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %47 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %49 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ep_param*, %struct.ep_param** %9, align 8
  %52 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @da_move(i32 %50, i32 %53)
  %55 = load %struct.ep_param*, %struct.ep_param** %9, align 8
  %56 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @get_effect_param_type(i32 %57)
  %59 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %60 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %21
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %15

64:                                               ; preds = %15
  ret void
}

declare dso_local i32 @darray_resize(i32, %struct.darray*, i64) #1

declare dso_local i32 @bstrdup(i32) #1

declare dso_local i32 @da_move(i32, i32) #1

declare dso_local i32 @get_effect_param_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
