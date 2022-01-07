; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_pg_analyze_and_rewrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_pg_analyze_and_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_parser_stats = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"PARSE ANALYSIS STATISTICS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pg_analyze_and_rewrite(i32* %0, i8* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @TRACE_POSTGRESQL_QUERY_REWRITE_START(i8* %13)
  %15 = load i64, i64* @log_parser_stats, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call i32 (...) @ResetUsage()
  br label %19

19:                                               ; preds = %17, %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32* @parse_analyze(i32* %20, i8* %21, i32* %22, i32 %23, i32* %24)
  store i32* %25, i32** %11, align 8
  %26 = load i64, i64* @log_parser_stats, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 @ShowUsage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %19
  %31 = load i32*, i32** %11, align 8
  %32 = call i32* @pg_rewrite_query(i32* %31)
  store i32* %32, i32** %12, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @TRACE_POSTGRESQL_QUERY_REWRITE_DONE(i8* %33)
  %35 = load i32*, i32** %12, align 8
  ret i32* %35
}

declare dso_local i32 @TRACE_POSTGRESQL_QUERY_REWRITE_START(i8*) #1

declare dso_local i32 @ResetUsage(...) #1

declare dso_local i32* @parse_analyze(i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @ShowUsage(i8*) #1

declare dso_local i32* @pg_rewrite_query(i32*) #1

declare dso_local i32 @TRACE_POSTGRESQL_QUERY_REWRITE_DONE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
