; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_getMetaCommand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_getMetaCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@META_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@META_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"setshell\00", align 1
@META_SETSHELL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@META_SHELL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@META_SLEEP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@META_IF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@META_ELIF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@META_ELSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@META_ENDIF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"gset\00", align 1
@META_GSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getMetaCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getMetaCommand(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @META_NONE, align 4
  store i32 %7, i32* %3, align 4
  br label %73

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @pg_strcasecmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @META_SET, align 4
  store i32 %13, i32* %3, align 4
  br label %72

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @pg_strcasecmp(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @META_SETSHELL, align 4
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @pg_strcasecmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @META_SHELL, align 4
  store i32 %25, i32* %3, align 4
  br label %70

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @pg_strcasecmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @META_SLEEP, align 4
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @pg_strcasecmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @META_IF, align 4
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %32
  %39 = load i8*, i8** %2, align 8
  %40 = call i64 @pg_strcasecmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @META_ELIF, align 4
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %38
  %45 = load i8*, i8** %2, align 8
  %46 = call i64 @pg_strcasecmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @META_ELSE, align 4
  store i32 %49, i32* %3, align 4
  br label %66

50:                                               ; preds = %44
  %51 = load i8*, i8** %2, align 8
  %52 = call i64 @pg_strcasecmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @META_ENDIF, align 4
  store i32 %55, i32* %3, align 4
  br label %65

56:                                               ; preds = %50
  %57 = load i8*, i8** %2, align 8
  %58 = call i64 @pg_strcasecmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @META_GSET, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @META_NONE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66, %42
  br label %68

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68, %30
  br label %70

70:                                               ; preds = %69, %24
  br label %71

71:                                               ; preds = %70, %18
  br label %72

72:                                               ; preds = %71, %12
  br label %73

73:                                               ; preds = %72, %6
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
