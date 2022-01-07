; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_RelationMapUpdateMap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_RelationMapUpdateMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shared_map = common dso_local global i32 0, align 4
@local_map = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cannot change relation mapping within subtransaction\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot change relation mapping in parallel mode\00", align 1
@active_shared_updates = common dso_local global i32 0, align 4
@active_local_updates = common dso_local global i32 0, align 4
@pending_shared_updates = common dso_local global i32 0, align 4
@pending_local_updates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationMapUpdateMap(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i64 (...) @IsBootstrapProcessingMode()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32* @shared_map, i32** %9, align 8
  br label %17

16:                                               ; preds = %12
  store i32* @local_map, i32** %9, align 8
  br label %17

17:                                               ; preds = %16, %15
  br label %46

18:                                               ; preds = %4
  %19 = call i32 (...) @GetCurrentTransactionNestLevel()
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = call i64 (...) @IsInParallelMode()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32* @active_shared_updates, i32** %9, align 8
  br label %38

37:                                               ; preds = %33
  store i32* @active_local_updates, i32** %9, align 8
  br label %38

38:                                               ; preds = %37, %36
  br label %45

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32* @pending_shared_updates, i32** %9, align 8
  br label %44

43:                                               ; preds = %39
  store i32* @pending_local_updates, i32** %9, align 8
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %38
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @apply_map_update(i32* %47, i32 %48, i32 %49, i32 1)
  ret void
}

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @GetCurrentTransactionNestLevel(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @apply_map_update(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
