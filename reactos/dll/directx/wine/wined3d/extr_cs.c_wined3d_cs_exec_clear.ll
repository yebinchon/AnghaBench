; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_clear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.wined3d_device* }
%struct.wined3d_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*, %struct.wined3d_device*, i32, %struct.TYPE_10__*, i32, i32, i32*, i32, i32*, i32, i32)* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.wined3d_cs_clear = type { i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32 }

@WINED3DCLEAR_TARGET = common dso_local global i32 0, align 4
@WINED3DCLEAR_ZBUFFER = common dso_local global i32 0, align 4
@WINED3DCLEAR_STENCIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_clear(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_clear*, align 8
  %6 = alloca %struct.wined3d_device*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wined3d_cs_clear*
  store %struct.wined3d_cs_clear* %9, %struct.wined3d_cs_clear** %5, align 8
  %10 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %11 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %10, i32 0, i32 0
  %12 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  store %struct.wined3d_device* %12, %struct.wined3d_device** %6, align 8
  %13 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %14 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_9__*, %struct.wined3d_device*, i32, %struct.TYPE_10__*, i32, i32, i32*, i32, i32*, i32, i32)*, i32 (%struct.TYPE_9__*, %struct.wined3d_device*, i32, %struct.TYPE_10__*, i32, i32, i32*, i32, i32*, i32, i32)** %18, align 8
  %20 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %21 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %24 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %25 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %31 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %34 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %37 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %36, i32 0, i32 6
  %38 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %39 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %42 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %41, i32 0, i32 5
  %43 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %44 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %47 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %19(%struct.TYPE_9__* %22, %struct.wined3d_device* %23, i32 %26, %struct.TYPE_10__* %29, i32 %32, i32 %35, i32* %37, i32 %40, i32* %42, i32 %45, i32 %48)
  %50 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %51 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @WINED3DCLEAR_TARGET, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %88, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %60 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %57
  %64 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %65 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %64, i32 0, i32 2
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %68, i64 %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = icmp ne %struct.TYPE_7__* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %63
  %75 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %76 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %75, i32 0, i32 2
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %79, i64 %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @wined3d_resource_release(i32 %85)
  br label %87

87:                                               ; preds = %74, %63
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %57

91:                                               ; preds = %57
  br label %92

92:                                               ; preds = %91, %2
  %93 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %94 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @WINED3DCLEAR_ZBUFFER, align 4
  %97 = load i32, i32* @WINED3DCLEAR_STENCIL, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %92
  %102 = load %struct.wined3d_cs_clear*, %struct.wined3d_cs_clear** %5, align 8
  %103 = getelementptr inbounds %struct.wined3d_cs_clear, %struct.wined3d_cs_clear* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @wined3d_resource_release(i32 %108)
  br label %110

110:                                              ; preds = %101, %92
  ret void
}

declare dso_local i32 @wined3d_resource_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
