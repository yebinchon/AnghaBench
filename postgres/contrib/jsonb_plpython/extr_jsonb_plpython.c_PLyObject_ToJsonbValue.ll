; ModuleID = '/home/carl/AnghaBench/postgres/contrib/jsonb_plpython/extr_jsonb_plpython.c_PLyObject_ToJsonbValue.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/jsonb_plpython/extr_jsonb_plpython.c_PLyObject_ToJsonbValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i32 }

@Py_None = common dso_local global %struct.TYPE_28__* null, align 8
@jbvNull = common dso_local global i32 0, align 4
@jbvBool = common dso_local global i32 0, align 4
@Py_True = common dso_local global %struct.TYPE_28__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Python type \22%s\22 cannot be transformed to jsonb\00", align 1
@WJB_ELEM = common dso_local global i32 0, align 4
@WJB_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_28__*, i32**, i32)* @PLyObject_ToJsonbValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @PLyObject_ToJsonbValue(%struct.TYPE_28__* %0, i32** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_29__, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %11 = call i64 @PyString_Check(%struct.TYPE_28__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %15 = call i64 @PyUnicode_Check(%struct.TYPE_28__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %19 = call i64 @PySequence_Check(%struct.TYPE_28__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = call %struct.TYPE_29__* @PLySequence_ToJsonbValue(%struct.TYPE_28__* %22, i32** %23)
  store %struct.TYPE_29__* %24, %struct.TYPE_29__** %4, align 8
  br label %119

25:                                               ; preds = %17
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = call i64 @PyMapping_Check(%struct.TYPE_28__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %31 = load i32**, i32*** %6, align 8
  %32 = call %struct.TYPE_29__* @PLyMapping_ToJsonbValue(%struct.TYPE_28__* %30, i32** %31)
  store %struct.TYPE_29__* %32, %struct.TYPE_29__** %4, align 8
  br label %119

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %13, %3
  %36 = load i32**, i32*** %6, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store %struct.TYPE_29__* %8, %struct.TYPE_29__** %9, align 8
  br label %42

40:                                               ; preds = %35
  %41 = call %struct.TYPE_29__* @palloc(i32 8)
  store %struct.TYPE_29__* %41, %struct.TYPE_29__** %9, align 8
  br label %42

42:                                               ; preds = %40, %39
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** @Py_None, align 8
  %45 = icmp eq %struct.TYPE_28__* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @jbvNull, align 4
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %99

50:                                               ; preds = %42
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %52 = call i64 @PyString_Check(%struct.TYPE_28__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %56 = call i64 @PyUnicode_Check(%struct.TYPE_28__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %50
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %61 = call i32 @PLyString_ToJsonbValue(%struct.TYPE_28__* %59, %struct.TYPE_29__* %60)
  br label %98

62:                                               ; preds = %54
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %64 = call i64 @PyBool_Check(%struct.TYPE_28__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i32, i32* @jbvBool, align 4
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** @Py_True, align 8
  %72 = icmp eq %struct.TYPE_28__* %70, %71
  %73 = zext i1 %72 to i32
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %97

77:                                               ; preds = %62
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %79 = call i64 @PyNumber_Check(%struct.TYPE_28__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %84 = call %struct.TYPE_29__* @PLyNumber_ToJsonbValue(%struct.TYPE_28__* %82, %struct.TYPE_29__* %83)
  store %struct.TYPE_29__* %84, %struct.TYPE_29__** %9, align 8
  br label %96

85:                                               ; preds = %77
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.TYPE_28__*
  %93 = call i32 @PLyObject_AsString(%struct.TYPE_28__* %92)
  %94 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = call i32 @ereport(i32 %86, i32 %94)
  br label %96

96:                                               ; preds = %85, %81
  br label %97

97:                                               ; preds = %96, %66
  br label %98

98:                                               ; preds = %97, %58
  br label %99

99:                                               ; preds = %98, %46
  %100 = load i32**, i32*** %6, align 8
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i32**, i32*** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @WJB_ELEM, align 4
  br label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @WJB_VALUE, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %114 = call %struct.TYPE_29__* @pushJsonbValue(i32** %104, i32 %112, %struct.TYPE_29__* %113)
  br label %117

115:                                              ; preds = %99
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  br label %117

117:                                              ; preds = %115, %111
  %118 = phi %struct.TYPE_29__* [ %114, %111 ], [ %116, %115 ]
  store %struct.TYPE_29__* %118, %struct.TYPE_29__** %4, align 8
  br label %119

119:                                              ; preds = %117, %29, %21
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  ret %struct.TYPE_29__* %120
}

declare dso_local i64 @PyString_Check(%struct.TYPE_28__*) #1

declare dso_local i64 @PyUnicode_Check(%struct.TYPE_28__*) #1

declare dso_local i64 @PySequence_Check(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @PLySequence_ToJsonbValue(%struct.TYPE_28__*, i32**) #1

declare dso_local i64 @PyMapping_Check(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @PLyMapping_ToJsonbValue(%struct.TYPE_28__*, i32**) #1

declare dso_local %struct.TYPE_29__* @palloc(i32) #1

declare dso_local i32 @PLyString_ToJsonbValue(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i64 @PyBool_Check(%struct.TYPE_28__*) #1

declare dso_local i64 @PyNumber_Check(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @PLyNumber_ToJsonbValue(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @PLyObject_AsString(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @pushJsonbValue(i32**, i32, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
