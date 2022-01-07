; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-zstencil.c_device_zstencil_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-zstencil.c_device_zstencil_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_zstencil_buffer = type { i32*, i32, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"device_zstencil_create (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_zstencil_buffer* @device_zstencil_create(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gs_zstencil_buffer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gs_zstencil_buffer*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call %struct.gs_zstencil_buffer* @bzalloc(i32 16)
  store %struct.gs_zstencil_buffer* %11, %struct.gs_zstencil_buffer** %10, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @convert_zstencil_format(i32 %12)
  %14 = load %struct.gs_zstencil_buffer*, %struct.gs_zstencil_buffer** %10, align 8
  %15 = getelementptr inbounds %struct.gs_zstencil_buffer, %struct.gs_zstencil_buffer* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @get_attachment(i32 %16)
  %18 = load %struct.gs_zstencil_buffer*, %struct.gs_zstencil_buffer** %10, align 8
  %19 = getelementptr inbounds %struct.gs_zstencil_buffer, %struct.gs_zstencil_buffer* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.gs_zstencil_buffer*, %struct.gs_zstencil_buffer** %10, align 8
  %22 = getelementptr inbounds %struct.gs_zstencil_buffer, %struct.gs_zstencil_buffer* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.gs_zstencil_buffer*, %struct.gs_zstencil_buffer** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @gl_init_zsbuffer(%struct.gs_zstencil_buffer* %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @LOG_ERROR, align 4
  %30 = call i32 @blog(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.gs_zstencil_buffer*, %struct.gs_zstencil_buffer** %10, align 8
  %32 = call i32 @gs_zstencil_destroy(%struct.gs_zstencil_buffer* %31)
  store %struct.gs_zstencil_buffer* null, %struct.gs_zstencil_buffer** %5, align 8
  br label %35

33:                                               ; preds = %4
  %34 = load %struct.gs_zstencil_buffer*, %struct.gs_zstencil_buffer** %10, align 8
  store %struct.gs_zstencil_buffer* %34, %struct.gs_zstencil_buffer** %5, align 8
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.gs_zstencil_buffer*, %struct.gs_zstencil_buffer** %5, align 8
  ret %struct.gs_zstencil_buffer* %36
}

declare dso_local %struct.gs_zstencil_buffer* @bzalloc(i32) #1

declare dso_local i32 @convert_zstencil_format(i32) #1

declare dso_local i32 @get_attachment(i32) #1

declare dso_local i32 @gl_init_zsbuffer(%struct.gs_zstencil_buffer*, i32, i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @gs_zstencil_destroy(%struct.gs_zstencil_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
