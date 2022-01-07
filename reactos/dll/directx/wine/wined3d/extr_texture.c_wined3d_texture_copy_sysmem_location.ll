; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_copy_sysmem_location.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_copy_sysmem_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.wined3d_device* }
%struct.wined3d_device = type { i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_bo_address = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"PBO upload\00", align 1
@TRUE = common dso_local global i32 0, align 4
@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"PBO download\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32)* @wined3d_texture_copy_sysmem_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_texture_copy_sysmem_location(%struct.wined3d_texture* %0, i32 %1, %struct.wined3d_context* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_texture*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_device*, align 8
  %12 = alloca %struct.wined3d_gl_info*, align 8
  %13 = alloca %struct.wined3d_bo_address, align 8
  %14 = alloca %struct.wined3d_bo_address, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %16 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %24 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.wined3d_device*, %struct.wined3d_device** %25, align 8
  store %struct.wined3d_device* %26, %struct.wined3d_device** %11, align 8
  %27 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @wined3d_texture_prepare_location(%struct.wined3d_texture* %27, i32 %28, %struct.wined3d_context* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %5, align 4
  br label %114

35:                                               ; preds = %4
  %36 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @wined3d_texture_get_memory(%struct.wined3d_texture* %36, i32 %37, %struct.wined3d_bo_address* %13, i32 %38)
  %40 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %43 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wined3d_texture_get_memory(%struct.wined3d_texture* %40, i32 %41, %struct.wined3d_bo_address* %14, i32 %49)
  %51 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %13, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %35
  %55 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  %56 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %55, i32* null, i32 0)
  store %struct.wined3d_context* %56, %struct.wined3d_context** %8, align 8
  %57 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %58 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %57, i32 0, i32 0
  %59 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %58, align 8
  store %struct.wined3d_gl_info* %59, %struct.wined3d_gl_info** %12, align 8
  %60 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %61 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %13, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @glBindBuffer(i32 %60, i64 %62)
  %64 = call i32 @GL_EXTCALL(i32 %63)
  %65 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %66 = load i32, i32* %10, align 4
  %67 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %14, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @glBufferSubData(i32 %65, i32 0, i32 %66, i32 %68)
  %70 = call i32 @GL_EXTCALL(i32 %69)
  %71 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %72 = call i32 @glBindBuffer(i32 %71, i64 0)
  %73 = call i32 @GL_EXTCALL(i32 %72)
  %74 = call i32 @checkGLcall(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %76 = call i32 @context_release(%struct.wined3d_context* %75)
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %5, align 4
  br label %114

78:                                               ; preds = %35
  %79 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %14, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %78
  %83 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  %84 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %83, i32* null, i32 0)
  store %struct.wined3d_context* %84, %struct.wined3d_context** %8, align 8
  %85 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %86 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %85, i32 0, i32 0
  %87 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %86, align 8
  store %struct.wined3d_gl_info* %87, %struct.wined3d_gl_info** %12, align 8
  %88 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %89 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %14, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @glBindBuffer(i32 %88, i64 %90)
  %92 = call i32 @GL_EXTCALL(i32 %91)
  %93 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %94 = load i32, i32* %10, align 4
  %95 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %13, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @glGetBufferSubData(i32 %93, i32 0, i32 %94, i32 %96)
  %98 = call i32 @GL_EXTCALL(i32 %97)
  %99 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %100 = call i32 @glBindBuffer(i32 %99, i64 0)
  %101 = call i32 @GL_EXTCALL(i32 %100)
  %102 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %104 = call i32 @context_release(%struct.wined3d_context* %103)
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %5, align 4
  br label %114

106:                                              ; preds = %78
  %107 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %13, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %14, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @memcpy(i32 %108, i32 %110, i32 %111)
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %106, %82, %54, %33
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @wined3d_texture_prepare_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_get_memory(%struct.wined3d_texture*, i32, %struct.wined3d_bo_address*, i32) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindBuffer(i32, i64) #1

declare dso_local i32 @glBufferSubData(i32, i32, i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @glGetBufferSubData(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
