; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_fetch_finfo_record.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_fetch_finfo_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"pg_finfo_%s\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"could not find function information for function \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"SQL-callable functions need an accompanying PG_FUNCTION_INFO_V1(funcname).\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"null result from info function \22%s\22\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"unrecognized API version %d reported by info function \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @fetch_finfo_record(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__* (...)*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @psprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @lookup_external_function(i8* %11, i8* %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_5__* (...)*
  store %struct.TYPE_5__* (...)* %14, %struct.TYPE_5__* (...)** %7, align 8
  %15 = load %struct.TYPE_5__* (...)*, %struct.TYPE_5__* (...)** %7, align 8
  %16 = icmp eq %struct.TYPE_5__* (...)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = call i32 @errhint(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %18, i32 %23)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %53

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__* (...)*, %struct.TYPE_5__* (...)** %7, align 8
  %27 = call %struct.TYPE_5__* (...) %26()
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %39 [
    i32 1, label %38
  ]

38:                                               ; preds = %34
  br label %49

39:                                               ; preds = %34
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %45, i8* %46)
  %48 = call i32 @ereport(i32 %40, i32 %47)
  br label %49

49:                                               ; preds = %39, %38
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @pfree(i8* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %3, align 8
  br label %53

53:                                               ; preds = %49, %17
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %54
}

declare dso_local i8* @psprintf(i8*, i8*) #1

declare dso_local i64 @lookup_external_function(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
