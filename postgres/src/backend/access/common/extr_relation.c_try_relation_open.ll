; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_relation.c_try_relation_open.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_relation.c_try_relation_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NoLock = common dso_local global i64 0, align 8
@MAX_LOCKMODES = common dso_local global i64 0, align 8
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not open relation with OID %u\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@XACT_FLAGS_ACCESSEDTEMPNAMESPACE = common dso_local global i32 0, align 4
@MyXactFlags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @try_relation_open(i32 %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @NoLock, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @MAX_LOCKMODES, align 8
  %13 = icmp slt i64 %11, %12
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ false, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @NoLock, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @LockRelationOid(i32 %22, i64 %23)
  br label %25

25:                                               ; preds = %21, %14
  %26 = load i32, i32* @RELOID, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ObjectIdGetDatum(i32 %27)
  %29 = call i32 @SearchSysCacheExists1(i32 %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @NoLock, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @UnlockRelationOid(i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %31
  store i32* null, i32** %3, align 8
  br label %74

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  %42 = call i32* @RelationIdGetRelation(i32 %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @RelationIsValid(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @NoLock, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @AccessShareLock, align 4
  %57 = call i64 @CheckRelationLockedByMe(i32* %55, i32 %56, i32 1)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i1 [ true, %50 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @RelationUsesLocalBuffers(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @XACT_FLAGS_ACCESSEDTEMPNAMESPACE, align 4
  %68 = load i32, i32* @MyXactFlags, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* @MyXactFlags, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @pgstat_initstats(i32* %71)
  %73 = load i32*, i32** %6, align 8
  store i32* %73, i32** %3, align 8
  br label %74

74:                                               ; preds = %70, %39
  %75 = load i32*, i32** %3, align 8
  ret i32* %75
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LockRelationOid(i32, i64) #1

declare dso_local i32 @SearchSysCacheExists1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @UnlockRelationOid(i32, i64) #1

declare dso_local i32* @RelationIdGetRelation(i32) #1

declare dso_local i32 @RelationIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @CheckRelationLockedByMe(i32*, i32, i32) #1

declare dso_local i64 @RelationUsesLocalBuffers(i32*) #1

declare dso_local i32 @pgstat_initstats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
