; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_graphics_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_graphics_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graphics_subsystem = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32)*, i32 (i32, i32, i8*, i32, i8*)*, i32 (i32)* }
%struct.TYPE_3__ = type { i32, i8*, i32, i8*, i32 }
%struct.matrix4 = type { i32 }

@GS_BLEND_SRCALPHA = common dso_local global i32 0, align 4
@GS_BLEND_INVSRCALPHA = common dso_local global i8* null, align 8
@GS_BLEND_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graphics_subsystem*)* @graphics_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graphics_init(%struct.graphics_subsystem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.graphics_subsystem*, align 8
  %4 = alloca %struct.matrix4, align 4
  store %struct.graphics_subsystem* %0, %struct.graphics_subsystem** %3, align 8
  %5 = call i32 @matrix4_identity(%struct.matrix4* %4)
  %6 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %7 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @da_push_back(i32 %8, %struct.matrix4* %4)
  %10 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %11 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %15 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %13(i32 %16)
  %18 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %19 = call i32 @graphics_init_immediate_vb(%struct.graphics_subsystem* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

22:                                               ; preds = %1
  %23 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %24 = call i32 @graphics_init_sprite_vb(%struct.graphics_subsystem* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %80

27:                                               ; preds = %22
  %28 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %29 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %28, i32 0, i32 4
  %30 = call i64 @pthread_mutex_init(i32* %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %80

33:                                               ; preds = %27
  %34 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %35 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %34, i32 0, i32 3
  %36 = call i64 @pthread_mutex_init(i32* %35, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %80

39:                                               ; preds = %33
  %40 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %41 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32 (i32, i32, i8*, i32, i8*)*, i32 (i32, i32, i8*, i32, i8*)** %42, align 8
  %44 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %45 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GS_BLEND_SRCALPHA, align 4
  %48 = load i8*, i8** @GS_BLEND_INVSRCALPHA, align 8
  %49 = load i32, i32* @GS_BLEND_ONE, align 4
  %50 = load i8*, i8** @GS_BLEND_INVSRCALPHA, align 8
  %51 = call i32 %43(i32 %46, i32 %47, i8* %48, i32 %49, i8* %50)
  %52 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %53 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @GS_BLEND_SRCALPHA, align 4
  %56 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %57 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 8
  %59 = load i8*, i8** @GS_BLEND_INVSRCALPHA, align 8
  %60 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %61 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* @GS_BLEND_ONE, align 4
  %64 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %65 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load i8*, i8** @GS_BLEND_INVSRCALPHA, align 8
  %68 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %69 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %72 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (i32)*, i32 (i32)** %73, align 8
  %75 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %76 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %74(i32 %77)
  %79 = call i32 (...) @gs_init_image_deps()
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %39, %38, %32, %26, %21
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @matrix4_identity(%struct.matrix4*) #1

declare dso_local i32 @da_push_back(i32, %struct.matrix4*) #1

declare dso_local i32 @graphics_init_immediate_vb(%struct.graphics_subsystem*) #1

declare dso_local i32 @graphics_init_sprite_vb(%struct.graphics_subsystem*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @gs_init_image_deps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
