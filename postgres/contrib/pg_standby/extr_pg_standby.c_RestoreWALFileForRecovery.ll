; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_standby/extr_pg_standby.c_RestoreWALFileForRecovery.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_standby/extr_pg_standby.c_RestoreWALFileForRecovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"running restore:      \00", align 1
@maxretries = common dso_local global i32 0, align 4
@restoreCommand = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@sleeptime = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"not restored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @RestoreWALFileForRecovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RestoreWALFileForRecovery() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @debug, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fflush(i32 %9)
  br label %11

11:                                               ; preds = %6, %0
  br label %12

12:                                               ; preds = %30, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @maxretries, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i32, i32* @restoreCommand, align 4
  %18 = call i32 @system(i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i64, i64* @debug, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fflush(i32 %27)
  br label %29

29:                                               ; preds = %24, %21
  store i32 1, i32* %1, align 4
  br label %45

30:                                               ; preds = %16
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = sext i32 %31 to i64
  %34 = load i64, i64* @sleeptime, align 8
  %35 = mul nsw i64 %33, %34
  %36 = mul nsw i64 %35, 1000000
  %37 = call i32 @pg_usleep(i64 %36)
  br label %12

38:                                               ; preds = %12
  %39 = load i64, i64* @debug, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @system(i32) #1

declare dso_local i32 @pg_usleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
