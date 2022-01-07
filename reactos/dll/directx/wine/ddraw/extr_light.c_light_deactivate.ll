; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_light.c_light_deactivate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_light.c_light_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d_light = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.d3d_device* }
%struct.d3d_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"light %p.\0A\00", align 1
@D3DLIGHT_ACTIVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @light_deactivate(%struct.d3d_light* %0) #0 {
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
  br label %46

18:                                               ; preds = %10
  %19 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %20 = getelementptr inbounds %struct.d3d_light, %struct.d3d_light* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.d3d_device*, %struct.d3d_device** %22, align 8
  store %struct.d3d_device* %23, %struct.d3d_device** %3, align 8
  %24 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %25 = getelementptr inbounds %struct.d3d_light, %struct.d3d_light* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @D3DLIGHT_ACTIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %18
  %32 = load %struct.d3d_device*, %struct.d3d_device** %3, align 8
  %33 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %32, i32 0, i32 0
  %34 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %35 = getelementptr inbounds %struct.d3d_light, %struct.d3d_light* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @IDirect3DDevice7_LightEnable(i32* %33, i32 %36, i32 %37)
  %39 = load i32, i32* @D3DLIGHT_ACTIVE, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.d3d_light*, %struct.d3d_light** %2, align 8
  %42 = getelementptr inbounds %struct.d3d_light, %struct.d3d_light* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %40
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %17, %31, %18
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.d3d_light*) #1

declare dso_local i32 @IDirect3DDevice7_LightEnable(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
