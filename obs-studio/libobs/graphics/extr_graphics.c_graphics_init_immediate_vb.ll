; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_graphics_init_immediate_vb.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_graphics_init_immediate_vb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graphics_subsystem = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, %struct.gs_vb_data*, i32)* }
%struct.gs_vb_data = type { i32, i32, %struct.TYPE_3__*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i8* }

@IMMEDIATE_COUNT = common dso_local global i32 0, align 4
@GS_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graphics_subsystem*)* @graphics_init_immediate_vb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graphics_init_immediate_vb(%struct.graphics_subsystem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.graphics_subsystem*, align 8
  %4 = alloca %struct.gs_vb_data*, align 8
  store %struct.graphics_subsystem* %0, %struct.graphics_subsystem** %3, align 8
  %5 = call %struct.gs_vb_data* (...) @gs_vbdata_create()
  store %struct.gs_vb_data* %5, %struct.gs_vb_data** %4, align 8
  %6 = load i32, i32* @IMMEDIATE_COUNT, align 4
  %7 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %8 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @IMMEDIATE_COUNT, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = call i8* @bmalloc(i32 %12)
  %14 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %15 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @IMMEDIATE_COUNT, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i8* @bmalloc(i32 %19)
  %21 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %22 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @IMMEDIATE_COUNT, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @bmalloc(i32 %26)
  %28 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %29 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %31 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = call i8* @bmalloc(i32 4)
  %33 = bitcast i8* %32 to %struct.TYPE_3__*
  %34 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %35 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %34, i32 0, i32 2
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  %36 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %37 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 2, i32* %40, align 8
  %41 = load i32, i32* @IMMEDIATE_COUNT, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8* @bmalloc(i32 %44)
  %46 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %47 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i8* %45, i8** %50, align 8
  %51 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %52 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (i32, %struct.gs_vb_data*, i32)*, i32 (i32, %struct.gs_vb_data*, i32)** %53, align 8
  %55 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %56 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.gs_vb_data*, %struct.gs_vb_data** %4, align 8
  %59 = load i32, i32* @GS_DYNAMIC, align 4
  %60 = call i32 %54(i32 %57, %struct.gs_vb_data* %58, i32 %59)
  %61 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %62 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.graphics_subsystem*, %struct.graphics_subsystem** %3, align 8
  %64 = getelementptr inbounds %struct.graphics_subsystem, %struct.graphics_subsystem* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

68:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.gs_vb_data* @gs_vbdata_create(...) #1

declare dso_local i8* @bmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
