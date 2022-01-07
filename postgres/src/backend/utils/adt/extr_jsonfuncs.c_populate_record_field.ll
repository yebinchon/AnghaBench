; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_populate_record_field.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_populate_record_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unrecognized type category '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64, i8*, i32, i32, i32*, i32*)* @populate_record_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_record_field(%struct.TYPE_6__* %0, i64 %1, i64 %2, i8* %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = call i32 (...) @check_stack_depth()
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @prepare_column_cache(%struct.TYPE_6__* %32, i64 %33, i64 %34, i32 %35, i32 1)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @JsValueIsNull(i32* %38)
  %40 = load i32*, i32** %17, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %18, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = call i64 @JsValueIsString(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %37
  %48 = load i32, i32* %18, align 4
  %49 = icmp eq i32 %48, 132
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %18, align 4
  %52 = icmp eq i32 %51, 131
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %18, align 4
  %55 = icmp eq i32 %54, 130
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50, %47
  store i32 128, i32* %18, align 4
  br label %57

57:                                               ; preds = %56, %53, %37
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 129
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 130
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %120

68:                                               ; preds = %64, %61, %57
  %69 = load i32, i32* %18, align 4
  switch i32 %69, label %116 [
    i32 128, label %70
    i32 132, label %77
    i32 131, label %85
    i32 130, label %85
    i32 129, label %105
  ]

70:                                               ; preds = %68
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @populate_scalar(i32* %72, i64 %73, i64 %74, i32* %75)
  store i32 %76, i32* %9, align 4
  br label %120

77:                                               ; preds = %68
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %16, align 8
  %84 = call i32 @populate_array(i32* %80, i8* %81, i32 %82, i32* %83)
  store i32 %84, i32* %9, align 4
  br label %120

85:                                               ; preds = %68, %68
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %11, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @DatumGetPointer(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* %15, align 4
  %97 = call i32* @DatumGetHeapTupleHeader(i32 %96)
  br label %99

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %95
  %100 = phi i32* [ %97, %95 ], [ null, %98 ]
  %101 = load i32*, i32** %16, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @populate_composite(i32* %88, i64 %89, i8* %90, i32 %91, i32* %100, i32* %101, i32 %103)
  store i32 %104, i32* %9, align 4
  br label %120

105:                                              ; preds = %68
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %11, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32*, i32** %16, align 8
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @populate_domain(i32* %108, i64 %109, i8* %110, i32 %111, i32* %112, i32 %114)
  store i32 %115, i32* %9, align 4
  br label %120

116:                                              ; preds = %68
  %117 = load i32, i32* @ERROR, align 4
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @elog(i32 %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %118)
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %105, %99, %77, %70, %67
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @prepare_column_cache(%struct.TYPE_6__*, i64, i64, i32, i32) #1

declare dso_local i32 @JsValueIsNull(i32*) #1

declare dso_local i64 @JsValueIsString(i32*) #1

declare dso_local i32 @populate_scalar(i32*, i64, i64, i32*) #1

declare dso_local i32 @populate_array(i32*, i8*, i32, i32*) #1

declare dso_local i32 @populate_composite(i32*, i64, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32* @DatumGetHeapTupleHeader(i32) #1

declare dso_local i32 @populate_domain(i32*, i64, i8*, i32, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
