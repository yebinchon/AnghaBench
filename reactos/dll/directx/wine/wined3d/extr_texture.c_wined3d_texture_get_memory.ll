; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_get_memory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_get_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { %struct.TYPE_4__, i32*, %struct.wined3d_texture_sub_resource* }
%struct.TYPE_4__ = type { i32* }
%struct.wined3d_texture_sub_resource = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_bo_address = type { i32, i32* }

@.str = private unnamed_addr constant [57 x i8] c"texture %p, sub_resource_idx %u, data %p, locations %s.\0A\00", align 1
@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@WINED3D_LOCATION_USER_MEMORY = common dso_local global i32 0, align 4
@WINED3D_LOCATION_SYSMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unexpected locations %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_texture_get_memory(%struct.wined3d_texture* %0, i32 %1, %struct.wined3d_bo_address* %2, i32 %3) #0 {
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_bo_address*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_texture_sub_resource*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wined3d_bo_address* %2, %struct.wined3d_bo_address** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @wined3d_debug_location(i32 %13)
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.wined3d_texture* %10, i32 %11, %struct.wined3d_bo_address* %12, i32 %14)
  %16 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %16, i32 0, i32 2
  %18 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %18, i64 %20
  store %struct.wined3d_texture_sub_resource* %21, %struct.wined3d_texture_sub_resource** %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %7, align 8
  %28 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %9, align 8
  %30 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %7, align 8
  %33 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %77

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @WINED3D_LOCATION_USER_MEMORY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %41 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %7, align 8
  %44 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %7, align 8
  %46 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %77

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @WINED3D_LOCATION_SYSMEM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %54 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %7, align 8
  %58 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %9, align 8
  %60 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %7, align 8
  %63 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %63, align 8
  %67 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %7, align 8
  %68 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %77

69:                                               ; preds = %47
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @wined3d_debug_location(i32 %70)
  %72 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %7, align 8
  %74 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  %75 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %7, align 8
  %76 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %69, %52, %39, %26
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_texture*, i32, %struct.wined3d_bo_address*, i32) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
