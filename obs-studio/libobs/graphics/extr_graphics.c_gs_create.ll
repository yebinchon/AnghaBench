; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (i32*, i32)* }

@GS_ERROR_FAIL = common dso_local global i32 0, align 4
@GS_ERROR_MODULE_NOT_FOUND = common dso_local global i32 0, align 4
@GS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gs_create(%struct.TYPE_7__** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GS_ERROR_FAIL, align 4
  store i32 %10, i32* %8, align 4
  %11 = call %struct.TYPE_7__* @bzalloc(i32 4)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = call i32 @pthread_mutex_init_value(i32* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = call i32 @pthread_mutex_init_value(i32* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @os_dlopen(i8* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @GS_ERROR_MODULE_NOT_FOUND, align 4
  store i32 %27, i32* %8, align 4
  br label %61

28:                                               ; preds = %3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @load_graphics_imports(%struct.TYPE_8__* %30, i32 %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %61

38:                                               ; preds = %28
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32 (i32*, i32)*, i32 (i32*, i32)** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 %42(i32* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @GS_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %61

51:                                               ; preds = %38
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = call i32 @graphics_init(%struct.TYPE_7__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @GS_ERROR_FAIL, align 4
  store i32 %56, i32* %8, align 4
  br label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %59, align 8
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %55, %50, %37, %26
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = call i32 @gs_destroy(%struct.TYPE_7__* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_7__* @bzalloc(i32) #1

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i32 @os_dlopen(i8*) #1

declare dso_local i32 @load_graphics_imports(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @graphics_init(%struct.TYPE_7__*) #1

declare dso_local i32 @gs_destroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
