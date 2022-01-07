; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture3d_prepare_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture3d_prepare_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wined3d_format* }
%struct.wined3d_format = type { i32, i32, i32, i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }

@GL_TEXTURE_3D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"glTexStorage3D\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"glTexImage3D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*, %struct.wined3d_context*, i64)* @texture3d_prepare_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @texture3d_prepare_texture(%struct.wined3d_texture* %0, %struct.wined3d_context* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wined3d_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_gl_info*, align 8
  %11 = alloca i32, align 4
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %13 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  store %struct.wined3d_format* %15, %struct.wined3d_format** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %20 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %24 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %21, %18 ], [ %25, %22 ]
  store i32 %27, i32* %8, align 4
  %28 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %32 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %36 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %35, i32 0, i32 0
  %37 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %36, align 8
  store %struct.wined3d_gl_info* %37, %struct.wined3d_gl_info** %10, align 8
  %38 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %39 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %38, %struct.wined3d_context* %39, i64 %40)
  %42 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %43 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %44 = call i64 @wined3d_texture_use_immutable_storage(%struct.wined3d_texture* %42, %struct.wined3d_gl_info* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %26
  %47 = load i32, i32* @GL_TEXTURE_3D, align 4
  %48 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %49 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %53 = call i32 @wined3d_texture_get_level_width(%struct.wined3d_texture* %52, i32 0)
  %54 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %55 = call i32 @wined3d_texture_get_level_height(%struct.wined3d_texture* %54, i32 0)
  %56 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %57 = call i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture* %56, i32 0)
  %58 = call i32 @glTexStorage3D(i32 %47, i32 %50, i32 %51, i32 %53, i32 %55, i32 %57)
  %59 = call i32 @GL_EXTCALL(i32 %58)
  %60 = call i32 @checkGLcall(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %92

61:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %88, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = load i32, i32* @GL_TEXTURE_3D, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @wined3d_texture_get_level_width(%struct.wined3d_texture* %70, i32 %71)
  %73 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @wined3d_texture_get_level_height(%struct.wined3d_texture* %73, i32 %74)
  %76 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture* %76, i32 %77)
  %79 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %80 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %83 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @glTexImage3D(i32 %67, i32 %68, i32 %69, i32 %72, i32 %75, i32 %78, i32 0, i32 %81, i32 %84, i32* null)
  %86 = call i32 @GL_EXTCALL(i32 %85)
  %87 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %66
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %62

91:                                               ; preds = %62
  br label %92

92:                                               ; preds = %91, %46
  ret void
}

declare dso_local i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture*, %struct.wined3d_context*, i64) #1

declare dso_local i64 @wined3d_texture_use_immutable_storage(%struct.wined3d_texture*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glTexStorage3D(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @glTexImage3D(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
