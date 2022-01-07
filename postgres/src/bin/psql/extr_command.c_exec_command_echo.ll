; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_echo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"qecho\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@OT_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @exec_command_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_echo(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  store i32* %19, i32** %11, align 8
  br label %29

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32*, i32** @stderr, align 8
  store i32* %25, i32** %11, align 8
  br label %28

26:                                               ; preds = %20
  %27 = load i32*, i32** @stdout, align 8
  store i32* %27, i32** %11, align 8
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %18
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @OT_NORMAL, align 4
  %33 = call i8* @psql_scan_slash_option(i32 %31, i32 %32, i8* %8, i32 0)
  store i8* %33, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load i8, i8* %8, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  br label %60

49:                                               ; preds = %44, %41, %38, %35
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @fputc(i8 signext 32, i32* %54)
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i8*, i8** %7, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @fputs(i8* %57, i32* %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @free(i8* %61)
  br label %30

63:                                               ; preds = %30
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %73

70:                                               ; preds = %3
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ignore_slash_options(i32 %71)
  br label %73

73:                                               ; preds = %70, %69
  %74 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  ret i32 %74
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @psql_scan_slash_option(i32, i32, i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
