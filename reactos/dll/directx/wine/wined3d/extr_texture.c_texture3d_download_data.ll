; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture3d_download_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture3d_download_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.wined3d_format* }
%struct.wined3d_format = type { i32, i32, i32, i64 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32, i32)* }
%struct.wined3d_bo_address = type { i64, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Attempting to download a converted volume, format %s.\0A\00", align 1
@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"glBindBuffer\00", align 1
@GL_TEXTURE_3D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"glGetTexImage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*, i32, %struct.wined3d_context*, %struct.wined3d_bo_address*)* @texture3d_download_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @texture3d_download_data(%struct.wined3d_texture* %0, i32 %1, %struct.wined3d_context* %2, %struct.wined3d_bo_address* %3) #0 {
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_context*, align 8
  %8 = alloca %struct.wined3d_bo_address*, align 8
  %9 = alloca %struct.wined3d_format*, align 8
  %10 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %7, align 8
  store %struct.wined3d_bo_address* %3, %struct.wined3d_bo_address** %8, align 8
  %11 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.wined3d_format*, %struct.wined3d_format** %13, align 8
  store %struct.wined3d_format* %14, %struct.wined3d_format** %9, align 8
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 0
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %16, align 8
  store %struct.wined3d_gl_info* %17, %struct.wined3d_gl_info** %10, align 8
  %18 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %19 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %24 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @debug_d3dformat(i32 %25)
  %27 = call i32 @FIXME(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %69

28:                                               ; preds = %4
  %29 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %30 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %35 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %36 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @glBindBuffer(i32 %34, i64 %37)
  %39 = call i32 @GL_EXTCALL(i32 %38)
  %40 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %43 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %45, align 8
  %47 = load i32, i32* @GL_TEXTURE_3D, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %50 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %53 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %56 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %46(i32 %47, i32 %48, i32 %51, i32 %54, i32 %57)
  %59 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %61 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %41
  %65 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %66 = call i32 @glBindBuffer(i32 %65, i64 0)
  %67 = call i32 @GL_EXTCALL(i32 %66)
  %68 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %22, %64, %41
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindBuffer(i32, i64) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
