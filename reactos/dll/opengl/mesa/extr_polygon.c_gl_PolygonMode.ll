; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_polygon.c_gl_PolygonMode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_polygon.c_gl_PolygonMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"glPolygonMode\00", align 1
@GL_FRONT = common dso_local global i64 0, align 8
@GL_BACK = common dso_local global i64 0, align 8
@GL_FRONT_AND_BACK = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"glPolygonMode(face)\00", align 1
@GL_POINT = common dso_local global i64 0, align 8
@GL_LINE = common dso_local global i64 0, align 8
@GL_FILL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"glPolygonMode(mode)\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@NEW_POLYGON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_PolygonMode(%struct.TYPE_7__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_7__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %13 = call i32 @gl_error(%struct.TYPE_7__* %11, i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %103

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @GL_FRONT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @GL_BACK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @GL_FRONT_AND_BACK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load i32, i32* @GL_INVALID_ENUM, align 4
  %29 = call i32 @gl_error(%struct.TYPE_7__* %27, i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %103

30:                                               ; preds = %22, %18, %14
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @GL_POINT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @GL_LINE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @GL_FILL, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = load i32, i32* @GL_INVALID_ENUM, align 4
  %45 = call i32 @gl_error(%struct.TYPE_7__* %43, i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %103

46:                                               ; preds = %38, %34, %30
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @GL_FRONT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @GL_FRONT_AND_BACK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51, %47
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @GL_BACK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @GL_FRONT_AND_BACK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64, %60
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %64
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @GL_FILL, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @GL_FILL, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80, %73
  %88 = load i32, i32* @GL_TRUE, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  br label %97

92:                                               ; preds = %80
  %93 = load i32, i32* @GL_FALSE, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @NEW_POLYGON, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %42, %26, %10
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
