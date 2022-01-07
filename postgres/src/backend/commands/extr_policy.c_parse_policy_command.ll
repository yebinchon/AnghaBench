; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_policy.c_parse_policy_command.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_policy.c_parse_policy_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unrecognized policy command\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@ACL_SELECT_CHR = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@ACL_INSERT_CHR = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@ACL_UPDATE_CHR = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@ACL_DELETE_CHR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*)* @parse_policy_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @parse_policy_command(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @ERROR, align 4
  %8 = call i32 @elog(i32 %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8 42, i8* %3, align 1
  br label %45

14:                                               ; preds = %9
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8, i8* @ACL_SELECT_CHR, align 1
  store i8 %19, i8* %3, align 1
  br label %44

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8, i8* @ACL_INSERT_CHR, align 1
  store i8 %25, i8* %3, align 1
  br label %43

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8, i8* @ACL_UPDATE_CHR, align 1
  store i8 %31, i8* %3, align 1
  br label %42

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i8, i8* @ACL_DELETE_CHR, align 1
  store i8 %37, i8* %3, align 1
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 @elog(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %36
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %18
  br label %45

45:                                               ; preds = %44, %13
  %46 = load i8, i8* %3, align 1
  ret i8 %46
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
