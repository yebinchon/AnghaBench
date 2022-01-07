; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_allocate_gl_immutable_storage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_allocate_gl_immutable_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, i32, i32 }
%struct.wined3d_gl_info = type { i32 }

@GL_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"allocate immutable storage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*, i32, %struct.wined3d_gl_info*)* @wined3d_texture_allocate_gl_immutable_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_texture_allocate_gl_immutable_storage(%struct.wined3d_texture* %0, i32 %1, %struct.wined3d_gl_info* %2) #0 {
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wined3d_gl_info* %2, %struct.wined3d_gl_info** %6, align 8
  %10 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %11 = call i32 @wined3d_texture_get_gl_sample_count(%struct.wined3d_texture* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %13 = call i32 @wined3d_texture_get_level_pow2_height(%struct.wined3d_texture* %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %15 = call i32 @wined3d_texture_get_level_pow2_width(%struct.wined3d_texture* %14, i32 0)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %59 [
    i32 130, label %19
    i32 129, label %34
    i32 128, label %45
  ]

19:                                               ; preds = %3
  %20 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %24 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %30 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @glTexStorage3D(i32 %22, i32 %25, i32 %26, i32 %27, i32 %28, i32 %31)
  %33 = call i32 @GL_EXTCALL(i32 %32)
  br label %71

34:                                               ; preds = %3
  %35 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %36 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @GL_FALSE, align 4
  %43 = call i32 @glTexStorage2DMultisample(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = call i32 @GL_EXTCALL(i32 %43)
  br label %71

45:                                               ; preds = %3
  %46 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %47 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %54 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GL_FALSE, align 4
  %57 = call i32 @glTexStorage3DMultisample(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %55, i32 %56)
  %58 = call i32 @GL_EXTCALL(i32 %57)
  br label %71

59:                                               ; preds = %3
  %60 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %64 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @glTexStorage2D(i32 %62, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = call i32 @GL_EXTCALL(i32 %69)
  br label %71

71:                                               ; preds = %59, %45, %34, %19
  %72 = call i32 @checkGLcall(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wined3d_texture_get_gl_sample_count(%struct.wined3d_texture*) #1

declare dso_local i32 @wined3d_texture_get_level_pow2_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_pow2_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glTexStorage3D(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glTexStorage2DMultisample(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glTexStorage3DMultisample(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glTexStorage2D(i32, i32, i32, i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
