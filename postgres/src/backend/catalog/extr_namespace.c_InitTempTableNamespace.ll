; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_InitTempTableNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_InitTempTableNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@NAMEDATALEN = common dso_local global i32 0, align 4
@myTempNamespace = common dso_local global i8* null, align 8
@MyDatabaseId = common dso_local global i32 0, align 4
@ACL_CREATE_TEMP = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"permission denied to create temporary tables in database \22%s\22\00", align 1
@ERRCODE_READ_ONLY_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"cannot create temporary tables during recovery\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"cannot create temporary tables during a parallel operation\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"pg_temp_%d\00", align 1
@MyBackendId = common dso_local global i32 0, align 4
@BOOTSTRAP_SUPERUSERID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"pg_toast_temp_%d\00", align 1
@myTempToastNamespace = common dso_local global i8* null, align 8
@MyProc = common dso_local global %struct.TYPE_2__* null, align 8
@myTempNamespaceSubID = common dso_local global i64 0, align 8
@InvalidSubTransactionId = common dso_local global i64 0, align 8
@baseSearchPathValid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitTempTableNamespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitTempTableNamespace() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @NAMEDATALEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i8*, i8** @myTempNamespace, align 8
  %10 = call i32 @OidIsValid(i8* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32, i32* @MyDatabaseId, align 4
  %16 = call i32 (...) @GetUserId()
  %17 = load i32, i32* @ACL_CREATE_TEMP, align 4
  %18 = call i64 @pg_database_aclcheck(i32 %15, i32 %16, i32 %17)
  %19 = load i64, i64* @ACLCHECK_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %0
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load i32, i32* @MyDatabaseId, align 4
  %26 = call i32 @get_database_name(i32 %25)
  %27 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @ereport(i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %21, %0
  %30 = call i64 (...) @RecoveryInProgress()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_READ_ONLY_SQL_TRANSACTION, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @ereport(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %29
  %39 = call i64 (...) @IsParallelWorker()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_READ_ONLY_SQL_TRANSACTION, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %38
  %48 = trunc i64 %6 to i32
  %49 = load i32, i32* @MyBackendId, align 4
  %50 = call i32 @snprintf(i8* %8, i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = call i8* @get_namespace_oid(i8* %8, i32 1)
  store i8* %51, i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @OidIsValid(i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @BOOTSTRAP_SUPERUSERID, align 4
  %57 = call i8* @NamespaceCreate(i8* %8, i32 %56, i32 1)
  store i8* %57, i8** %3, align 8
  %58 = call i32 (...) @CommandCounterIncrement()
  br label %62

59:                                               ; preds = %47
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @RemoveTempRelations(i8* %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = trunc i64 %6 to i32
  %64 = load i32, i32* @MyBackendId, align 4
  %65 = call i32 @snprintf(i8* %8, i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = call i8* @get_namespace_oid(i8* %8, i32 1)
  store i8* %66, i8** %4, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @OidIsValid(i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @BOOTSTRAP_SUPERUSERID, align 4
  %72 = call i8* @NamespaceCreate(i8* %8, i32 %71, i32 1)
  store i8* %72, i8** %4, align 8
  %73 = call i32 (...) @CommandCounterIncrement()
  br label %74

74:                                               ; preds = %70, %62
  %75 = load i8*, i8** %3, align 8
  store i8* %75, i8** @myTempNamespace, align 8
  %76 = load i8*, i8** %4, align 8
  store i8* %76, i8** @myTempToastNamespace, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyProc, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* @myTempNamespaceSubID, align 8
  %81 = load i64, i64* @InvalidSubTransactionId, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @AssertState(i32 %83)
  %85 = call i64 (...) @GetCurrentSubTransactionId()
  store i64 %85, i64* @myTempNamespaceSubID, align 8
  store i32 0, i32* @baseSearchPathValid, align 4
  %86 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @OidIsValid(i8*) #2

declare dso_local i64 @pg_database_aclcheck(i32, i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @get_database_name(i32) #2

declare dso_local i64 @RecoveryInProgress(...) #2

declare dso_local i64 @IsParallelWorker(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @get_namespace_oid(i8*, i32) #2

declare dso_local i8* @NamespaceCreate(i8*, i32, i32) #2

declare dso_local i32 @CommandCounterIncrement(...) #2

declare dso_local i32 @RemoveTempRelations(i8*) #2

declare dso_local i32 @AssertState(i32) #2

declare dso_local i64 @GetCurrentSubTransactionId(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
