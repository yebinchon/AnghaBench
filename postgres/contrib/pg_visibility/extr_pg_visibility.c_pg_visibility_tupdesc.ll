; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_visibility/extr_pg_visibility.c_pg_visibility_tupdesc.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_visibility/extr_pg_visibility.c_pg_visibility_tupdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"blkno\00", align 1
@INT8OID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"all_visible\00", align 1
@BOOLOID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"all_frozen\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pd_all_visible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pg_visibility_tupdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_visibility_tupdesc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i64 2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* %6, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @CreateTemplateTupleDesc(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* @INT8OID, align 4
  %29 = call i32 @TupleDescInitEntry(i32 %25, i64 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28, i32 -1, i32 0)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32, i32* %5, align 4
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* @BOOLOID, align 4
  %35 = call i32 @TupleDescInitEntry(i32 %31, i64 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 -1, i32 0)
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %7, align 8
  %39 = load i32, i32* @BOOLOID, align 4
  %40 = call i32 @TupleDescInitEntry(i32 %36, i64 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 -1, i32 0)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* @BOOLOID, align 4
  %48 = call i32 @TupleDescInitEntry(i32 %44, i64 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 -1, i32 0)
  br label %49

49:                                               ; preds = %43, %30
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @BlessTupleDesc(i32 %55)
  ret i32 %56
}

declare dso_local i32 @CreateTemplateTupleDesc(i64) #1

declare dso_local i32 @TupleDescInitEntry(i32, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BlessTupleDesc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
