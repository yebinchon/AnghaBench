; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_attrib.c_gl_PopClientAttrib.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_attrib.c_gl_PopClientAttrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, %struct.gl_attrib_node** }
%struct.gl_attrib_node = type { i32, i64, %struct.gl_attrib_node* }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"glPopClientAttrib\00", align 1
@GL_STACK_UNDERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Bad attrib flag in PopClientAttrib\00", align 1
@NEW_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_PopClientAttrib(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.gl_attrib_node*, align 8
  %4 = alloca %struct.gl_attrib_node*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_6__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %11 = call i32 @gl_error(%struct.TYPE_6__* %9, i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %82

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = load i32, i32* @GL_STACK_UNDERFLOW, align 4
  %20 = call i32 @gl_error(%struct.TYPE_6__* %18, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %82

21:                                               ; preds = %12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = load %struct.gl_attrib_node**, %struct.gl_attrib_node*** %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.gl_attrib_node*, %struct.gl_attrib_node** %28, i64 %31
  %33 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %32, align 8
  store %struct.gl_attrib_node* %33, %struct.gl_attrib_node** %3, align 8
  br label %34

34:                                               ; preds = %65, %21
  %35 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %36 = icmp ne %struct.gl_attrib_node* %35, null
  br i1 %36, label %37, label %78

37:                                               ; preds = %34
  %38 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %39 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %62 [
    i32 130, label %41
    i32 129, label %48
    i32 128, label %55
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %45 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @MEMCPY(i32* %43, i64 %46, i32 4)
  br label %65

48:                                               ; preds = %37
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %52 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @MEMCPY(i32* %50, i64 %53, i32 4)
  br label %65

55:                                               ; preds = %37
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %59 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @MEMCPY(i32* %57, i64 %60, i32 4)
  br label %65

62:                                               ; preds = %37
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = call i32 @gl_problem(%struct.TYPE_6__* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %55, %48, %41
  %66 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %67 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %66, i32 0, i32 2
  %68 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %67, align 8
  store %struct.gl_attrib_node* %68, %struct.gl_attrib_node** %4, align 8
  %69 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %70 = getelementptr inbounds %struct.gl_attrib_node, %struct.gl_attrib_node* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @free(i8* %72)
  %74 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %3, align 8
  %75 = bitcast %struct.gl_attrib_node* %74 to i8*
  %76 = call i32 @free(i8* %75)
  %77 = load %struct.gl_attrib_node*, %struct.gl_attrib_node** %4, align 8
  store %struct.gl_attrib_node* %77, %struct.gl_attrib_node** %3, align 8
  br label %34

78:                                               ; preds = %34
  %79 = load i32, i32* @NEW_ALL, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %17, %8
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_6__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @MEMCPY(i32*, i64, i32) #1

declare dso_local i32 @gl_problem(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
