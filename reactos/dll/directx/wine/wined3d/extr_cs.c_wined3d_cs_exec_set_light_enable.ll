; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_light_enable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_light_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, %struct.wined3d_device* }
%struct.wined3d_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_cs_set_light_enable = type { i64, i32 }
%struct.wined3d_light_info = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Light doesn't exist.\0A\00", align 1
@STATE_LIGHT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_set_light_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_set_light_enable(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_set_light_enable*, align 8
  %6 = alloca %struct.wined3d_device*, align 8
  %7 = alloca %struct.wined3d_light_info*, align 8
  %8 = alloca i32, align 4
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wined3d_cs_set_light_enable*
  store %struct.wined3d_cs_set_light_enable* %10, %struct.wined3d_cs_set_light_enable** %5, align 8
  %11 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %11, i32 0, i32 1
  %13 = load %struct.wined3d_device*, %struct.wined3d_device** %12, align 8
  store %struct.wined3d_device* %13, %struct.wined3d_device** %6, align 8
  %14 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %14, i32 0, i32 0
  %16 = load %struct.wined3d_cs_set_light_enable*, %struct.wined3d_cs_set_light_enable** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_cs_set_light_enable, %struct.wined3d_cs_set_light_enable* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.wined3d_light_info* @wined3d_state_get_light(i32* %15, i32 %18)
  store %struct.wined3d_light_info* %19, %struct.wined3d_light_info** %7, align 8
  %20 = icmp ne %struct.wined3d_light_info* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %7, align 8
  %25 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %28 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %27, i32 0, i32 0
  %29 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %30 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %7, align 8
  %34 = load %struct.wined3d_cs_set_light_enable*, %struct.wined3d_cs_set_light_enable** %5, align 8
  %35 = getelementptr inbounds %struct.wined3d_cs_set_light_enable, %struct.wined3d_cs_set_light_enable* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @wined3d_state_enable_light(i32* %28, i32* %32, %struct.wined3d_light_info* %33, i64 %36)
  %38 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %7, align 8
  %39 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %23
  %44 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %45 = load i32, i32* @STATE_LIGHT_TYPE, align 4
  %46 = call i32 @device_invalidate_state(%struct.wined3d_device* %44, i32 %45)
  %47 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %48 = load %struct.wined3d_cs_set_light_enable*, %struct.wined3d_cs_set_light_enable** %5, align 8
  %49 = getelementptr inbounds %struct.wined3d_cs_set_light_enable, %struct.wined3d_cs_set_light_enable* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %7, align 8
  %54 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  br label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %55, %52 ], [ %57, %56 ]
  %60 = call i32 @STATE_ACTIVELIGHT(i32 %59)
  %61 = call i32 @device_invalidate_state(%struct.wined3d_device* %47, i32 %60)
  br label %62

62:                                               ; preds = %21, %58, %23
  ret void
}

declare dso_local %struct.wined3d_light_info* @wined3d_state_get_light(i32*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @wined3d_state_enable_light(i32*, i32*, %struct.wined3d_light_info*, i64) #1

declare dso_local i32 @device_invalidate_state(%struct.wined3d_device*, i32) #1

declare dso_local i32 @STATE_ACTIVELIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
