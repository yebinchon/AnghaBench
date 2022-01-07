; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture2d_upload_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture2d_upload_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wined3d_context = type { i32 }
%struct.wined3d_box = type { i64, i64, i64, i64 }
%struct.wined3d_const_bo_address = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*, i32, %struct.wined3d_context*, %struct.wined3d_box*, %struct.wined3d_const_bo_address*, i32, i32)* @texture2d_upload_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @texture2d_upload_data(%struct.wined3d_texture* %0, i32 %1, %struct.wined3d_context* %2, %struct.wined3d_box* %3, %struct.wined3d_const_bo_address* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.wined3d_texture*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_context*, align 8
  %11 = alloca %struct.wined3d_box*, align 8
  %12 = alloca %struct.wined3d_const_bo_address*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %10, align 8
  store %struct.wined3d_box* %3, %struct.wined3d_box** %11, align 8
  store %struct.wined3d_const_bo_address* %4, %struct.wined3d_const_bo_address** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %21 = icmp ne %struct.wined3d_box* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %7
  %23 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %24 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %28 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %32 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %35 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %40 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %43 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  br label %63

47:                                               ; preds = %7
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %52 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = urem i32 %50, %53
  store i32 %54, i32* %15, align 4
  %55 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i64 @wined3d_texture_get_level_width(%struct.wined3d_texture* %55, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  %59 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i64 @wined3d_texture_get_level_height(%struct.wined3d_texture* %59, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %47, %22
  %64 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %65 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wined3d_context*, %struct.wined3d_context** %10, align 8
  %74 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %77 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @FALSE, align 4
  %82 = load %struct.wined3d_const_bo_address*, %struct.wined3d_const_bo_address** %12, align 8
  %83 = call i32 @wined3d_surface_upload_data(i32 %72, i32 %75, i32 %79, %struct.TYPE_11__* %17, i32 %80, %struct.TYPE_12__* %16, i32 %81, %struct.wined3d_const_bo_address* %82)
  ret void
}

declare dso_local i64 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i64 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_surface_upload_data(i32, i32, i32, %struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32, %struct.wined3d_const_bo_address*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
