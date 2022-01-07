; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_check_max_stack_depth.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_check_max_stack_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STACK_DEPTH_SLOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"\22max_stack_depth\22 must not exceed %ldkB.\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Increase the platform's stack depth limit via \22ulimit -s\22 or local equivalent.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_max_stack_depth(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, 1024
  store i64 %13, i64* %8, align 8
  %14 = call i64 (...) @get_stack_depth_rlimit()
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @STACK_DEPTH_SLOP, align 8
  %21 = sub nsw i64 %19, %20
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @STACK_DEPTH_SLOP, align 8
  %26 = sub nsw i64 %24, %25
  %27 = sdiv i64 %26, 1024
  %28 = call i32 @GUC_check_errdetail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = call i32 @GUC_check_errhint(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %31

30:                                               ; preds = %17, %3
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @get_stack_depth_rlimit(...) #1

declare dso_local i32 @GUC_check_errdetail(i8*, i64) #1

declare dso_local i32 @GUC_check_errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
