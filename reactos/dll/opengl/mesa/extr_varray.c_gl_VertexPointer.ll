; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_VertexPointer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_VertexPointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i64, i64 }

@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"glVertexPointer(size)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"glVertexPointer(stride)\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"glVertexPointer(type)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_VertexPointer(%struct.TYPE_6__* %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load i32, i32* @GL_INVALID_VALUE, align 4
  %19 = call i32 @gl_error(%struct.TYPE_6__* %17, i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %107

20:                                               ; preds = %13
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = load i32, i32* @GL_INVALID_VALUE, align 4
  %26 = call i32 @gl_error(%struct.TYPE_6__* %24, i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %107

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %85 [
    i32 128, label %29
    i32 129, label %43
    i32 130, label %57
    i32 131, label %71
  ]

29:                                               ; preds = %27
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  br label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i64 [ %33, %32 ], [ %37, %34 ]
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store i64 %39, i64* %42, align 8
  br label %89

43:                                               ; preds = %27
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  br label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  br label %52

52:                                               ; preds = %48, %46
  %53 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  store i64 %53, i64* %56, align 8
  br label %89

57:                                               ; preds = %27
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  br label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i64 [ %61, %60 ], [ %65, %62 ]
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i64 %67, i64* %70, align 8
  br label %89

71:                                               ; preds = %27
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i64, i64* %9, align 8
  br label %80

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi i64 [ %75, %74 ], [ %79, %76 ]
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  store i64 %81, i64* %84, align 8
  br label %89

85:                                               ; preds = %27
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = load i32, i32* @GL_INVALID_ENUM, align 4
  %88 = call i32 @gl_error(%struct.TYPE_6__* %86, i32 %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %107

89:                                               ; preds = %80, %66, %52, %38
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  store i64 %98, i64* %101, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i8* %103, i8** %106, align 8
  br label %107

107:                                              ; preds = %89, %85, %23, %16
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
