; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_transform_jsonb_string_values.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_transform_jsonb_string_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@WJB_DONE = common dso_local global i64 0, align 8
@WJB_VALUE = common dso_local global i64 0, align 8
@WJB_ELEM = common dso_local global i64 0, align 8
@jbvString = common dso_local global i64 0, align 8
@WJB_BEGIN_ARRAY = common dso_local global i64 0, align 8
@WJB_KEY = common dso_local global i64 0, align 8
@jbvArray = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @transform_jsonb_string_values(%struct.TYPE_21__* %0, i8* %1, i32* (i8*, i32, i32)* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32* (i8*, i32, i32)*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* (i8*, i32, i32)* %2, i32* (i8*, i32, i32)** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = call %struct.TYPE_20__* @JsonbIteratorInit(i32* %15)
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %86, %3
  %21 = call i64 @JsonbIteratorNext(%struct.TYPE_20__** %7, %struct.TYPE_19__* %8, i32 0)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* @WJB_DONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %87

24:                                               ; preds = %20
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @WJB_VALUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @WJB_ELEM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @jbvString, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %32
  %38 = load i32* (i8*, i32, i32)*, i32* (i8*, i32, i32)** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* %38(i8* %39, i32 %43, i32 %47)
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @VARDATA_ANY(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @VARSIZE_ANY_EXHDR(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %37
  br label %65

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %64, %63
  %66 = phi %struct.TYPE_19__* [ %8, %63 ], [ null, %64 ]
  %67 = call %struct.TYPE_19__* @pushJsonbValue(i32** %11, i64 %59, %struct.TYPE_19__* %66)
  store %struct.TYPE_19__* %67, %struct.TYPE_19__** %9, align 8
  br label %86

68:                                               ; preds = %32, %28
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @WJB_KEY, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @WJB_VALUE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @WJB_ELEM, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %73, %68
  br label %83

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %81
  %84 = phi %struct.TYPE_19__* [ %8, %81 ], [ null, %82 ]
  %85 = call %struct.TYPE_19__* @pushJsonbValue(i32** %11, i64 %69, %struct.TYPE_19__* %84)
  store %struct.TYPE_19__* %85, %struct.TYPE_19__** %9, align 8
  br label %86

86:                                               ; preds = %83, %65
  br label %20

87:                                               ; preds = %20
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @jbvArray, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %101 = call %struct.TYPE_21__* @JsonbValueToJsonb(%struct.TYPE_19__* %100)
  ret %struct.TYPE_21__* %101
}

declare dso_local %struct.TYPE_20__* @JsonbIteratorInit(i32*) #1

declare dso_local i64 @JsonbIteratorNext(%struct.TYPE_20__**, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local %struct.TYPE_19__* @pushJsonbValue(i32**, i64, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_21__* @JsonbValueToJsonb(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
