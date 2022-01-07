; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"Initializing adapters.\0A\00", align 1
@WINED3D_NO3D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to initialize adapter.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@WINED3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_init(%struct.wined3d* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wined3d* %0, %struct.wined3d** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.wined3d*, %struct.wined3d** %4, align 8
  %8 = getelementptr inbounds %struct.wined3d, %struct.wined3d* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.wined3d*, %struct.wined3d** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d, %struct.wined3d* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @WINED3D_NO3D, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.wined3d*, %struct.wined3d** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d, %struct.wined3d* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @wined3d_adapter_init_nogl(i32* %21, i32 0)
  store i32 %22, i32* %6, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.wined3d*, %struct.wined3d** %4, align 8
  %25 = getelementptr inbounds %struct.wined3d, %struct.wined3d* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @wined3d_adapter_init(i32* %27, i32 0, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @E_FAIL, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %30
  %37 = load %struct.wined3d*, %struct.wined3d** %4, align 8
  %38 = getelementptr inbounds %struct.wined3d, %struct.wined3d* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* @WINED3D_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @wined3d_adapter_init_nogl(i32*, i32) #1

declare dso_local i32 @wined3d_adapter_init(i32*, i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
