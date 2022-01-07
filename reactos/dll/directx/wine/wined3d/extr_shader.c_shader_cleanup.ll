; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_cleanup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { i64, %struct.TYPE_16__*, i32, i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_15__*, i32, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_16__ = type { i32 (i64)* }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.wined3d_shader*)* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32 }

@WINED3D_SHADER_TYPE_HULL = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_GEOMETRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader*)* @shader_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_cleanup(%struct.wined3d_shader* %0) #0 {
  %2 = alloca %struct.wined3d_shader*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %2, align 8
  %3 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %4 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %3, i32 0, i32 7
  %5 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @WINED3D_SHADER_TYPE_HULL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %11, i32 0, i32 13
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @heap_free(i32 %16)
  %18 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %18, i32 0, i32 13
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @heap_free(i32 %23)
  %25 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %25, i32 0, i32 13
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @heap_free(i32 %30)
  br label %49

32:                                               ; preds = %1
  %33 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WINED3D_SHADER_TYPE_GEOMETRY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %41, i32 0, i32 13
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @heap_free(i32 %46)
  br label %48

48:                                               ; preds = %40, %32
  br label %49

49:                                               ; preds = %48, %10
  %50 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %50, i32 0, i32 12
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @heap_free(i32 %53)
  %55 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %55, i32 0, i32 11
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @heap_free(i32 %58)
  %60 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %61 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %60, i32 0, i32 10
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @heap_free(i32 %63)
  %65 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @heap_free(i32 %67)
  %69 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %70 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %69, i32 0, i32 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32 (%struct.wined3d_shader*)*, i32 (%struct.wined3d_shader*)** %74, align 8
  %76 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %77 = call i32 %75(%struct.wined3d_shader* %76)
  %78 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %79 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %78, i32 0, i32 7
  %80 = call i32 @shader_cleanup_reg_maps(%struct.TYPE_17__* %79)
  %81 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %82 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @heap_free(i32 %83)
  %85 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %86 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %85, i32 0, i32 5
  %87 = call i32 @shader_delete_constant_list(i32* %86)
  %88 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %89 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %88, i32 0, i32 4
  %90 = call i32 @shader_delete_constant_list(i32* %89)
  %91 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %92 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %91, i32 0, i32 3
  %93 = call i32 @shader_delete_constant_list(i32* %92)
  %94 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %95 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %94, i32 0, i32 2
  %96 = call i32 @list_remove(i32* %95)
  %97 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %98 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %97, i32 0, i32 1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = icmp ne %struct.TYPE_16__* %99, null
  br i1 %100, label %101, label %116

101:                                              ; preds = %49
  %102 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %103 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %108 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32 (i64)*, i32 (i64)** %110, align 8
  %112 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %113 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 %111(i64 %114)
  br label %116

116:                                              ; preds = %106, %101, %49
  ret void
}

declare dso_local i32 @heap_free(i32) #1

declare dso_local i32 @shader_cleanup_reg_maps(%struct.TYPE_17__*) #1

declare dso_local i32 @shader_delete_constant_list(i32*) #1

declare dso_local i32 @list_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
