; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_clear_textures.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_clear_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@GS_MAX_TEXTURES = common dso_local global i64 0, align 8
@GL_TEXTURE0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_device*)* @clear_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_textures(%struct.gs_device* %0) #0 {
  %2 = alloca %struct.gs_device*, align 8
  %3 = alloca i64, align 8
  store %struct.gs_device* %0, %struct.gs_device** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %36, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @GS_MAX_TEXTURES, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %10 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %8
  %17 = load i64, i64* @GL_TEXTURE0, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %17, %18
  %20 = call i32 @gl_active_texture(i64 %19)
  %21 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %22 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gl_bind_texture(i32 %28, i32 0)
  %30 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %31 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %33
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %34, align 8
  br label %35

35:                                               ; preds = %16, %8
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %4

39:                                               ; preds = %4
  ret void
}

declare dso_local i32 @gl_active_texture(i64) #1

declare dso_local i32 @gl_bind_texture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
