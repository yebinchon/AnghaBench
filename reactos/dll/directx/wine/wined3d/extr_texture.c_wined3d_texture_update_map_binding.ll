; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_update_map_binding.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_update_map_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.wined3d_device* }
%struct.wined3d_device = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.wined3d_context = type { %struct.wined3d_context* }

@.str = private unnamed_addr constant [29 x i8] c"Failed to load location %s.\0A\00", align 1
@WINED3D_LOCATION_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*)* @wined3d_texture_update_map_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_texture_update_map_binding(%struct.wined3d_texture* %0) #0 {
  %2 = alloca %struct.wined3d_texture*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %2, align 8
  %8 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul i32 %10, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.wined3d_device*, %struct.wined3d_device** %17, align 8
  store %struct.wined3d_device* %18, %struct.wined3d_device** %4, align 8
  %19 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  store %struct.wined3d_context* null, %struct.wined3d_context** %6, align 8
  %22 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %28 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %27, i32* null, i32 0)
  store %struct.wined3d_context* %28, %struct.wined3d_context** %6, align 8
  br label %29

29:                                               ; preds = %26, %1
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %74, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %30
  %35 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %36 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %35, i32 0, i32 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %44 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %34
  %49 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %49, i32 %50, %struct.wined3d_context* %51, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @wined3d_debug_location(i64 %56)
  %58 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %48, %34
  %60 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %61 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WINED3D_LOCATION_BUFFER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %70 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %69, i32 0, i32 0
  %71 = load %struct.wined3d_context*, %struct.wined3d_context** %70, align 8
  %72 = call i32 @wined3d_texture_remove_buffer_object(%struct.wined3d_texture* %67, i32 %68, %struct.wined3d_context* %71)
  br label %73

73:                                               ; preds = %66, %59
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %30

77:                                               ; preds = %30
  %78 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %79 = icmp ne %struct.wined3d_context* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %82 = call i32 @context_release(%struct.wined3d_context* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %86 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %89 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  ret void
}

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i64) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @wined3d_debug_location(i64) #1

declare dso_local i32 @wined3d_texture_remove_buffer_object(%struct.wined3d_texture*, i32, %struct.wined3d_context*) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
