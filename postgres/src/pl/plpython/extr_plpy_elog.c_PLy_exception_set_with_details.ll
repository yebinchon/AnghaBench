; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_elog.c_PLy_exception_set_with_details.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_elog.c_PLy_exception_set_with_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"(s)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sqlstate\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"detail\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hint\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"schema_name\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"table_name\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"column_name\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"datatype_name\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"constraint_name\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"could not convert error to Python exception\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PLy_exception_set_with_details(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %102

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @PyObject_CallObject(i32* %15, i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %102

21:                                               ; preds = %14
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @unpack_sql_state(i32 %25)
  %27 = call i32 @set_string_attr(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %102

30:                                               ; preds = %21
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @set_string_attr(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %102

38:                                               ; preds = %30
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_string_attr(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %102

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @set_string_attr(i32* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %102

54:                                               ; preds = %46
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @set_string_attr(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %102

62:                                               ; preds = %54
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_string_attr(i32* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  br label %102

70:                                               ; preds = %62
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @set_string_attr(i32* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %102

78:                                               ; preds = %70
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @set_string_attr(i32* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  br label %102

86:                                               ; preds = %78
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @set_string_attr(i32* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %102

94:                                               ; preds = %86
  %95 = load i32*, i32** %3, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @PyErr_SetObject(i32* %95, i32* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @Py_DECREF(i32* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @Py_DECREF(i32* %100)
  br label %109

102:                                              ; preds = %93, %85, %77, %69, %61, %53, %45, %37, %29, %20, %13
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @Py_XDECREF(i32* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @Py_XDECREF(i32* %105)
  %107 = load i32, i32* @ERROR, align 4
  %108 = call i32 @elog(i32 %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %109

109:                                              ; preds = %102, %94
  ret void
}

declare dso_local i32* @Py_BuildValue(i8*, i32) #1

declare dso_local i32* @PyObject_CallObject(i32*, i32*) #1

declare dso_local i32 @set_string_attr(i32*, i8*, i32) #1

declare dso_local i32 @unpack_sql_state(i32) #1

declare dso_local i32 @PyErr_SetObject(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
