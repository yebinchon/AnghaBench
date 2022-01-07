; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_ProcessCommittedInvalidationMessages.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_ProcessCommittedInvalidationMessages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"replaying commit with %d messages%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c" and relcache file invalidation\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"removing relcache init files for database %u\00", align 1
@DatabasePath = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessCommittedInvalidationMessages(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %54

14:                                               ; preds = %5
  %15 = load i32, i32* @DEBUG4, align 4
  %16 = call i32 @trace_recovery(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 (i32, i8*, i32, ...) @elog(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %14
  %26 = load i32, i32* @DEBUG4, align 4
  %27 = call i32 @trace_recovery(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i8*, i32, ...) @elog(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @OidIsValid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32* @GetDatabasePath(i32 %34, i32 %35)
  store i32* %36, i32** @DatabasePath, align 8
  br label %37

37:                                               ; preds = %33, %25
  %38 = call i32 (...) @RelationCacheInitFilePreInvalidate()
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @OidIsValid(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** @DatabasePath, align 8
  %44 = call i32 @pfree(i32* %43)
  store i32* null, i32** @DatabasePath, align 8
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %14
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @SendSharedInvalidMessages(i32* %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 (...) @RelationCacheInitFilePostInvalidate()
  br label %54

54:                                               ; preds = %13, %52, %46
  ret void
}

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i32 @trace_recovery(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32* @GetDatabasePath(i32, i32) #1

declare dso_local i32 @RelationCacheInitFilePreInvalidate(...) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @SendSharedInvalidMessages(i32*, i32) #1

declare dso_local i32 @RelationCacheInitFilePostInvalidate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
