; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_check_publication_add_relation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_check_publication_add_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\22%s\22 is a partitioned table\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Adding partitioned tables to publications is not supported.\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"You can add the table partitions individually.\00", align 1
@RELKIND_RELATION = common dso_local global i64 0, align 8
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"\22%s\22 is not a table\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Only tables can be added to publications.\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"\22%s\22 is a system table\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"System tables cannot be added to publications.\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"table \22%s\22 cannot be replicated\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"Temporary and unlogged relations cannot be replicated.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_publication_add_relation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_publication_add_relation(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call %struct.TYPE_2__* @RelationGetForm(i32 %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @ERROR, align 4
  %11 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %12 = call i32 @errcode(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @RelationGetRelationName(i32 %13)
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @errdetail(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @errhint(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @ereport(i32 %10, i32 %17)
  br label %19

19:                                               ; preds = %9, %1
  %20 = load i32, i32* %2, align 4
  %21 = call %struct.TYPE_2__* @RelationGetForm(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RELKIND_RELATION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @RelationGetRelationName(i32 %30)
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = call i32 @errdetail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %27, i32 %33)
  br label %35

35:                                               ; preds = %26, %19
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @IsCatalogRelation(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @RelationGetRelationName(i32 %43)
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = call i32 @errdetail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %40, i32 %46)
  br label %48

48:                                               ; preds = %39, %35
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @RelationNeedsWAL(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @RelationGetRelationName(i32 %56)
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %57)
  %59 = call i32 @errdetail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %53, i32 %59)
  br label %61

61:                                               ; preds = %52, %48
  ret void
}

declare dso_local %struct.TYPE_2__* @RelationGetForm(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @IsCatalogRelation(i32) #1

declare dso_local i32 @RelationNeedsWAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
