; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_create_pixel_unpack_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_create_pixel_unpack_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_texture_2d = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@GL_DYNAMIC_DRAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glBufferData\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_texture_2d*)* @create_pixel_unpack_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pixel_unpack_buffer(%struct.gs_texture_2d* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_texture_2d*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gs_texture_2d* %0, %struct.gs_texture_2d** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %7 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %6, i32 0, i32 3
  %8 = call i32 @gl_gen_buffers(i32 1, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

11:                                               ; preds = %1
  %12 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %13 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %14 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gl_bind_buffer(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %69

19:                                               ; preds = %11
  %20 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %21 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %24 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gs_get_format_bpp(i32 %26)
  %28 = mul nsw i32 %22, %27
  store i32 %28, i32* %4, align 4
  %29 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %30 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gs_is_compressed_format(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %4, align 4
  %37 = sdiv i32 %36, 8
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 3
  %40 = and i32 %39, -4
  store i32 %40, i32* %4, align 4
  %41 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %42 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %19
  %47 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %48 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = mul nsw i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sdiv i32 %52, 8
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %46, %35
  %55 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @GL_DYNAMIC_DRAW, align 4
  %58 = call i32 @glBufferData(i32 %55, i32 %56, i32 0, i32 %57)
  %59 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %64 = call i32 @gl_bind_buffer(i32 %63, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %18, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @gl_gen_buffers(i32, i32*) #1

declare dso_local i32 @gl_bind_buffer(i32, i32) #1

declare dso_local i32 @gs_get_format_bpp(i32) #1

declare dso_local i32 @gs_is_compressed_format(i32) #1

declare dso_local i32 @glBufferData(i32, i32, i32, i32) #1

declare dso_local i32 @gl_success(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
