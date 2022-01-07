; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_light.c_light_activate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_light.c_light_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d_light = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.d3d_device* }
%struct.d3d_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"light %p.\0A\00", align 1
@D3DLIGHT_ACTIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @light_activate(%struct.d3d_light* %0) #0 {
  %2 = alloca %struct.d3d_light*, align 8
  %3 = alloca %struct.d3d_device*, align 8
  store %struct.d3d_light* %0, %struct.d3d_light** %2, align 8
  %4 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %5 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.d3d_light* %4)
  %6 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %7 = getelementptr inbounds %struct.d3d_light, %struct.d3d_light* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %12 = getelementptr inbounds %struct.d3d_light, %struct.d3d_light* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.d3d_device*, %struct.d3d_device** %14, align 8
  %16 = icmp ne %struct.d3d_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  br label %47

18:                                               ; preds = %10
  %19 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %20 = getelementptr inbounds %struct.d3d_light, %struct.d3d_light* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.d3d_device*, %struct.d3d_device** %22, align 8
  store %struct.d3d_device* %23, %struct.d3d_device** %3, align 8
  %24 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %25 = call i32 @light_update(%struct.d3d_light* %24)
  %26 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %27 = getelementptr inbounds %struct.d3d_light, %struct.d3d_light* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @D3DLIGHT_ACTIVE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %18
  %34 = load %struct.d3d_device*, %struct.d3d_device** %3, align 8
  %35 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %34, i32 0, i32 0
  %36 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %37 = getelementptr inbounds %struct.d3d_light, %struct.d3d_light* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @IDirect3DDevice7_LightEnable(i32* %35, i32 %38, i32 %39)
  %41 = load i32, i32* @D3DLIGHT_ACTIVE, align 4
  %42 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %43 = getelementptr inbounds %struct.d3d_light, %struct.d3d_light* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %17, %33, %18
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.d3d_light*) #1

declare dso_local i32 @light_update(%struct.d3d_light*) #1

declare dso_local i32 @IDirect3DDevice7_LightEnable(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
