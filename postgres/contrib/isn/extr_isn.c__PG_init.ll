; ModuleID = '/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISN_DEBUG = common dso_local global i64 0, align 8
@EAN13_range = common dso_local global i32 0, align 4
@EAN13_index = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"EAN13 failed check\00", align 1
@ISBN_range = common dso_local global i32 0, align 4
@ISBN_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ISBN failed check\00", align 1
@ISMN_range = common dso_local global i32 0, align 4
@ISMN_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ISMN failed check\00", align 1
@ISSN_range = common dso_local global i32 0, align 4
@ISSN_index = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"ISSN failed check\00", align 1
@UPC_range = common dso_local global i32 0, align 4
@UPC_index = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"UPC failed check\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = load i64, i64* @ISN_DEBUG, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %44

3:                                                ; preds = %0
  %4 = load i32, i32* @EAN13_range, align 4
  %5 = load i32, i32* @EAN13_index, align 4
  %6 = call i32 @check_table(i32 %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load i32, i32* @ERROR, align 4
  %10 = call i32 @elog(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %3
  %12 = load i32, i32* @ISBN_range, align 4
  %13 = load i32, i32* @ISBN_index, align 4
  %14 = call i32 @check_table(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ERROR, align 4
  %18 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* @ISMN_range, align 4
  %21 = load i32, i32* @ISMN_index, align 4
  %22 = call i32 @check_table(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* @ISSN_range, align 4
  %29 = load i32, i32* @ISSN_index, align 4
  %30 = call i32 @check_table(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* @UPC_range, align 4
  %37 = load i32, i32* @UPC_index, align 4
  %38 = call i32 @check_table(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ERROR, align 4
  %42 = call i32 @elog(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %0
  ret void
}

declare dso_local i32 @check_table(i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
