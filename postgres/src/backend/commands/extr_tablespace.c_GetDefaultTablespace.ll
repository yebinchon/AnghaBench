; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_GetDefaultTablespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_GetDefaultTablespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RELPERSISTENCE_TEMP = common dso_local global i8 0, align 1
@default_tablespace = common dso_local global i8* null, align 8
@InvalidOid = common dso_local global i64 0, align 8
@MyDatabaseTableSpace = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"cannot specify default tablespace for partitioned relations\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetDefaultTablespace(i8 signext %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @RELPERSISTENCE_TEMP, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 (...) @PrepareTempTablespaces()
  %14 = call i64 (...) @GetNextTempTableSpace()
  store i64 %14, i64* %3, align 8
  br label %45

15:                                               ; preds = %2
  %16 = load i8*, i8** @default_tablespace, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** @default_tablespace, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %15
  %25 = load i64, i64* @InvalidOid, align 8
  store i64 %25, i64* %3, align 8
  br label %45

26:                                               ; preds = %18
  %27 = load i8*, i8** @default_tablespace, align 8
  %28 = call i64 @get_tablespace_oid(i8* %27, i32 1)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @MyDatabaseTableSpace, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i64, i64* @InvalidOid, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %41, %26
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %43, %24, %12
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i32 @PrepareTempTablespaces(...) #1

declare dso_local i64 @GetNextTempTableSpace(...) #1

declare dso_local i64 @get_tablespace_oid(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
