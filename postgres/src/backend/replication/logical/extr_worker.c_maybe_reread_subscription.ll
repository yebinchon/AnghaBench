; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_maybe_reread_subscription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_maybe_reread_subscription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32 }

@MySubscriptionValid = common dso_local global i32 0, align 4
@ApplyContext = common dso_local global i32 0, align 4
@MyLogicalRepWorker = common dso_local global %struct.TYPE_7__* null, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"logical replication apply worker for subscription \22%s\22 will stop because the subscription was removed\00", align 1
@MySubscription = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [103 x i8] c"logical replication apply worker for subscription \22%s\22 will stop because the subscription was disabled\00", align 1
@.str.2 = private unnamed_addr constant [115 x i8] c"logical replication apply worker for subscription \22%s\22 will restart because the connection information was changed\00", align 1
@.str.3 = private unnamed_addr constant [101 x i8] c"logical replication apply worker for subscription \22%s\22 will restart because subscription was renamed\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"logical replication apply worker for subscription \22%s\22 will restart because the replication slot name was changed\00", align 1
@.str.5 = private unnamed_addr constant [117 x i8] c"logical replication apply worker for subscription \22%s\22 will restart because subscription's publications were changed\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"subscription %u changed unexpectedly\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"synchronous_commit\00", align 1
@PGC_BACKEND = common dso_local global i32 0, align 4
@PGC_S_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @maybe_reread_subscription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_reread_subscription() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @MySubscriptionValid, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %145

7:                                                ; preds = %0
  %8 = call i32 (...) @IsTransactionState()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = call i32 (...) @StartTransactionCommand()
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %10, %7
  %13 = load i32, i32* @ApplyContext, align 4
  %14 = call i32 @MemoryContextSwitchTo(i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyLogicalRepWorker, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_6__* @GetSubscription(i32 %17, i32 1)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %2, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @LOG, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @ereport(i32 %22, i32 %26)
  %28 = call i32 @proc_exit(i32 0)
  br label %29

29:                                               ; preds = %21, %12
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @LOG, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = call i32 @ereport(i32 %35, i32 %39)
  %41 = call i32 @proc_exit(i32 0)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @strcmp(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load i32, i32* @LOG, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = call i32 @ereport(i32 %52, i32 %56)
  %58 = call i32 @proc_exit(i32 0)
  br label %59

59:                                               ; preds = %51, %42
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @strcmp(i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load i32, i32* @LOG, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @errmsg(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = call i32 @ereport(i32 %69, i32 %73)
  %75 = call i32 @proc_exit(i32 0)
  br label %76

76:                                               ; preds = %68, %59
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @Assert(i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @strcmp(i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %76
  %90 = load i32, i32* @LOG, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @errmsg(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = call i32 @ereport(i32 %90, i32 %94)
  %96 = call i32 @proc_exit(i32 0)
  br label %97

97:                                               ; preds = %89, %76
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @equal(i32 %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %97
  %107 = load i32, i32* @LOG, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @errmsg(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = call i32 @ereport(i32 %107, i32 %111)
  %113 = call i32 @proc_exit(i32 0)
  br label %114

114:                                              ; preds = %106, %97
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load i32, i32* @ERROR, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyLogicalRepWorker, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @elog(i32 %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %122, %114
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %130 = call i32 @FreeSubscription(%struct.TYPE_6__* %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %131, %struct.TYPE_6__** @MySubscription, align 8
  %132 = load i32, i32* %1, align 4
  %133 = call i32 @MemoryContextSwitchTo(i32 %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MySubscription, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @PGC_BACKEND, align 4
  %138 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %139 = call i32 @SetConfigOption(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %3, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = call i32 (...) @CommitTransactionCommand()
  br label %144

144:                                              ; preds = %142, %128
  store i32 1, i32* @MySubscriptionValid, align 4
  br label %145

145:                                              ; preds = %144, %6
  ret void
}

declare dso_local i32 @IsTransactionState(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_6__* @GetSubscription(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @equal(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @FreeSubscription(%struct.TYPE_6__*) #1

declare dso_local i32 @SetConfigOption(i8*, i32, i32, i32) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
