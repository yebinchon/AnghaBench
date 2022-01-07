; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_acquire.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_device*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, %struct.wined3d_texture* }
%struct.wined3d_device = type { %struct.wined3d_swapchain**, i32 }
%struct.wined3d_swapchain = type { %struct.wined3d_texture*, %struct.wined3d_texture** }
%struct.wined3d_texture = type { %struct.wined3d_swapchain* }

@.str = private unnamed_addr constant [45 x i8] c"device %p, texture %p, sub_resource_idx %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Rendering onscreen.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Rendering offscreen.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %0, %struct.wined3d_texture* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_context*, align 8
  %8 = alloca %struct.wined3d_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_swapchain*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %4, align 8
  store %struct.wined3d_texture* %1, %struct.wined3d_texture** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call %struct.wined3d_context* (...) @context_get_current()
  store %struct.wined3d_context* %11, %struct.wined3d_context** %7, align 8
  %12 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %13 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.wined3d_device* %12, %struct.wined3d_texture* %13, i32 %14)
  %16 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @wined3d_from_cs(i32 %18)
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %21 = icmp ne %struct.wined3d_context* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %24 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.wined3d_context* null, %struct.wined3d_context** %7, align 8
  br label %28

28:                                               ; preds = %27, %22, %3
  %29 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %30 = icmp ne %struct.wined3d_texture* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %33 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %32, i32 0, i32 0
  %34 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %33, align 8
  %35 = icmp ne %struct.wined3d_swapchain* %34, null
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %40 = icmp ne %struct.wined3d_texture* %39, null
  br i1 %40, label %87, label %41

41:                                               ; preds = %36
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %43 = icmp ne %struct.wined3d_context* %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %46 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.wined3d_texture*, %struct.wined3d_texture** %47, align 8
  %49 = icmp ne %struct.wined3d_texture* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %51, i32 0, i32 0
  %53 = load %struct.wined3d_device*, %struct.wined3d_device** %52, align 8
  %54 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %55 = icmp eq %struct.wined3d_device* %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %58 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.wined3d_texture*, %struct.wined3d_texture** %59, align 8
  store %struct.wined3d_texture* %60, %struct.wined3d_texture** %5, align 8
  %61 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %62 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %6, align 4
  br label %86

65:                                               ; preds = %50, %44, %41
  %66 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %67 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %66, i32 0, i32 0
  %68 = load %struct.wined3d_swapchain**, %struct.wined3d_swapchain*** %67, align 8
  %69 = getelementptr inbounds %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %68, i64 0
  %70 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %69, align 8
  store %struct.wined3d_swapchain* %70, %struct.wined3d_swapchain** %10, align 8
  %71 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %10, align 8
  %72 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %71, i32 0, i32 1
  %73 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %72, align 8
  %74 = icmp ne %struct.wined3d_texture** %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %10, align 8
  %77 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %76, i32 0, i32 1
  %78 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %77, align 8
  %79 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %78, i64 0
  %80 = load %struct.wined3d_texture*, %struct.wined3d_texture** %79, align 8
  store %struct.wined3d_texture* %80, %struct.wined3d_texture** %5, align 8
  br label %85

81:                                               ; preds = %65
  %82 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %10, align 8
  %83 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %82, i32 0, i32 0
  %84 = load %struct.wined3d_texture*, %struct.wined3d_texture** %83, align 8
  store %struct.wined3d_texture* %84, %struct.wined3d_texture** %5, align 8
  br label %85

85:                                               ; preds = %81, %75
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %56
  br label %87

87:                                               ; preds = %86, %36
  %88 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %89 = icmp ne %struct.wined3d_context* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %92 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load %struct.wined3d_texture*, %struct.wined3d_texture** %93, align 8
  %95 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %96 = icmp eq %struct.wined3d_texture* %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  store %struct.wined3d_context* %98, %struct.wined3d_context** %8, align 8
  br label %129

99:                                               ; preds = %90, %87
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %105 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %104, i32 0, i32 0
  %106 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %105, align 8
  %107 = call %struct.wined3d_context* @swapchain_get_context(%struct.wined3d_swapchain* %106)
  store %struct.wined3d_context* %107, %struct.wined3d_context** %8, align 8
  br label %128

108:                                              ; preds = %99
  %109 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %111 = icmp ne %struct.wined3d_context* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %114 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %113, i32 0, i32 0
  %115 = load %struct.wined3d_device*, %struct.wined3d_device** %114, align 8
  %116 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %117 = icmp eq %struct.wined3d_device* %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  store %struct.wined3d_context* %119, %struct.wined3d_context** %8, align 8
  br label %127

120:                                              ; preds = %112, %108
  %121 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %122 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %121, i32 0, i32 0
  %123 = load %struct.wined3d_swapchain**, %struct.wined3d_swapchain*** %122, align 8
  %124 = getelementptr inbounds %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %123, i64 0
  %125 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %124, align 8
  %126 = call %struct.wined3d_context* @swapchain_get_context(%struct.wined3d_swapchain* %125)
  store %struct.wined3d_context* %126, %struct.wined3d_context** %8, align 8
  br label %127

127:                                              ; preds = %120, %118
  br label %128

128:                                              ; preds = %127, %102
  br label %129

129:                                              ; preds = %128, %97
  %130 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %131 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @context_activate(%struct.wined3d_context* %130, %struct.wined3d_texture* %131, i32 %132)
  %134 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  ret %struct.wined3d_context* %134
}

declare dso_local %struct.wined3d_context* @context_get_current(...) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @wined3d_from_cs(i32) #1

declare dso_local %struct.wined3d_context* @swapchain_get_context(%struct.wined3d_swapchain*) #1

declare dso_local i32 @context_activate(%struct.wined3d_context*, %struct.wined3d_texture*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
