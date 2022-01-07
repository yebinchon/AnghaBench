; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_default_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_default_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 (i64, i32*)* }

@obs = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"Draw\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_default_render(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @obs, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @gs_effect_get_technique(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @gs_technique_begin(i32* %13)
  store i64 %14, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @gs_technique_begin_pass(i32* %20, i64 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (i64, i32*)*, i32 (i64, i32*)** %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 %32(i64 %36, i32* %37)
  br label %39

39:                                               ; preds = %28, %19
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @gs_technique_end_pass(i32* %40)
  br label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %15

45:                                               ; preds = %15
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @gs_technique_end(i32* %46)
  ret void
}

declare dso_local i32* @gs_effect_get_technique(i32*, i8*) #1

declare dso_local i64 @gs_technique_begin(i32*) #1

declare dso_local i32 @gs_technique_begin_pass(i32*, i64) #1

declare dso_local i32 @gs_technique_end_pass(i32*) #1

declare dso_local i32 @gs_technique_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
