; ModuleID = '/home/carl/AnghaBench/postgres/contrib/jsonb_plpython/extr_jsonb_plpython.c_PLyNumber_ToJsonbValue.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/jsonb_plpython/extr_jsonb_plpython.c_PLyNumber_ToJsonbValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@numeric_in = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not convert value \22%s\22 to jsonb\00", align 1
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot convert NaN to jsonb\00", align 1
@jbvNumeric = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, %struct.TYPE_6__*)* @PLyNumber_ToJsonbValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @PLyNumber_ToJsonbValue(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @PLyObject_AsString(i32* %8)
  store i8* %9, i8** %6, align 8
  %10 = call i32 (...) @PG_TRY()
  %11 = load i32, i32* @numeric_in, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @CStringGetDatum(i8* %12)
  %14 = load i32, i32* @InvalidOid, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = call i32 @Int32GetDatum(i32 -1)
  %17 = call i32 @DirectFunctionCall3(i32 %11, i32 %13, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @DatumGetNumeric(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = call i32 (...) @PG_CATCH()
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @ereport(i32 %21, i32 %25)
  %27 = call i32 (...) @PG_END_TRY()
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @pfree(i8* %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @numeric_is_nan(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @ereport(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %2
  %40 = load i32, i32* @jbvNumeric, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %47
}

declare dso_local i8* @PLyObject_AsString(i32*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @DirectFunctionCall3(i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @DatumGetNumeric(i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i64 @numeric_is_nan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
