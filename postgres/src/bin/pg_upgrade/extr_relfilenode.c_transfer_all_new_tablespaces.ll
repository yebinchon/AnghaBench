; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_relfilenode.c_transfer_all_new_tablespaces.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_relfilenode.c_transfer_all_new_tablespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i8** }

@user_opts = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@PG_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cloning user relation files\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Copying user relation files\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Linking user relation files\0A\00", align 1
@os_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transfer_all_new_tablespaces(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @user_opts, i32 0, i32 0), align 4
  switch i32 %10, label %20 [
    i32 130, label %11
    i32 129, label %14
    i32 128, label %17
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @PG_REPORT, align 4
  %13 = call i32 @pg_log(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %20

14:                                               ; preds = %4
  %15 = load i32, i32* @PG_REPORT, align 4
  %16 = call i32 @pg_log(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @PG_REPORT, align 4
  %19 = call i32 @pg_log(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %4, %17, %14, %11
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @user_opts, i32 0, i32 1), align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @parallel_transfer_all_new_dbs(i32* %24, i32* %25, i8* %26, i8* %27, i8* null)
  br label %60

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @parallel_transfer_all_new_dbs(i32* %30, i32* %31, i8* %32, i8* %33, i8* %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %51, %29
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 0), align 8
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 1), align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @parallel_transfer_all_new_dbs(i32* %41, i32* %42, i8* %43, i8* %44, i8* %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %36

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %58, %54
  %56 = call i32 @reap_child(i32 1)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %55

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %23
  %61 = call i32 (...) @end_progress_output()
  %62 = call i32 (...) @check_ok()
  ret void
}

declare dso_local i32 @pg_log(i32, i8*) #1

declare dso_local i32 @parallel_transfer_all_new_dbs(i32*, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @reap_child(i32) #1

declare dso_local i32 @end_progress_output(...) #1

declare dso_local i32 @check_ok(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
