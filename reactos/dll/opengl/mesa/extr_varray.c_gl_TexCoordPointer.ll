; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_TexCoordPointer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_varray.c_gl_TexCoordPointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8* }

@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"glTexCoordPointer(size)\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"glTexCoordPointer(type)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"glTexCoordPointer(stride)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_TexCoordPointer(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load i32, i32* @GL_INVALID_VALUE, align 4
  %19 = call i32 @gl_error(%struct.TYPE_6__* %17, i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %115

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %86 [
    i32 128, label %22
    i32 129, label %38
    i32 130, label %54
    i32 131, label %70
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  br label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i64 [ %27, %25 ], [ %31, %28 ]
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %90

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  br label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i64 [ %43, %41 ], [ %47, %44 ]
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  br label %90

54:                                               ; preds = %20
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  br label %64

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i64 [ %59, %57 ], [ %63, %60 ]
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %90

70:                                               ; preds = %20
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  br label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i64 [ %75, %73 ], [ %79, %76 ]
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  br label %90

86:                                               ; preds = %20
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = load i32, i32* @GL_INVALID_ENUM, align 4
  %89 = call i32 @gl_error(%struct.TYPE_6__* %87, i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %115

90:                                               ; preds = %80, %64, %48, %32
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = load i32, i32* @GL_INVALID_VALUE, align 4
  %96 = call i32 @gl_error(%struct.TYPE_6__* %94, i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %115

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = bitcast i32* %110 to i8*
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  store i8* %111, i8** %114, align 8
  br label %115

115:                                              ; preds = %97, %93, %86, %16
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
