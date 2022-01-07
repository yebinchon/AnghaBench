; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_date.c_date2timestamp_opt_overflow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_date.c_date2timestamp_opt_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMESTAMP_END_JULIAN = common dso_local global i32 0, align 4
@POSTGRES_EPOCH_JDATE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"date out of range for timestamp\00", align 1
@USECS_PER_DAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @date2timestamp_opt_overflow(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @DATE_IS_NOBEGIN(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @TIMESTAMP_NOBEGIN(i32 %11)
  br label %43

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @DATE_IS_NOEND(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @TIMESTAMP_NOEND(i32 %18)
  br label %42

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TIMESTAMP_END_JULIAN, align 4
  %23 = load i32, i32* @POSTGRES_EPOCH_JDATE, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  store i32 1, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %45

31:                                               ; preds = %26
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @ereport(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @USECS_PER_DAY, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %17
  br label %43

43:                                               ; preds = %42, %10
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @DATE_IS_NOBEGIN(i32) #1

declare dso_local i32 @TIMESTAMP_NOBEGIN(i32) #1

declare dso_local i64 @DATE_IS_NOEND(i32) #1

declare dso_local i32 @TIMESTAMP_NOEND(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
