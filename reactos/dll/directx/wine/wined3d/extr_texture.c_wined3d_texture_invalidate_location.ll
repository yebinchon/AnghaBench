; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_invalidate_location.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_invalidate_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, %struct.wined3d_texture_sub_resource* }
%struct.wined3d_texture_sub_resource = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"texture %p, sub_resource_idx %u, location %s.\0A\00", align 1
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@WINED3D_LOCATION_TEXTURE_SRGB = common dso_local global i32 0, align 4
@WINED3D_LOCATION_SYSMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"New locations flags are %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Sub-resource %u of texture %p does not have any up to date location.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_texture_invalidate_location(%struct.wined3d_texture* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_texture_sub_resource*, align 8
  %8 = alloca i32, align 4
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @wined3d_debug_location(i32 %11)
  %13 = call i32 (i8*, %struct.wined3d_texture*, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.wined3d_texture* %9, i32 %10, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %16 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %22 = call i32 @wined3d_texture_set_dirty(%struct.wined3d_texture* %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %25 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %24, i32 0, i32 1
  %26 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %26, i64 %28
  store %struct.wined3d_texture_sub_resource* %29, %struct.wined3d_texture_sub_resource** %7, align 8
  %30 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %7, align 8
  %31 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %7, align 8
  %36 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @WINED3D_LOCATION_SYSMEM, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %23
  %43 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %7, align 8
  %44 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @WINED3D_LOCATION_SYSMEM, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %50 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %48, %42, %23
  %54 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %7, align 8
  %55 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wined3d_debug_location(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.wined3d_texture*
  %60 = call i32 (i8*, %struct.wined3d_texture*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_texture* %59)
  %61 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %7, align 8
  %62 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %68 = call i32 @ERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %66, %struct.wined3d_texture* %67)
  br label %69

69:                                               ; preds = %65, %53
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_texture*, ...) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @wined3d_texture_set_dirty(%struct.wined3d_texture*) #1

declare dso_local i32 @ERR(i8*, i32, %struct.wined3d_texture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
