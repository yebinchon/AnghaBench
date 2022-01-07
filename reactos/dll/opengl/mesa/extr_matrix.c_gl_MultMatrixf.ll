; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_MultMatrixf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_gl_MultMatrixf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i8*, i32, i8*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glMultMatrix\00", align 1
@GL_TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Bad matrix mode in gl_MultMatrixf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_MultMatrixf(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_8__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %11 = call i32 @gl_error(%struct.TYPE_8__* %9, i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %53 [
    i32 130, label %17
    i32 129, label %29
    i32 128, label %41
  ]

17:                                               ; preds = %12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @matmul(i32 %20, i32 %23, i32* %24)
  %26 = load i8*, i8** @GL_TRUE, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  br label %56

29:                                               ; preds = %12
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @matmul(i32 %32, i32 %35, i32* %36)
  %38 = load i8*, i8** @GL_TRUE, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %56

41:                                               ; preds = %12
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @matmul(i32 %44, i32 %47, i32* %48)
  %50 = load i8*, i8** @GL_TRUE, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %56

53:                                               ; preds = %12
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = call i32 @gl_problem(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %8, %53, %41, %29, %17
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_8__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @matmul(i32, i32, i32*) #1

declare dso_local i32 @gl_problem(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
