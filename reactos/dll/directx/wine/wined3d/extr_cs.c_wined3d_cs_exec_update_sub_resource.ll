; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_update_sub_resource.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_update_sub_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32 }
%struct.wined3d_cs_update_sub_resource = type { i32, %struct.TYPE_2__, %struct.wined3d_box, %struct.wined3d_resource* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wined3d_box = type { i32, i32, i32, i32, i32, i32 }
%struct.wined3d_resource = type { i64 }
%struct.wined3d_const_bo_address = type { i32, i64 }
%struct.wined3d_context = type { i32 }
%struct.wined3d_texture = type { i32 }
%struct.wined3d_buffer = type { i32 }

@WINED3D_RTYPE_BUFFER = common dso_local global i64 0, align 8
@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to load buffer location.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_update_sub_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_update_sub_resource(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_update_sub_resource*, align 8
  %6 = alloca %struct.wined3d_resource*, align 8
  %7 = alloca %struct.wined3d_box*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_const_bo_address, align 8
  %13 = alloca %struct.wined3d_context*, align 8
  %14 = alloca %struct.wined3d_texture*, align 8
  %15 = alloca %struct.wined3d_buffer*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.wined3d_cs_update_sub_resource*
  store %struct.wined3d_cs_update_sub_resource* %17, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %18 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %18, i32 0, i32 3
  %20 = load %struct.wined3d_resource*, %struct.wined3d_resource** %19, align 8
  store %struct.wined3d_resource* %20, %struct.wined3d_resource** %6, align 8
  %21 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %22 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %21, i32 0, i32 2
  store %struct.wined3d_box* %22, %struct.wined3d_box** %7, align 8
  %23 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %24 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.wined3d_context* @context_acquire(i32 %25, i32* null, i32 0)
  store %struct.wined3d_context* %26, %struct.wined3d_context** %13, align 8
  %27 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %28 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %2
  %33 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %34 = call %struct.wined3d_buffer* @buffer_from_resource(%struct.wined3d_resource* %33)
  store %struct.wined3d_buffer* %34, %struct.wined3d_buffer** %15, align 8
  %35 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %15, align 8
  %36 = load %struct.wined3d_context*, %struct.wined3d_context** %13, align 8
  %37 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %38 = call i32 @wined3d_buffer_load_location(%struct.wined3d_buffer* %35, %struct.wined3d_context* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %158

42:                                               ; preds = %32
  %43 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %15, align 8
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %13, align 8
  %45 = load %struct.wined3d_box*, %struct.wined3d_box** %7, align 8
  %46 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %47 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wined3d_buffer_upload_data(%struct.wined3d_buffer* %43, %struct.wined3d_context* %44, %struct.wined3d_box* %45, i32 %49)
  %51 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %15, align 8
  %52 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %53 = xor i32 %52, -1
  %54 = call i32 @wined3d_buffer_invalidate_location(%struct.wined3d_buffer* %51, i32 %53)
  br label %158

55:                                               ; preds = %2
  %56 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %57 = call %struct.wined3d_texture* @wined3d_texture_from_resource(%struct.wined3d_resource* %56)
  store %struct.wined3d_texture* %57, %struct.wined3d_texture** %14, align 8
  %58 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %59 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.wined3d_texture*, %struct.wined3d_texture** %14, align 8
  %62 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = urem i32 %60, %63
  store i32 %64, i32* %11, align 4
  %65 = load %struct.wined3d_texture*, %struct.wined3d_texture** %14, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @wined3d_texture_get_level_width(%struct.wined3d_texture* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.wined3d_texture*, %struct.wined3d_texture** %14, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @wined3d_texture_get_level_height(%struct.wined3d_texture* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.wined3d_texture*, %struct.wined3d_texture** %14, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %12, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %76 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %12, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load %struct.wined3d_box*, %struct.wined3d_box** %7, align 8
  %81 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %117, label %84

84:                                               ; preds = %55
  %85 = load %struct.wined3d_box*, %struct.wined3d_box** %7, align 8
  %86 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %117, label %89

89:                                               ; preds = %84
  %90 = load %struct.wined3d_box*, %struct.wined3d_box** %7, align 8
  %91 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %117, label %94

94:                                               ; preds = %89
  %95 = load %struct.wined3d_box*, %struct.wined3d_box** %7, align 8
  %96 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load %struct.wined3d_box*, %struct.wined3d_box** %7, align 8
  %102 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load %struct.wined3d_box*, %struct.wined3d_box** %7, align 8
  %108 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.wined3d_texture*, %struct.wined3d_texture** %14, align 8
  %114 = load %struct.wined3d_context*, %struct.wined3d_context** %13, align 8
  %115 = load i32, i32* @FALSE, align 4
  %116 = call i32 @wined3d_texture_prepare_texture(%struct.wined3d_texture* %113, %struct.wined3d_context* %114, i32 %115)
  br label %125

117:                                              ; preds = %106, %100, %94, %89, %84, %55
  %118 = load %struct.wined3d_texture*, %struct.wined3d_texture** %14, align 8
  %119 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %120 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.wined3d_context*, %struct.wined3d_context** %13, align 8
  %123 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %124 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %118, i32 %121, %struct.wined3d_context* %122, i32 %123)
  br label %125

125:                                              ; preds = %117, %112
  %126 = load %struct.wined3d_texture*, %struct.wined3d_texture** %14, align 8
  %127 = load %struct.wined3d_context*, %struct.wined3d_context** %13, align 8
  %128 = load i32, i32* @FALSE, align 4
  %129 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %126, %struct.wined3d_context* %127, i32 %128)
  %130 = load %struct.wined3d_texture*, %struct.wined3d_texture** %14, align 8
  %131 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %132 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.wined3d_context*, %struct.wined3d_context** %13, align 8
  %135 = load %struct.wined3d_box*, %struct.wined3d_box** %7, align 8
  %136 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %137 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %141 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @wined3d_texture_upload_data(%struct.wined3d_texture* %130, i32 %133, %struct.wined3d_context* %134, %struct.wined3d_box* %135, %struct.wined3d_const_bo_address* %12, i32 %139, i32 %143)
  %145 = load %struct.wined3d_texture*, %struct.wined3d_texture** %14, align 8
  %146 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %147 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %150 = call i32 @wined3d_texture_validate_location(%struct.wined3d_texture* %145, i32 %148, i32 %149)
  %151 = load %struct.wined3d_texture*, %struct.wined3d_texture** %14, align 8
  %152 = load %struct.wined3d_cs_update_sub_resource*, %struct.wined3d_cs_update_sub_resource** %5, align 8
  %153 = getelementptr inbounds %struct.wined3d_cs_update_sub_resource, %struct.wined3d_cs_update_sub_resource* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %156 = xor i32 %155, -1
  %157 = call i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture* %151, i32 %154, i32 %156)
  br label %158

158:                                              ; preds = %125, %42, %40
  %159 = load %struct.wined3d_context*, %struct.wined3d_context** %13, align 8
  %160 = call i32 @context_release(%struct.wined3d_context* %159)
  %161 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %162 = call i32 @wined3d_resource_release(%struct.wined3d_resource* %161)
  ret void
}

declare dso_local %struct.wined3d_context* @context_acquire(i32, i32*, i32) #1

declare dso_local %struct.wined3d_buffer* @buffer_from_resource(%struct.wined3d_resource*) #1

declare dso_local i32 @wined3d_buffer_load_location(%struct.wined3d_buffer*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @wined3d_buffer_upload_data(%struct.wined3d_buffer*, %struct.wined3d_context*, %struct.wined3d_box*, i32) #1

declare dso_local i32 @wined3d_buffer_invalidate_location(%struct.wined3d_buffer*, i32) #1

declare dso_local %struct.wined3d_texture* @wined3d_texture_from_resource(%struct.wined3d_resource*) #1

declare dso_local i32 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_prepare_texture(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_upload_data(%struct.wined3d_texture*, i32, %struct.wined3d_context*, %struct.wined3d_box*, %struct.wined3d_const_bo_address*, i32, i32) #1

declare dso_local i32 @wined3d_texture_validate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @wined3d_resource_release(%struct.wined3d_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
