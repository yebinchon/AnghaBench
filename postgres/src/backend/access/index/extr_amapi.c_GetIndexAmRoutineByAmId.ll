; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/index/extr_amapi.c_GetIndexAmRoutineByAmId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/index/extr_amapi.c_GetIndexAmRoutineByAmId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@AMOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cache lookup failed for access method %u\00", align 1
@AMTYPE_INDEX = common dso_local global i64 0, align 8
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"access method \22%s\22 is not of type %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"INDEX\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"index access method \22%s\22 does not have a handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetIndexAmRoutineByAmId(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @AMOID, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ObjectIdGetDatum(i32 %10)
  %12 = call i32 @SearchSysCache1(i32 %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @HeapTupleIsValid(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %77

20:                                               ; preds = %16
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @GETSTRUCT(i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %7, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AMTYPE_INDEX, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ReleaseSysCache(i32 %37)
  store i32* null, i32** %3, align 8
  br label %77

39:                                               ; preds = %33
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @NameStr(i32 %45)
  %47 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %40, i32 %47)
  br label %49

49:                                               ; preds = %39, %24
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @RegProcedureIsValid(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ReleaseSysCache(i32 %60)
  store i32* null, i32** %3, align 8
  br label %77

62:                                               ; preds = %56
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @NameStr(i32 %68)
  %70 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = call i32 @ereport(i32 %63, i32 %70)
  br label %72

72:                                               ; preds = %62, %49
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @ReleaseSysCache(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = call i32* @GetIndexAmRoutine(i32 %75)
  store i32* %76, i32** %3, align 8
  br label %77

77:                                               ; preds = %72, %59, %36, %19
  %78 = load i32*, i32** %3, align 8
  ret i32* %78
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @RegProcedureIsValid(i32) #1

declare dso_local i32* @GetIndexAmRoutine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
