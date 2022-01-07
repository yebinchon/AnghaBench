; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_render.c_RenderMaximumFaceGroup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_render.c_RenderMaximumFaceGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.FaceCount = type { i32, %struct.TYPE_13__*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_14__*)* @RenderMaximumFaceGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RenderMaximumFaceGroup(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.FaceCount, align 8
  %7 = alloca %struct.FaceCount, align 8
  %8 = alloca %struct.FaceCount, align 8
  %9 = alloca %struct.FaceCount, align 8
  %10 = alloca %struct.FaceCount, align 8
  %11 = alloca %struct.FaceCount, align 8
  %12 = alloca %struct.FaceCount, align 8
  %13 = alloca %struct.FaceCount, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 1
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %19, align 8
  %20 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 2
  store i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)* @RenderTriangle, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)** %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %106, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  call void @MaximumFan(%struct.FaceCount* sret %8, %struct.TYPE_13__* %26)
  %27 = bitcast %struct.FaceCount* %7 to i8*
  %28 = bitcast %struct.FaceCount* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  %29 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = bitcast %struct.FaceCount* %6 to i8*
  %36 = bitcast %struct.FaceCount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  br label %37

37:                                               ; preds = %34, %25
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  call void @MaximumFan(%struct.FaceCount* sret %9, %struct.TYPE_13__* %40)
  %41 = bitcast %struct.FaceCount* %7 to i8*
  %42 = bitcast %struct.FaceCount* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 24, i1 false)
  %43 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = bitcast %struct.FaceCount* %6 to i8*
  %50 = bitcast %struct.FaceCount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 24, i1 false)
  br label %51

51:                                               ; preds = %48, %37
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  call void @MaximumFan(%struct.FaceCount* sret %10, %struct.TYPE_13__* %54)
  %55 = bitcast %struct.FaceCount* %7 to i8*
  %56 = bitcast %struct.FaceCount* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = bitcast %struct.FaceCount* %6 to i8*
  %64 = bitcast %struct.FaceCount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  br label %65

65:                                               ; preds = %62, %51
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  call void @MaximumStrip(%struct.FaceCount* sret %11, %struct.TYPE_13__* %66)
  %67 = bitcast %struct.FaceCount* %7 to i8*
  %68 = bitcast %struct.FaceCount* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 24, i1 false)
  %69 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = bitcast %struct.FaceCount* %6 to i8*
  %76 = bitcast %struct.FaceCount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 24, i1 false)
  br label %77

77:                                               ; preds = %74, %65
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  call void @MaximumStrip(%struct.FaceCount* sret %12, %struct.TYPE_13__* %80)
  %81 = bitcast %struct.FaceCount* %7 to i8*
  %82 = bitcast %struct.FaceCount* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 24, i1 false)
  %83 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = bitcast %struct.FaceCount* %6 to i8*
  %90 = bitcast %struct.FaceCount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 24, i1 false)
  br label %91

91:                                               ; preds = %88, %77
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  call void @MaximumStrip(%struct.FaceCount* sret %13, %struct.TYPE_13__* %94)
  %95 = bitcast %struct.FaceCount* %7 to i8*
  %96 = bitcast %struct.FaceCount* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 24, i1 false)
  %97 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %7, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = bitcast %struct.FaceCount* %6 to i8*
  %104 = bitcast %struct.FaceCount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 24, i1 false)
  br label %105

105:                                              ; preds = %102, %91
  br label %106

106:                                              ; preds = %105, %2
  %107 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 2
  %108 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)** %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 1
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %6, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 %108(%struct.TYPE_12__* %109, %struct.TYPE_13__* %111, i32 %113)
  ret void
}

declare dso_local i32 @RenderTriangle(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local void @MaximumFan(%struct.FaceCount* sret, %struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @MaximumStrip(%struct.FaceCount* sret, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
