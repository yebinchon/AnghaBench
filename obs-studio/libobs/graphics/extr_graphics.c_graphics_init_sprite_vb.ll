; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_graphics_init_sprite_vb.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_graphics_init_sprite_vb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graphics_subsystem = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, %struct.gs_vb_data*, i32)* }
%struct.gs_vb_data = type { i32, i32, %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i32, i8* }

@GS_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graphics_subsystem*)* @graphics_init_sprite_vb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graphics_init_sprite_vb(%struct.graphics_subsystem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.graphics_subsystem*, align 8
  %4 = alloca %struct.gs_vb_data*, align 8
  store %struct.graphics_subsystem* %0, %struct.graphics_subsystem** %3, align 8
  %5 = call %struct.gs_vb_data* (...) @gs_vbdata_create()
  store %struct.gs_vb_data* %5, %struct.gs_vb_data** %4, align 8
  %6 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %7 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %6, i32 0, i32 0
  store i32 4, i32* %7, align 8
  %8 = call i8* @bmalloc(i32 16)
  %9 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %10 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %12 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = call i8* @bmalloc(i32 4)
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  %15 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %16 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %15, i32 0, i32 2
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %16, align 8
  %17 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %18 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 2, i32* %21, align 8
  %22 = call i8* @bmalloc(i32 16)
  %23 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %24 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i8* %22, i8** %27, align 8
  %28 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %29 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @memset(i8* %30, i32 0, i32 16)
  %32 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %33 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @memset(i8* %37, i32 0, i32 16)
  %39 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %40 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (i32, %struct.gs_vb_data*, i32)*, i32 (i32, %struct.gs_vb_data*, i32)** %41, align 8
  %43 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %44 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %47 = load i32, i32* @GS_DYNAMIC, align 4
  %48 = call i32 %42(i32 %45, %struct.gs_vb_data* %46, i32 %47)
  %49 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %50 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %52 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

56:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.gs_vb_data* @gs_vbdata_create(...) #1

declare dso_local i8* @bmalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
