; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_setPath.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_setPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"path element at position %d is null\00", align 1
@WJB_END_ARRAY = common dso_local global i32 0, align 4
@WJB_END_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unrecognized iterator result: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32**, i32*, i32*, i32, i32**, i32, i32*, i32)* @setPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @setPath(i32** %0, i32* %1, i32* %2, i32 %3, i32** %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32** %4, i32*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %20 = call i32 (...) @check_stack_depth()
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %14, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %8
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call i32 @ereport(i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %27, %8
  %36 = load i32**, i32*** %9, align 8
  %37 = call i32 @JsonbIteratorNext(i32** %36, %struct.TYPE_12__* %17, i32 0)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  switch i32 %38, label %97 [
    i32 131, label %39
    i32 130, label %66
    i32 129, label %93
    i32 128, label %93
  ]

39:                                               ; preds = %35
  %40 = load i32**, i32*** %13, align 8
  %41 = load i32, i32* %18, align 4
  %42 = call %struct.TYPE_12__* @pushJsonbValue(i32** %40, i32 %41, %struct.TYPE_12__* null)
  %43 = load i32**, i32*** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32**, i32*** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32*, i32** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @setPathArray(i32** %43, i32* %44, i32* %45, i32 %46, i32** %47, i32 %48, i32* %49, i32 %53, i32 %54)
  %56 = load i32**, i32*** %9, align 8
  %57 = call i32 @JsonbIteratorNext(i32** %56, %struct.TYPE_12__* %17, i32 0)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* @WJB_END_ARRAY, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load i32**, i32*** %13, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call %struct.TYPE_12__* @pushJsonbValue(i32** %63, i32 %64, %struct.TYPE_12__* null)
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %19, align 8
  br label %101

66:                                               ; preds = %35
  %67 = load i32**, i32*** %13, align 8
  %68 = load i32, i32* %18, align 4
  %69 = call %struct.TYPE_12__* @pushJsonbValue(i32** %67, i32 %68, %struct.TYPE_12__* null)
  %70 = load i32**, i32*** %9, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32**, i32*** %13, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @setPathObject(i32** %70, i32* %71, i32* %72, i32 %73, i32** %74, i32 %75, i32* %76, i32 %80, i32 %81)
  %83 = load i32**, i32*** %9, align 8
  %84 = call i32 @JsonbIteratorNext(i32** %83, %struct.TYPE_12__* %17, i32 1)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @WJB_END_OBJECT, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @Assert(i32 %88)
  %90 = load i32**, i32*** %13, align 8
  %91 = load i32, i32* %18, align 4
  %92 = call %struct.TYPE_12__* @pushJsonbValue(i32** %90, i32 %91, %struct.TYPE_12__* null)
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %19, align 8
  br label %101

93:                                               ; preds = %35, %35
  %94 = load i32**, i32*** %13, align 8
  %95 = load i32, i32* %18, align 4
  %96 = call %struct.TYPE_12__* @pushJsonbValue(i32** %94, i32 %95, %struct.TYPE_12__* %17)
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %19, align 8
  br label %101

97:                                               ; preds = %35
  %98 = load i32, i32* @ERROR, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @elog(i32 %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %19, align 8
  br label %101

101:                                              ; preds = %97, %93, %66, %39
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  ret %struct.TYPE_12__* %102
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @JsonbIteratorNext(i32**, %struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @pushJsonbValue(i32**, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @setPathArray(i32**, i32*, i32*, i32, i32**, i32, i32*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @setPathObject(i32**, i32*, i32*, i32, i32**, i32, i32*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
