; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationCacheInitializePhase2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationCacheInitializePhase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CacheMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pg_database\00", align 1
@DatabaseRelation_Rowtype_Id = common dso_local global i32 0, align 4
@Natts_pg_database = common dso_local global i32 0, align 4
@Desc_pg_database = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"pg_authid\00", align 1
@AuthIdRelation_Rowtype_Id = common dso_local global i32 0, align 4
@Natts_pg_authid = common dso_local global i32 0, align 4
@Desc_pg_authid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"pg_auth_members\00", align 1
@AuthMemRelation_Rowtype_Id = common dso_local global i32 0, align 4
@Natts_pg_auth_members = common dso_local global i32 0, align 4
@Desc_pg_auth_members = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"pg_shseclabel\00", align 1
@SharedSecLabelRelation_Rowtype_Id = common dso_local global i32 0, align 4
@Natts_pg_shseclabel = common dso_local global i32 0, align 4
@Desc_pg_shseclabel = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"pg_subscription\00", align 1
@SubscriptionRelation_Rowtype_Id = common dso_local global i32 0, align 4
@Natts_pg_subscription = common dso_local global i32 0, align 4
@Desc_pg_subscription = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationCacheInitializePhase2() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @RelationMapInitializePhase2()
  %3 = call i64 (...) @IsBootstrapProcessingMode()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %35

6:                                                ; preds = %0
  %7 = load i32, i32* @CacheMemoryContext, align 4
  %8 = call i32 @MemoryContextSwitchTo(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = call i32 @load_relcache_init_file(i32 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* @DatabaseRelation_Rowtype_Id, align 4
  %13 = load i32, i32* @Natts_pg_database, align 4
  %14 = load i32, i32* @Desc_pg_database, align 4
  %15 = call i32 @formrdesc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 1, i32 %13, i32 %14)
  %16 = load i32, i32* @AuthIdRelation_Rowtype_Id, align 4
  %17 = load i32, i32* @Natts_pg_authid, align 4
  %18 = load i32, i32* @Desc_pg_authid, align 4
  %19 = call i32 @formrdesc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 1, i32 %17, i32 %18)
  %20 = load i32, i32* @AuthMemRelation_Rowtype_Id, align 4
  %21 = load i32, i32* @Natts_pg_auth_members, align 4
  %22 = load i32, i32* @Desc_pg_auth_members, align 4
  %23 = call i32 @formrdesc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 1, i32 %21, i32 %22)
  %24 = load i32, i32* @SharedSecLabelRelation_Rowtype_Id, align 4
  %25 = load i32, i32* @Natts_pg_shseclabel, align 4
  %26 = load i32, i32* @Desc_pg_shseclabel, align 4
  %27 = call i32 @formrdesc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 1, i32 %25, i32 %26)
  %28 = load i32, i32* @SubscriptionRelation_Rowtype_Id, align 4
  %29 = load i32, i32* @Natts_pg_subscription, align 4
  %30 = load i32, i32* @Desc_pg_subscription, align 4
  %31 = call i32 @formrdesc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %28, i32 1, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %11, %6
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @MemoryContextSwitchTo(i32 %33)
  br label %35

35:                                               ; preds = %32, %5
  ret void
}

declare dso_local i32 @RelationMapInitializePhase2(...) #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @load_relcache_init_file(i32) #1

declare dso_local i32 @formrdesc(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
