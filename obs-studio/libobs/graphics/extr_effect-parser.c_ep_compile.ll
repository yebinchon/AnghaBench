; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*)* @ep_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_compile(%struct.effect_parser* %0) #0 {
  %2 = alloca %struct.effect_parser*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %6 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = call i32 @assert(%struct.TYPE_6__* %7)
  %9 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %10 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %15 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @da_resize(i32 %13, i64 %17)
  %19 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %20 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %25 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @da_resize(i32 %23, i64 %27)
  store i64 0, i64* %4, align 8
  br label %29

29:                                               ; preds = %40, %1
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %32 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @ep_compile_param(%struct.effect_parser* %37, i64 %38)
  br label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %29

43:                                               ; preds = %29
  store i64 0, i64* %4, align 8
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %47 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @ep_compile_technique(%struct.effect_parser* %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %51
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %44

61:                                               ; preds = %44
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @da_resize(i32, i64) #1

declare dso_local i32 @ep_compile_param(%struct.effect_parser*, i64) #1

declare dso_local i32 @ep_compile_technique(%struct.effect_parser*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
