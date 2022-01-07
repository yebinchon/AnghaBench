; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_check_default_tablespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_check_default_tablespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MyDatabaseId = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@PGC_S_TEST = common dso_local global i64 0, align 8
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tablespace \22%s\22 does not exist\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Tablespace \22%s\22 does not exist.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_default_tablespace(i8** %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = call i64 (...) @IsTransactionState()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %3
  %11 = load i64, i64* @MyDatabaseId, align 8
  %12 = load i64, i64* @InvalidOid, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @get_tablespace_oid(i8* %22, i32 1)
  %24 = call i32 @OidIsValid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @PGC_S_TEST, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* @NOTICE, align 4
  %32 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = call i32 @ereport(i32 %31, i32 %36)
  br label %42

38:                                               ; preds = %26
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @GUC_check_errdetail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 0, i32* %4, align 4
  br label %45

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %20, %14
  br label %44

44:                                               ; preds = %43, %10, %3
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @get_tablespace_oid(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @GUC_check_errdetail(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
