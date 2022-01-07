; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_GetMaterialfv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_GetMaterialfv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"glGetMaterialfv\00", align 1
@GL_FRONT = common dso_local global i64 0, align 8
@GL_BACK = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"glGetMaterialfv(face)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"glGetMaterialfv(pname)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_GetMaterialfv(%struct.TYPE_9__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_9__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %16 = call i32 @gl_error(%struct.TYPE_9__* %14, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %123

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @GL_FRONT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %32

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @GL_BACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 1, i64* %9, align 8
  br label %31

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = load i32, i32* @GL_INVALID_ENUM, align 4
  %30 = call i32 @gl_error(%struct.TYPE_9__* %28, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %123

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i64, i64* %7, align 8
  switch i64 %33, label %119 [
    i64 133, label %34
    i64 131, label %45
    i64 128, label %56
    i64 130, label %67
    i64 129, label %78
    i64 132, label %88
  ]

34:                                               ; preds = %32
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @COPY_4V(i32* %35, i32 %43)
  br label %123

45:                                               ; preds = %32
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @COPY_4V(i32* %46, i32 %54)
  br label %123

56:                                               ; preds = %32
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @COPY_4V(i32* %57, i32 %65)
  br label %123

67:                                               ; preds = %32
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @COPY_4V(i32* %68, i32 %76)
  br label %123

78:                                               ; preds = %32
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  br label %123

88:                                               ; preds = %32
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 %116, i32* %118, align 4
  br label %123

119:                                              ; preds = %32
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = load i32, i32* @GL_INVALID_ENUM, align 4
  %122 = call i32 @gl_error(%struct.TYPE_9__* %120, i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %13, %27, %119, %88, %78, %67, %56, %45, %34
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_9__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @COPY_4V(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
