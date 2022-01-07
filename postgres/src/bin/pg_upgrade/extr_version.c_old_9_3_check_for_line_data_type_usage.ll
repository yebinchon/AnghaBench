; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_version.c_old_9_3_check_for_line_data_type_usage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_version.c_old_9_3_check_for_line_data_type_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Checking for incompatible \22line\22 data type\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"tables_using_line.txt\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"pg_catalog.line\00", align 1
@PG_REPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"fatal\0A\00", align 1
@.str.4 = private unnamed_addr constant [321 x i8] c"Your installation contains the \22line\22 data type in user tables.  This\0Adata type changed its internal and input/output format between your old\0Aand new clusters so this cluster cannot currently be upgraded.  You can\0Aremove the problem tables and restart the upgrade.  A list of the problem\0Acolumns is in the file:\0A    %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @old_9_3_check_for_line_data_type_usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @MAXPGPATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = call i32 @prep_status(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %10 = trunc i64 %6 to i32
  %11 = call i32 @snprintf(i8* %8, i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @check_for_data_type_usage(i32* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @PG_REPORT, align 4
  %17 = call i32 @pg_log(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @pg_fatal(i8* getelementptr inbounds ([321 x i8], [321 x i8]* @.str.4, i64 0, i64 0), i8* %8)
  br label %21

19:                                               ; preds = %1
  %20 = call i32 (...) @check_ok()
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %22)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @prep_status(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i64 @check_for_data_type_usage(i32*, i8*, i8*) #2

declare dso_local i32 @pg_log(i32, i8*) #2

declare dso_local i32 @pg_fatal(i8*, i8*) #2

declare dso_local i32 @check_ok(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
