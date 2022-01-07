; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_TS_execute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_TS_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@QI_VAL = common dso_local global i64 0, align 8
@TS_EXEC_CALC_NOT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unrecognized operator: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TS_execute(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 (i8*, i32*, i32*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, i32*, i32*)*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (i8*, i32*, i32*)* %3, i32 (i8*, i32*, i32*)** %9, align 8
  %10 = call i32 (...) @check_stack_depth()
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QI_VAL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = bitcast %struct.TYPE_6__* %19 to i32*
  %21 = call i32 %17(i8* %18, i32* %20, i32* null)
  store i32 %21, i32* %5, align 4
  br label %99

22:                                               ; preds = %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %91 [
    i32 130, label %27
    i32 131, label %43
    i32 129, label %64
    i32 128, label %85
  ]

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TS_EXEC_CALC_NOT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 1
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %9, align 8
  %38 = call i32 @TS_execute(%struct.TYPE_6__* %34, i8* %35, i32 %36, i32 (i8*, i32*, i32*)* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %99

42:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %99

43:                                               ; preds = %22
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %49
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %9, align 8
  %54 = call i32 @TS_execute(%struct.TYPE_6__* %50, i8* %51, i32 %52, i32 (i8*, i32*, i32*)* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 1
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %9, align 8
  %62 = call i32 @TS_execute(%struct.TYPE_6__* %58, i8* %59, i32 %60, i32 (i8*, i32*, i32*)* %61)
  store i32 %62, i32* %5, align 4
  br label %99

63:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %99

64:                                               ; preds = %22
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %70
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %9, align 8
  %75 = call i32 @TS_execute(%struct.TYPE_6__* %71, i8* %72, i32 %73, i32 (i8*, i32*, i32*)* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  br label %99

78:                                               ; preds = %64
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 1
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %9, align 8
  %84 = call i32 @TS_execute(%struct.TYPE_6__* %80, i8* %81, i32 %82, i32 (i8*, i32*, i32*)* %83)
  store i32 %84, i32* %5, align 4
  br label %99

85:                                               ; preds = %22
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %9, align 8
  %90 = call i32 @TS_phrase_execute(%struct.TYPE_6__* %86, i8* %87, i32 %88, i32 (i8*, i32*, i32*)* %89, i32* null)
  store i32 %90, i32* %5, align 4
  br label %99

91:                                               ; preds = %22
  %92 = load i32, i32* @ERROR, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @elog(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %85, %78, %77, %63, %56, %42, %32, %16
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @TS_phrase_execute(%struct.TYPE_6__*, i8*, i32, i32 (i8*, i32*, i32*)*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
