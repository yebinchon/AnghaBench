; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_pset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_pset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@OT_NORMAL = common dso_local global i32 0, align 4
@exec_command_pset.my_list = internal constant [22 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"csv_fieldsep\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"expanded\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"fieldsep\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"fieldsep_zero\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"footer\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"linestyle\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"numericlocale\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pager\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"pager_min_lines\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"recordsep\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"recordsep_zero\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"tableattr\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"tuples_only\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"unicode_border_linestyle\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"unicode_column_linestyle\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"unicode_header_linestyle\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"%-24s %s\0A\00", align 1
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @exec_command_pset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_pset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @OT_NORMAL, align 4
  %15 = call i8* @psql_scan_slash_option(i32 %13, i32 %14, i32* null, i32 0)
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @OT_NORMAL, align 4
  %18 = call i8* @psql_scan_slash_option(i32 %16, i32 %17, i32* null, i32 0)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [22 x i8*], [22 x i8*]* @exec_command_pset.my_list, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [22 x i8*], [22 x i8*]* @exec_command_pset.my_list, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @pset_value_string(i8* %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1))
  store i8* %33, i8** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [22 x i8*], [22 x i8*]* @exec_command_pset.my_list, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @free(i8* %40)
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %22

45:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %51

46:                                               ; preds = %12
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %50 = call i32 @do_pset(i8* %47, i8* %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @free(i8* %54)
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @ignore_slash_options(i32 %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @PSQL_CMD_ERROR, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  ret i32 %67
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i8* @pset_value_string(i8*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @do_pset(i8*, i8*, i32*, i32) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
