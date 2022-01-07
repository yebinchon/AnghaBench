; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_anytimestamp_typmod_check.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_anytimestamp_typmod_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"TIMESTAMP(%d)%s precision must not be negative\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" WITH TIME ZONE\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_TIMESTAMP_PRECISION = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"TIMESTAMP(%d)%s precision reduced to maximum allowed, %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @anytimestamp_typmod_check(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load i32, i32* @ERROR, align 4
  %9 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %10 = call i32 @errcode(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 (i8*, i64, i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %11, i8* %15)
  %17 = call i32 @ereport(i32 %8, i32 %16)
  br label %18

18:                                               ; preds = %7, %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @MAX_TIMESTAMP_PRECISION, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* @WARNING, align 4
  %24 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i64, i64* @MAX_TIMESTAMP_PRECISION, align 8
  %32 = call i32 (i8*, i64, i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %26, i8* %30, i64 %31)
  %33 = call i32 @ereport(i32 %23, i32 %32)
  %34 = load i64, i64* @MAX_TIMESTAMP_PRECISION, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %22, %18
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
