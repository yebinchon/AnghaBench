; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_render.c_MaximumStrip.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_render.c_MaximumStrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FaceCount = type { i64, %struct.TYPE_3__*, i32*, i32*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__*, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, %struct.TYPE_3__* }

@RenderStrip = common dso_local global i32 0, align 4
@__const.MaximumStrip.newFace = private unnamed_addr constant %struct.FaceCount { i64 0, %struct.TYPE_3__* null, i32* @RenderStrip, i32* null, i32 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FaceCount*, %struct.TYPE_3__*)* @MaximumStrip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MaximumStrip(%struct.FaceCount* noalias sret %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %3, align 8
  %10 = bitcast %struct.FaceCount* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.FaceCount* @__const.MaximumStrip.newFace to i8*), i64 40, i1 false)
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  br label %12

12:                                               ; preds = %42, %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @Marked(i32 %15)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %48

19:                                               ; preds = %12
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @AddToTrail(i32 %22, i32* %23)
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %5, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %7, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @Marked(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %48

36:                                               ; preds = %19
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @AddToTrail(i32 %39, i32* %40)
  br label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %5, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %7, align 8
  br label %12

48:                                               ; preds = %35, %12
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %8, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %7, align 8
  br label %51

51:                                               ; preds = %81, %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @Marked(i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %87

58:                                               ; preds = %51
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @AddToTrail(i32 %61, i32* %62)
  %64 = load i64, i64* %4, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %4, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %7, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @Marked(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %87

75:                                               ; preds = %58
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @AddToTrail(i32 %78, i32* %79)
  br label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %4, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %4, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  store %struct.TYPE_3__* %86, %struct.TYPE_3__** %7, align 8
  br label %51

87:                                               ; preds = %74, %51
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %9, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %4, align 8
  %91 = add nsw i64 %89, %90
  %92 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %0, i32 0, i32 0
  store i64 %91, i64* %92, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @IsEven(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %0, i32 0, i32 1
  store %struct.TYPE_3__* %99, %struct.TYPE_3__** %100, align 8
  br label %117

101:                                              ; preds = %87
  %102 = load i64, i64* %4, align 8
  %103 = call i64 @IsEven(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %107 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %0, i32 0, i32 1
  store %struct.TYPE_3__* %106, %struct.TYPE_3__** %107, align 8
  br label %116

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %0, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.FaceCount, %struct.FaceCount* %0, i32 0, i32 1
  store %struct.TYPE_3__* %114, %struct.TYPE_3__** %115, align 8
  br label %116

116:                                              ; preds = %108, %105
  br label %117

117:                                              ; preds = %116, %96
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @FreeTrail(i32* %118)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @Marked(i32) #2

declare dso_local i32 @AddToTrail(i32, i32*) #2

declare dso_local i64 @IsEven(i64) #2

declare dso_local i32 @FreeTrail(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
