; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_validate_location.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_validate_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, %struct.wined3d_texture_sub_resource* }
%struct.wined3d_texture_sub_resource = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"texture %p, sub_resource_idx %u, location %s.\0A\00", align 1
@WINED3D_LOCATION_SYSMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"New locations flags are %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_texture_validate_location(%struct.wined3d_texture* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.wined3d_texture_sub_resource*, align 8
  %8 = alloca i64, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @wined3d_debug_location(i64 %11)
  %13 = call i32 (i8*, %struct.wined3d_texture*, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.wined3d_texture* %9, i32 %10, i32 %12)
  %14 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %15 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %14, i32 0, i32 1
  %16 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %16, i64 %18
  store %struct.wined3d_texture_sub_resource* %19, %struct.wined3d_texture_sub_resource** %7, align 8
  %20 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %7, align 8
  %21 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %7, align 8
  %25 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @WINED3D_LOCATION_SYSMEM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @WINED3D_LOCATION_SYSMEM, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %37 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %43 = call i32 @wined3d_texture_evict_sysmem(%struct.wined3d_texture* %42)
  br label %44

44:                                               ; preds = %41, %35, %31, %3
  %45 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %7, align 8
  %46 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @wined3d_debug_location(i64 %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.wined3d_texture*
  %51 = call i32 (i8*, %struct.wined3d_texture*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_texture* %50)
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_texture*, ...) #1

declare dso_local i32 @wined3d_debug_location(i64) #1

declare dso_local i32 @wined3d_texture_evict_sysmem(%struct.wined3d_texture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
