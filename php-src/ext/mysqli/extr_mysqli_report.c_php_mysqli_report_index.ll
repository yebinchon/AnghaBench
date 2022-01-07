; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_report.c_php_mysqli_report_index.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_report.c_php_mysqli_report_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERVER_QUERY_NO_GOOD_INDEX_USED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Bad index\00", align 1
@SERVER_QUERY_NO_INDEX_USED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"No index\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"00000\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s used in query/prepared statement %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_mysqli_report_index(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [15 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SERVER_QUERY_NO_GOOD_INDEX_USED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %12 = call i32 @strcpy(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SERVER_QUERY_NO_INDEX_USED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %20 = call i32 @strcpy(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %22

21:                                               ; preds = %13
  br label %27

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %10
  %24 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @php_mysqli_throw_sql_exception(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %24, i8* %25)
  br label %27

27:                                               ; preds = %23, %21
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @php_mysqli_throw_sql_exception(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
