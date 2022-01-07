; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_IdentifySystem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_IdentifySystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXFNAMELEN = common dso_local global i32 0, align 4
@UINT64_FORMAT = common dso_local global i8* null, align 8
@am_cascading_walsender = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%X/%X\00", align 1
@MyDatabaseId = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@DestRemoteSimple = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"systemid\00", align 1
@TEXTOID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"timeline\00", align 1
@INT4OID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"xlogpos\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@TTSOpsVirtual = common dso_local global i32 0, align 4
@ThisTimeLineID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IdentifySystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IdentifySystem() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = load i32, i32* @MAXFNAMELEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %2, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  store i8* null, i8** %5, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %17 = load i8*, i8** @UINT64_FORMAT, align 8
  %18 = call i32 (...) @GetSystemIdentifier()
  %19 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %16, i32 32, i8* %17, i32 %18)
  %20 = call i64 (...) @RecoveryInProgress()
  store i64 %20, i64* @am_cascading_walsender, align 8
  %21 = load i64, i64* @am_cascading_walsender, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %0
  %24 = call i32 (...) @GetStandbyFlushRecPtr()
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %0
  %26 = call i32 (...) @GetFlushRecPtr()
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = trunc i64 %13 to i32
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 32
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %15, i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i64, i64* @MyDatabaseId, align 8
  %34 = load i64, i64* @InvalidOid, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %37, i32* %11, align 4
  %38 = call i32 (...) @StartTransactionCommand()
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @MemoryContextSwitchTo(i32 %39)
  %41 = load i64, i64* @MyDatabaseId, align 8
  %42 = call i8* @get_database_name(i64 %41)
  store i8* %42, i8** %5, align 8
  %43 = call i32 (...) @CommitTransactionCommand()
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @MemoryContextSwitchTo(i32 %44)
  br label %46

46:                                               ; preds = %36, %27
  %47 = load i32, i32* @DestRemoteSimple, align 4
  %48 = call i32* @CreateDestReceiver(i32 %47)
  store i32* %48, i32** %6, align 8
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %50 = call i32 @MemSet(i32* %49, i32 0, i32 16)
  %51 = call i32 @CreateTemplateTupleDesc(i32 4)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @TEXTOID, align 4
  %54 = call i32 @TupleDescInitBuiltinEntry(i32 %52, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 -1, i32 0)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @INT4OID, align 4
  %57 = call i32 @TupleDescInitBuiltinEntry(i32 %55, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 -1, i32 0)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @TEXTOID, align 4
  %60 = call i32 @TupleDescInitBuiltinEntry(i32 %58, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 -1, i32 0)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @TEXTOID, align 4
  %63 = call i32 @TupleDescInitBuiltinEntry(i32 %61, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 -1, i32 0)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32* @begin_tup_output_tupdesc(i32* %64, i32 %65, i32* @TTSOpsVirtual)
  store i32* %66, i32** %7, align 8
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %68 = call i32 @CStringGetTextDatum(i8* %67)
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %68, i32* %69, align 16
  %70 = load i32, i32* @ThisTimeLineID, align 4
  %71 = call i32 @Int32GetDatum(i32 %70)
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %71, i32* %72, align 4
  %73 = call i32 @CStringGetTextDatum(i8* %15)
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %73, i32* %74, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %46
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @CStringGetTextDatum(i8* %78)
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %79, i32* %80, align 4
  br label %83

81:                                               ; preds = %46
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %87 = call i32 @do_tup_output(i32* %84, i32* %85, i32* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @end_tup_output(i32* %88)
  %90 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %90)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @GetSystemIdentifier(...) #2

declare dso_local i64 @RecoveryInProgress(...) #2

declare dso_local i32 @GetStandbyFlushRecPtr(...) #2

declare dso_local i32 @GetFlushRecPtr(...) #2

declare dso_local i32 @StartTransactionCommand(...) #2

declare dso_local i32 @MemoryContextSwitchTo(i32) #2

declare dso_local i8* @get_database_name(i64) #2

declare dso_local i32 @CommitTransactionCommand(...) #2

declare dso_local i32* @CreateDestReceiver(i32) #2

declare dso_local i32 @MemSet(i32*, i32, i32) #2

declare dso_local i32 @CreateTemplateTupleDesc(i32) #2

declare dso_local i32 @TupleDescInitBuiltinEntry(i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32* @begin_tup_output_tupdesc(i32*, i32, i32*) #2

declare dso_local i32 @CStringGetTextDatum(i8*) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @do_tup_output(i32*, i32*, i32*) #2

declare dso_local i32 @end_tup_output(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
