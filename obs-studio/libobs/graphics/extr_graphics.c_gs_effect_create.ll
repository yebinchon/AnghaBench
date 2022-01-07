; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_effect_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_effect_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.gs_effect* }
%struct.gs_effect = type { i32, %struct.gs_effect*, i64, %struct.TYPE_4__* }
%struct.effect_parser = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"gs_effect_create\00", align 1
@thread_graphics = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_effect* @gs_effect_create(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.gs_effect*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.gs_effect*, align 8
  %9 = alloca %struct.effect_parser, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @gs_valid_p(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.gs_effect* null, %struct.gs_effect** %4, align 8
  br label %71

15:                                               ; preds = %3
  %16 = call %struct.gs_effect* @bzalloc(i32 32)
  store %struct.gs_effect* %16, %struct.gs_effect** %8, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_graphics, align 8
  %18 = load %struct.gs_effect*, %struct.gs_effect** %8, align 8
  %19 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %18, i32 0, i32 3
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @bstrdup(i8* %20)
  %22 = load %struct.gs_effect*, %struct.gs_effect** %8, align 8
  %23 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = call i32 @ep_init(%struct.effect_parser* %9)
  %25 = load %struct.gs_effect*, %struct.gs_effect** %8, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @ep_parse(%struct.effect_parser* %9, %struct.gs_effect* %25, i8* %26, i8* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %15
  %32 = load i8**, i8*** %7, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %9, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i8* @error_data_buildstring(i32* %36)
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.gs_effect*, %struct.gs_effect** %8, align 8
  %41 = call i32 @gs_effect_destroy(%struct.gs_effect* %40)
  store %struct.gs_effect* null, %struct.gs_effect** %8, align 8
  br label %42

42:                                               ; preds = %39, %15
  %43 = load %struct.gs_effect*, %struct.gs_effect** %8, align 8
  %44 = icmp ne %struct.gs_effect* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_graphics, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @pthread_mutex_lock(i32* %47)
  %49 = load %struct.gs_effect*, %struct.gs_effect** %8, align 8
  %50 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load %struct.gs_effect*, %struct.gs_effect** %8, align 8
  %55 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_graphics, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.gs_effect*, %struct.gs_effect** %57, align 8
  %59 = load %struct.gs_effect*, %struct.gs_effect** %8, align 8
  %60 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %59, i32 0, i32 1
  store %struct.gs_effect* %58, %struct.gs_effect** %60, align 8
  %61 = load %struct.gs_effect*, %struct.gs_effect** %8, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_graphics, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store %struct.gs_effect* %61, %struct.gs_effect** %63, align 8
  br label %64

64:                                               ; preds = %53, %45
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_graphics, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @pthread_mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %64, %42
  %69 = call i32 @ep_free(%struct.effect_parser* %9)
  %70 = load %struct.gs_effect*, %struct.gs_effect** %8, align 8
  store %struct.gs_effect* %70, %struct.gs_effect** %4, align 8
  br label %71

71:                                               ; preds = %68, %14
  %72 = load %struct.gs_effect*, %struct.gs_effect** %4, align 8
  ret %struct.gs_effect* %72
}

declare dso_local i32 @gs_valid_p(i8*, i8*) #1

declare dso_local %struct.gs_effect* @bzalloc(i32) #1

declare dso_local i64 @bstrdup(i8*) #1

declare dso_local i32 @ep_init(%struct.effect_parser*) #1

declare dso_local i32 @ep_parse(%struct.effect_parser*, %struct.gs_effect*, i8*, i8*) #1

declare dso_local i8* @error_data_buildstring(i32*) #1

declare dso_local i32 @gs_effect_destroy(%struct.gs_effect*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ep_free(%struct.effect_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
