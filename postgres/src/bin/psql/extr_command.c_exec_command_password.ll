; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_password.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@OT_SQLID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enter new password: \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Enter it again: \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Passwords didn't match.\00", align 1
@pset = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ALTER USER %s PASSWORD \00", align 1
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @exec_command_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_password(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %77

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @OT_SQLID, align 4
  %18 = call i8* @psql_scan_slash_option(i32 %16, i32 %17, i32* null, i32 1)
  store i8* %18, i8** %6, align 8
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %20 = call i32 @simple_prompt(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %19, i32 100, i32 0)
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %22 = call i32 @simple_prompt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 100, i32 0)
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %25 = call i64 @strcmp(i8* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = call i32 @pg_log_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %70

29:                                               ; preds = %15
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %9, align 8
  br label %37

34:                                               ; preds = %29
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 4
  %36 = call i8* @PQuser(i32 %35)
  store i8* %36, i8** %9, align 8
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 4
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @PQencryptPasswordConn(i32 %38, i8* %39, i8* %40, i32* null)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 4
  %46 = call i32 @PQerrorMessage(i32 %45)
  %47 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  store i32 0, i32* %5, align 4
  br label %69

48:                                               ; preds = %37
  %49 = call i32 @initPQExpBuffer(%struct.TYPE_7__* %11)
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @fmtId(i8* %50)
  %52 = call i32 @printfPQExpBuffer(%struct.TYPE_7__* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 4
  %55 = call i32 @appendStringLiteralConn(%struct.TYPE_7__* %11, i8* %53, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @PSQLexec(i32 %57)
  store i32* %58, i32** %12, align 8
  %59 = call i32 @termPQExpBuffer(%struct.TYPE_7__* %11)
  %60 = load i32*, i32** %12, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %66

63:                                               ; preds = %48
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @PQclear(i32* %64)
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @PQfreemem(i8* %67)
  br label %69

69:                                               ; preds = %66, %44
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @free(i8* %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %80

77:                                               ; preds = %2
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @ignore_slash_options(i32 %78)
  br label %80

80:                                               ; preds = %77, %76
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  br label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @PSQL_CMD_ERROR, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  ret i32 %88
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i32 @simple_prompt(i8*, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pg_log_error(i8*) #1

declare dso_local i8* @PQuser(i32) #1

declare dso_local i8* @PQencryptPasswordConn(i32, i8*, i8*, i32*) #1

declare dso_local i32 @pg_log_info(i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i32 @appendStringLiteralConn(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32* @PSQLexec(i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
