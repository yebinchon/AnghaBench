; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_createPartitions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_createPartitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@partitions = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"creating %d partitions...\0A\00", align 1
@partition_method = common dso_local global i64 0, align 8
@PART_RANGE = common dso_local global i64 0, align 8
@naccounts = common dso_local global i32 0, align 4
@scale = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"minvalue\00", align 1
@INT64_FORMAT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"maxvalue\00", align 1
@.str.3 = private unnamed_addr constant [101 x i8] c"create%s table pgbench_accounts_%d\0A  partition of pgbench_accounts\0A  for values from (%s) to (%s)%s\0A\00", align 1
@unlogged_tables = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c" unlogged\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PART_HASH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [115 x i8] c"create%s table pgbench_accounts_%d\0A  partition of pgbench_accounts\0A  for values with (modulus %d, remainder %d)%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @createPartitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createPartitions(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  store i32* %0, i32** %2, align 8
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %9, align 16
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %11 = call i32 @append_fillfactor(i8* %10, i32 64)
  %12 = load i32, i32* @partitions, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* @partitions, align 4
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %100, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @partitions, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %103

23:                                               ; preds = %19
  %24 = load i64, i64* @partition_method, align 8
  %25 = load i64, i64* @PART_RANGE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %23
  %28 = load i32, i32* @naccounts, align 4
  %29 = load i64, i64* @scale, align 8
  %30 = trunc i64 %29 to i32
  %31 = mul nsw i32 %28, %30
  %32 = load i32, i32* @partitions, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* @partitions, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %51

42:                                               ; preds = %27
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %44 = load i8*, i8** @INT64_FORMAT, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* %44, i32 %49)
  br label %51

51:                                               ; preds = %42, %39
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @partitions, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %57 = load i8*, i8** @INT64_FORMAT, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* %57, i32 %61)
  br label %66

63:                                               ; preds = %51
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %55
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %68 = load i64, i64* @unlogged_tables, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %72 = load i32, i32* %4, align 4
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %76 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %67, i32 256, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i8* %71, i32 %72, i8* %73, i8* %74, i8* %75)
  br label %96

77:                                               ; preds = %23
  %78 = load i64, i64* @partition_method, align 8
  %79 = load i64, i64* @PART_HASH, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %83 = load i64, i64* @unlogged_tables, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @partitions, align 4
  %89 = load i32, i32* %4, align 4
  %90 = sub nsw i32 %89, 1
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %92 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %82, i32 256, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.6, i64 0, i64 0), i8* %86, i32 %87, i32 %88, i32 %90, i8* %91)
  br label %95

93:                                               ; preds = %77
  %94 = call i32 @Assert(i32 0)
  br label %95

95:                                               ; preds = %93, %81
  br label %96

96:                                               ; preds = %95, %66
  %97 = load i32*, i32** %2, align 8
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %99 = call i32 @executeStatement(i32* %97, i8* %98)
  br label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %19

103:                                              ; preds = %19
  ret void
}

declare dso_local i32 @append_fillfactor(i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @executeStatement(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
