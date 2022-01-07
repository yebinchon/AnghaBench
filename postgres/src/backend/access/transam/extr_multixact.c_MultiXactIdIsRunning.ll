; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactIdIsRunning.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactIdIsRunning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"IsRunning %u?\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"IsRunning: no members\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"IsRunning: I (%d) am running!\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"IsRunning: member %d (%u) is running\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"IsRunning: %u is not running\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MultiXactIdIsRunning(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @DEBUG2, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @debug_elog3(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GetMultiXactIdMembers(i32 %12, %struct.TYPE_4__** %6, i32 0, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @DEBUG2, align 4
  %19 = call i32 @debug_elog2(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %80

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @TransactionIdIsCurrentTransactionId(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load i32, i32* @DEBUG2, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @debug_elog3(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = call i32 @pfree(%struct.TYPE_4__* %38)
  store i32 1, i32* %3, align 4
  br label %80

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %21

44:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %71, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @TransactionIdIsInProgress(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load i32, i32* @DEBUG2, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @debug_elog4(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = call i32 @pfree(%struct.TYPE_4__* %68)
  store i32 1, i32* %3, align 4
  br label %80

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %45

74:                                               ; preds = %45
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = call i32 @pfree(%struct.TYPE_4__* %75)
  %77 = load i32, i32* @DEBUG2, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @debug_elog3(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %58, %34, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @debug_elog3(i32, i8*, i32) #1

declare dso_local i32 @GetMultiXactIdMembers(i32, %struct.TYPE_4__**, i32, i32) #1

declare dso_local i32 @debug_elog2(i32, i8*) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_4__*) #1

declare dso_local i64 @TransactionIdIsInProgress(i32) #1

declare dso_local i32 @debug_elog4(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
