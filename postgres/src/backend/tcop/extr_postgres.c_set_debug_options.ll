; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_set_debug_options.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_set_debug_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"debug%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"log_min_messages\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"notice\00", align 1
@PGC_POSTMASTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"log_connections\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"log_disconnections\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"log_statement\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"debug_print_parse\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"debug_print_plan\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"debug_print_rewritten\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_debug_options(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @SetConfigOption(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %14, i64 %15, i32 %16)
  br label %22

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @SetConfigOption(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %10
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 1
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @PGC_POSTMASTER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SetConfigOption(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %30, i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @SetConfigOption(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %25, %22
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @SetConfigOption(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @SetConfigOption(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %4, align 4
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @SetConfigOption(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %4, align 4
  %59 = icmp sge i32 %58, 5
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @SetConfigOption(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %57
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
