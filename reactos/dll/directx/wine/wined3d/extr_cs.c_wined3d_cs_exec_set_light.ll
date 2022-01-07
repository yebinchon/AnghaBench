; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_light.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.wined3d_cs_set_light = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.wined3d_light_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Adding new light.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to allocate light info.\0A\00", align 1
@STATE_LIGHT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_set_light to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_set_light(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_set_light*, align 8
  %6 = alloca %struct.wined3d_light_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wined3d_cs_set_light*
  store %struct.wined3d_cs_set_light* %10, %struct.wined3d_cs_set_light** %5, align 8
  %11 = load %struct.wined3d_cs_set_light*, %struct.wined3d_cs_set_light** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_cs_set_light, %struct.wined3d_cs_set_light* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %16 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %15, i32 0, i32 1
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.wined3d_light_info* @wined3d_state_get_light(%struct.TYPE_6__* %16, i32 %17)
  store %struct.wined3d_light_info* %18, %struct.wined3d_light_info** %6, align 8
  %19 = icmp ne %struct.wined3d_light_info* %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %2
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = call %struct.wined3d_light_info* @heap_alloc_zero(i32 40)
  store %struct.wined3d_light_info* %22, %struct.wined3d_light_info** %6, align 8
  %23 = icmp ne %struct.wined3d_light_info* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %107

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @LIGHTMAP_HASHFUNC(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %30 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %37 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %36, i32 0, i32 7
  %38 = call i32 @list_add_head(i32* %35, i32* %37)
  %39 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %40 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %43 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %26, %2
  %45 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %46 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %75

49:                                               ; preds = %44
  %50 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %51 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.wined3d_cs_set_light*, %struct.wined3d_cs_set_light** %5, align 8
  %55 = getelementptr inbounds %struct.wined3d_cs_set_light, %struct.wined3d_cs_set_light* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %62 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @STATE_LIGHT_TYPE, align 4
  %65 = call i32 @device_invalidate_state(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %49
  %67 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %68 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %71 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @STATE_ACTIVELIGHT(i32 %72)
  %74 = call i32 @device_invalidate_state(i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %66, %44
  %76 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %77 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %76, i32 0, i32 6
  %78 = load %struct.wined3d_cs_set_light*, %struct.wined3d_cs_set_light** %5, align 8
  %79 = getelementptr inbounds %struct.wined3d_cs_set_light, %struct.wined3d_cs_set_light* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 5
  %81 = bitcast %struct.TYPE_4__* %77 to i8*
  %82 = bitcast %struct.TYPE_4__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  %83 = load %struct.wined3d_cs_set_light*, %struct.wined3d_cs_set_light** %5, align 8
  %84 = getelementptr inbounds %struct.wined3d_cs_set_light, %struct.wined3d_cs_set_light* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %88 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.wined3d_cs_set_light*, %struct.wined3d_cs_set_light** %5, align 8
  %90 = getelementptr inbounds %struct.wined3d_cs_set_light, %struct.wined3d_cs_set_light* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %94 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.wined3d_cs_set_light*, %struct.wined3d_cs_set_light** %5, align 8
  %96 = getelementptr inbounds %struct.wined3d_cs_set_light, %struct.wined3d_cs_set_light* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %100 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.wined3d_cs_set_light*, %struct.wined3d_cs_set_light** %5, align 8
  %102 = getelementptr inbounds %struct.wined3d_cs_set_light, %struct.wined3d_cs_set_light* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %6, align 8
  %106 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %75, %24
  ret void
}

declare dso_local %struct.wined3d_light_info* @wined3d_state_get_light(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.wined3d_light_info* @heap_alloc_zero(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @LIGHTMAP_HASHFUNC(i32) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @device_invalidate_state(i32, i32) #1

declare dso_local i32 @STATE_ACTIVELIGHT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
