; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_evict_sysmem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_evict_sysmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, i64, i32, i32, i32, %struct.wined3d_texture_sub_resource* }
%struct.wined3d_texture_sub_resource = type { i32 }

@WINED3D_TEXTURE_CONVERTED = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_PIN_SYSMEM = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_DYNAMIC_MAP_THRESHOLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Not evicting system memory for texture %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Evicting system memory for texture %p.\0A\00", align 1
@WINED3D_LOCATION_SYSMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"WINED3D_LOCATION_SYSMEM is the only location for sub-resource %u of texture %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*)* @wined3d_texture_evict_sysmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_texture_evict_sysmem(%struct.wined3d_texture* %0) #0 {
  %2 = alloca %struct.wined3d_texture*, align 8
  %3 = alloca %struct.wined3d_texture_sub_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %2, align 8
  %6 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %7 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @WINED3D_TEXTURE_CONVERTED, align 4
  %10 = load i32, i32* @WINED3D_TEXTURE_PIN_SYSMEM, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WINED3D_TEXTURE_DYNAMIC_MAP_THRESHOLD, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %1
  %21 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.wined3d_texture* %21)
  br label %67

23:                                               ; preds = %14
  %24 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_texture* %24)
  %26 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = mul i32 %28, %31
  store i32 %32, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %60, %23
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %39 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %38, i32 0, i32 5
  %40 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %40, i64 %42
  store %struct.wined3d_texture_sub_resource* %43, %struct.wined3d_texture_sub_resource** %3, align 8
  %44 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %3, align 8
  %45 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WINED3D_LOCATION_SYSMEM, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %52 = call i32 @ERR(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %50, %struct.wined3d_texture* %51)
  br label %53

53:                                               ; preds = %49, %37
  %54 = load i32, i32* @WINED3D_LOCATION_SYSMEM, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %3, align 8
  %57 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %33

63:                                               ; preds = %33
  %64 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %65 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %64, i32 0, i32 4
  %66 = call i32 @wined3d_resource_free_sysmem(i32* %65)
  br label %67

67:                                               ; preds = %63, %20
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_texture*) #1

declare dso_local i32 @ERR(i8*, i32, %struct.wined3d_texture*) #1

declare dso_local i32 @wined3d_resource_free_sysmem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
