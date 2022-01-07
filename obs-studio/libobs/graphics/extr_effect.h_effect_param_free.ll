; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.h_effect_param_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.h_effect_param_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_effect_param = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, %struct.gs_effect_param* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_effect_param*)* @effect_param_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @effect_param_free(%struct.gs_effect_param* %0) #0 {
  %2 = alloca %struct.gs_effect_param*, align 8
  %3 = alloca i64, align 8
  store %struct.gs_effect_param* %0, %struct.gs_effect_param** %2, align 8
  %4 = load %struct.gs_effect_param*, %struct.gs_effect_param** %2, align 8
  %5 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @bfree(i32 %6)
  %8 = load %struct.gs_effect_param*, %struct.gs_effect_param** %2, align 8
  %9 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %8, i32 0, i32 2
  %10 = bitcast %struct.TYPE_2__* %9 to { i64, %struct.gs_effect_param* }*
  %11 = getelementptr inbounds { i64, %struct.gs_effect_param* }, { i64, %struct.gs_effect_param* }* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, %struct.gs_effect_param* }, { i64, %struct.gs_effect_param* }* %10, i32 0, i32 1
  %14 = load %struct.gs_effect_param*, %struct.gs_effect_param** %13, align 8
  %15 = call i32 @da_free(i64 %12, %struct.gs_effect_param* %14)
  %16 = load %struct.gs_effect_param*, %struct.gs_effect_param** %2, align 8
  %17 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %16, i32 0, i32 1
  %18 = bitcast %struct.TYPE_2__* %17 to { i64, %struct.gs_effect_param* }*
  %19 = getelementptr inbounds { i64, %struct.gs_effect_param* }, { i64, %struct.gs_effect_param* }* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, %struct.gs_effect_param* }, { i64, %struct.gs_effect_param* }* %18, i32 0, i32 1
  %22 = load %struct.gs_effect_param*, %struct.gs_effect_param** %21, align 8
  %23 = call i32 @da_free(i64 %20, %struct.gs_effect_param* %22)
  store i64 0, i64* %3, align 8
  br label %24

24:                                               ; preds = %38, %1
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.gs_effect_param*, %struct.gs_effect_param** %2, align 8
  %27 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.gs_effect_param*, %struct.gs_effect_param** %2, align 8
  %33 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.gs_effect_param*, %struct.gs_effect_param** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %35, i64 %36
  call void @effect_param_free(%struct.gs_effect_param* %37)
  br label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.gs_effect_param*, %struct.gs_effect_param** %2, align 8
  %43 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %42, i32 0, i32 0
  %44 = bitcast %struct.TYPE_2__* %43 to { i64, %struct.gs_effect_param* }*
  %45 = getelementptr inbounds { i64, %struct.gs_effect_param* }, { i64, %struct.gs_effect_param* }* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i64, %struct.gs_effect_param* }, { i64, %struct.gs_effect_param* }* %44, i32 0, i32 1
  %48 = load %struct.gs_effect_param*, %struct.gs_effect_param** %47, align 8
  %49 = call i32 @da_free(i64 %46, %struct.gs_effect_param* %48)
  ret void
}

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @da_free(i64, %struct.gs_effect_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
