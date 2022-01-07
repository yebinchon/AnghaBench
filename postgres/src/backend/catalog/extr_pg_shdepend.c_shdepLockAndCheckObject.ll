; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_shdepLockAndCheckObject.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_shdepLockAndCheckObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AccessShareLock = common dso_local global i32 0, align 4
@AUTHOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"role %u was concurrently dropped\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"database %u was concurrently dropped\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unrecognized shared classId: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shdepLockAndCheckObject(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AccessShareLock, align 4
  %9 = call i32 @LockSharedObject(i32 %6, i32 %7, i32 0, i32 %8)
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %40 [
    i32 130, label %11
    i32 129, label %25
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @AUTHOID, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ObjectIdGetDatum(i32 %13)
  %15 = call i32 @SearchSysCacheExists1(i32 %12, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @ereport(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %11
  br label %44

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @get_database_name(i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = call i32 @ereport(i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @pfree(i8* %38)
  br label %44

40:                                               ; preds = %2
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @elog(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %37, %24
  ret void
}

declare dso_local i32 @LockSharedObject(i32, i32, i32, i32) #1

declare dso_local i32 @SearchSysCacheExists1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i8* @get_database_name(i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
