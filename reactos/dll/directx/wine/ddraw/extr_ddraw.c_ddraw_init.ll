; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_ddraw.c_ddraw_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_ddraw.c_ddraw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddraw = type { i32, i32, i32, i8*, i32, %struct.TYPE_14__, i32, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@ddraw7_vtbl = common dso_local global i32 0, align 4
@ddraw1_vtbl = common dso_local global i32 0, align 4
@ddraw2_vtbl = common dso_local global i32 0, align 4
@ddraw4_vtbl = common dso_local global i32 0, align 4
@d3d1_vtbl = common dso_local global i32 0, align 4
@d3d2_vtbl = common dso_local global i32 0, align 4
@d3d3_vtbl = common dso_local global i32 0, align 4
@d3d7_vtbl = common dso_local global i32 0, align 4
@ddraw_wined3d_device_parent_ops = common dso_local global i32 0, align 4
@DDRAW_WINED3D_FLAGS = common dso_local global i32 0, align 4
@WINED3D_NO3D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to create a wined3d object.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@WINED3DADAPTER_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to get device caps, hr %#x.\0A\00", align 1
@WINEDDCAPS_3D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Created a wined3d object without 3D support.\0A\00", align 1
@DDRAW_NO3D = common dso_local global i32 0, align 4
@DDRAW_STRIDE_ALIGNMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to create a wined3d device, hr %#x.\0A\00", align 1
@DD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddraw_init(%struct.ddraw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddraw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca i32, align 4
  store %struct.ddraw* %0, %struct.ddraw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %11 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %10, i32 0, i32 14
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32* @ddraw7_vtbl, i32** %12, align 8
  %13 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %14 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %13, i32 0, i32 13
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i32* @ddraw1_vtbl, i32** %15, align 8
  %16 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %17 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %16, i32 0, i32 12
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i32* @ddraw2_vtbl, i32** %18, align 8
  %19 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %20 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %19, i32 0, i32 11
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  store i32* @ddraw4_vtbl, i32** %21, align 8
  %22 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %23 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %22, i32 0, i32 10
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  store i32* @d3d1_vtbl, i32** %24, align 8
  %25 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %26 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  store i32* @d3d2_vtbl, i32** %27, align 8
  %28 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %29 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  store i32* @d3d3_vtbl, i32** %30, align 8
  %31 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %32 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  store i32* @d3d7_vtbl, i32** %33, align 8
  %34 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %35 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store i32* @ddraw_wined3d_device_parent_ops, i32** %36, align 8
  %37 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %38 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %40 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @DDRAW_WINED3D_FLAGS, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i8* @wined3d_create(i32 %44)
  %46 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %47 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = icmp ne i8* %45, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %3
  %50 = load i32, i32* @WINED3D_NO3D, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i8* @wined3d_create(i32 %53)
  %55 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %56 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = icmp ne i8* %54, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @E_FAIL, align 4
  store i32 %60, i32* %4, align 4
  br label %120

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %64 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @WINED3DADAPTER_DEFAULT, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @wined3d_get_device_caps(i8* %65, i32 %66, i32 %67, %struct.TYPE_13__* %8)
  store i32 %68, i32* %9, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %62
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %75 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @wined3d_decref(i8* %76)
  %78 = load i32, i32* @E_FAIL, align 4
  store i32 %78, i32* %4, align 4
  br label %120

79:                                               ; preds = %62
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @WINEDDCAPS_3D, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @DDRAW_NO3D, align 4
  %89 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %90 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %95 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* @WINED3DADAPTER_DEFAULT, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @DDRAW_STRIDE_ALIGNMENT, align 4
  %100 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %101 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %100, i32 0, i32 5
  %102 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %103 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %102, i32 0, i32 4
  %104 = call i32 @wined3d_device_create(i8* %96, i32 %97, i32 %98, i32* null, i32 0, i32 %99, %struct.TYPE_14__* %101, i32* %103)
  store i32 %104, i32* %9, align 4
  %105 = call i64 @FAILED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %93
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %111 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @wined3d_decref(i8* %112)
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %4, align 4
  br label %120

115:                                              ; preds = %93
  %116 = load %struct.ddraw*, %struct.ddraw** %5, align 8
  %117 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %116, i32 0, i32 2
  %118 = call i32 @list_init(i32* %117)
  %119 = load i32, i32* @DD_OK, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %115, %107, %71, %58
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i8* @wined3d_create(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_get_device_caps(i8*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @wined3d_decref(i8*) #1

declare dso_local i32 @wined3d_device_create(i8*, i32, i32, i32*, i32, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
