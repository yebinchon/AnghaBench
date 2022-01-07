; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_param_get_annotation_by_name.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_param_get_annotation_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_effect_param = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.gs_effect_param* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_effect_param* @gs_param_get_annotation_by_name(%struct.gs_effect_param* %0, i8* %1) #0 {
  %3 = alloca %struct.gs_effect_param*, align 8
  %4 = alloca %struct.gs_effect_param*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gs_effect_param*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gs_effect_param*, align 8
  store %struct.gs_effect_param* %0, %struct.gs_effect_param** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.gs_effect_param*, %struct.gs_effect_param** %4, align 8
  %10 = icmp ne %struct.gs_effect_param* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.gs_effect_param* null, %struct.gs_effect_param** %3, align 8
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.gs_effect_param*, %struct.gs_effect_param** %4, align 8
  %14 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.gs_effect_param*, %struct.gs_effect_param** %15, align 8
  store %struct.gs_effect_param* %16, %struct.gs_effect_param** %6, align 8
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %37, %12
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.gs_effect_param*, %struct.gs_effect_param** %4, align 8
  %20 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load %struct.gs_effect_param*, %struct.gs_effect_param** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %25, i64 %26
  store %struct.gs_effect_param* %27, %struct.gs_effect_param** %8, align 8
  %28 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %29 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strcmp(i32 %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  store %struct.gs_effect_param* %35, %struct.gs_effect_param** %3, align 8
  br label %41

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %17

40:                                               ; preds = %17
  store %struct.gs_effect_param* null, %struct.gs_effect_param** %3, align 8
  br label %41

41:                                               ; preds = %40, %34, %11
  %42 = load %struct.gs_effect_param*, %struct.gs_effect_param** %3, align 8
  ret %struct.gs_effect_param* %42
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
