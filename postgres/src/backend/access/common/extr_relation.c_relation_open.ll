; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_relation.c_relation_open.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_relation.c_relation_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NoLock = common dso_local global i64 0, align 8
@MAX_LOCKMODES = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not open relation with OID %u\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@XACT_FLAGS_ACCESSEDTEMPNAMESPACE = common dso_local global i32 0, align 4
@MyXactFlags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @relation_open(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @NoLock, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @MAX_LOCKMODES, align 8
  %12 = icmp slt i64 %10, %11
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @NoLock, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @LockRelationOid(i32 %21, i64 %22)
  br label %24

24:                                               ; preds = %20, %13
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @RelationIdGetRelation(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @RelationIsValid(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @NoLock, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = call i64 (...) @IsBootstrapProcessingMode()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @AccessShareLock, align 4
  %44 = call i64 @CheckRelationLockedByMe(i32 %42, i32 %43, i32 1)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %38, %34
  %47 = phi i1 [ true, %38 ], [ true, %34 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @RelationUsesLocalBuffers(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @XACT_FLAGS_ACCESSEDTEMPNAMESPACE, align 4
  %55 = load i32, i32* @MyXactFlags, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* @MyXactFlags, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @pgstat_initstats(i32 %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LockRelationOid(i32, i64) #1

declare dso_local i32 @RelationIdGetRelation(i32) #1

declare dso_local i32 @RelationIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i64 @CheckRelationLockedByMe(i32, i32, i32) #1

declare dso_local i64 @RelationUsesLocalBuffers(i32) #1

declare dso_local i32 @pgstat_initstats(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
