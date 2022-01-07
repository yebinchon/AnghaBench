; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_7__, i32, i32, %struct.gs_effect* }
%struct.TYPE_7__ = type { i32 (i64)*, i32 (i32)*, i32 (i64)* }
%struct.gs_effect = type { %struct.gs_effect* }

@.str = private unnamed_addr constant [11 x i8] c"gs_destroy\00", align 1
@thread_graphics = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_destroy(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.gs_effect*, align 8
  %4 = alloca %struct.gs_effect*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call i32 @ptr_valid(%struct.TYPE_8__* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %100

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %13, %9
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @thread_graphics, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @gs_leave_context()
  br label %10

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %23 = load %struct.gs_effect*, %struct.gs_effect** %22, align 8
  store %struct.gs_effect* %23, %struct.gs_effect** %3, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** @thread_graphics, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32 (i64)*, i32 (i64)** %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = call i32 %28(i64 %31)
  br label %33

33:                                               ; preds = %36, %20
  %34 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %35 = icmp ne %struct.gs_effect* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %38 = getelementptr inbounds %struct.gs_effect, %struct.gs_effect* %37, i32 0, i32 0
  %39 = load %struct.gs_effect*, %struct.gs_effect** %38, align 8
  store %struct.gs_effect* %39, %struct.gs_effect** %4, align 8
  %40 = load %struct.gs_effect*, %struct.gs_effect** %3, align 8
  %41 = call i32 @gs_effect_actually_destroy(%struct.gs_effect* %40)
  %42 = load %struct.gs_effect*, %struct.gs_effect** %4, align 8
  store %struct.gs_effect* %42, %struct.gs_effect** %3, align 8
  br label %33

43:                                               ; preds = %33
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %47(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32 (i32)*, i32 (i32)** %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %55(i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32 (i64)*, i32 (i64)** %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = call i32 %63(i64 %66)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @thread_graphics, align 8
  br label %68

68:                                               ; preds = %43, %15
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  %71 = call i32 @pthread_mutex_destroy(i32* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = call i32 @pthread_mutex_destroy(i32* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @da_free(i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @da_free(i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @da_free(i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %68
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @os_dlclose(i64 %94)
  br label %96

96:                                               ; preds = %91, %68
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = call i32 @bfree(%struct.TYPE_8__* %97)
  %99 = call i32 (...) @gs_free_image_deps()
  br label %100

100:                                              ; preds = %96, %8
  ret void
}

declare dso_local i32 @ptr_valid(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @gs_leave_context(...) #1

declare dso_local i32 @gs_effect_actually_destroy(%struct.gs_effect*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @os_dlclose(i64) #1

declare dso_local i32 @bfree(%struct.TYPE_8__*) #1

declare dso_local i32 @gs_free_image_deps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
