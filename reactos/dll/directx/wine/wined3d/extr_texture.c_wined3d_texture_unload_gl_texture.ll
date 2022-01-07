; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_unload_gl_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_unload_gl_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { %struct.TYPE_5__, i64, i64, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.wined3d_device* }
%struct.wined3d_device = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.wined3d_gl_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i64*)* }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }

@.str = private unnamed_addr constant [39 x i8] c"Deleting multisample renderbuffer %u.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Deleting resolved renderbuffer %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*)* @wined3d_texture_unload_gl_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_texture_unload_gl_texture(%struct.wined3d_texture* %0) #0 {
  %2 = alloca %struct.wined3d_texture*, align 8
  %3 = alloca %struct.wined3d_device*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %2, align 8
  %6 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %7 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.wined3d_device*, %struct.wined3d_device** %8, align 8
  store %struct.wined3d_device* %9, %struct.wined3d_device** %3, align 8
  store %struct.wined3d_gl_info* null, %struct.wined3d_gl_info** %4, align 8
  store %struct.wined3d_context* null, %struct.wined3d_context** %5, align 8
  %10 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %1
  %16 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %17 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %23 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %28 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26, %21, %15, %1
  %32 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %33 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %32, i32* null, i32 0)
  store %struct.wined3d_context* %33, %struct.wined3d_context** %5, align 8
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %35 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %34, i32 0, i32 0
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %35, align 8
  store %struct.wined3d_gl_info* %36, %struct.wined3d_gl_info** %4, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %39 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %45 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %46 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %45, i32 0, i32 0
  %47 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %46, align 8
  %48 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %49 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %48, i32 0, i32 4
  %50 = call i32 @gltexture_delete(%struct.wined3d_device* %44, %struct.wined3d_gl_info* %47, %struct.TYPE_6__* %49)
  br label %51

51:                                               ; preds = %43, %37
  %52 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %53 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %59 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %60 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %59, i32 0, i32 0
  %61 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %60, align 8
  %62 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %63 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %62, i32 0, i32 3
  %64 = call i32 @gltexture_delete(%struct.wined3d_device* %58, %struct.wined3d_gl_info* %61, %struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %57, %51
  %66 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %67 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %72 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %76 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %77 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i32 @context_gl_resource_released(%struct.wined3d_device* %75, i64 %78, i32 %79)
  %81 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %82 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32 (i32, i64*)*, i32 (i32, i64*)** %83, align 8
  %85 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %86 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %85, i32 0, i32 2
  %87 = call i32 %84(i32 1, i64* %86)
  %88 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %89 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %70, %65
  %91 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %92 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  %96 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %97 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %98)
  %100 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %101 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %102 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @TRUE, align 4
  %105 = call i32 @context_gl_resource_released(%struct.wined3d_device* %100, i64 %103, i32 %104)
  %106 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %107 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32 (i32, i64*)*, i32 (i32, i64*)** %108, align 8
  %110 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %111 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %110, i32 0, i32 1
  %112 = call i32 %109(i32 1, i64* %111)
  %113 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %114 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %95, %90
  %116 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %117 = icmp ne %struct.wined3d_context* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %120 = call i32 @context_release(%struct.wined3d_context* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %123 = call i32 @wined3d_texture_set_dirty(%struct.wined3d_texture* %122)
  %124 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %125 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %124, i32 0, i32 0
  %126 = call i32 @resource_unload(%struct.TYPE_5__* %125)
  ret void
}

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @gltexture_delete(%struct.wined3d_device*, %struct.wined3d_gl_info*, %struct.TYPE_6__*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @context_gl_resource_released(%struct.wined3d_device*, i64, i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @wined3d_texture_set_dirty(%struct.wined3d_texture*) #1

declare dso_local i32 @resource_unload(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
