; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_HandleSlashCmds.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_HandleSlashCmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@PSQL_CMD_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"invalid command \\%s\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Try \\? for help.\00", align 1
@PSQL_CMD_ERROR = common dso_local global i64 0, align 8
@IFSTATE_IGNORED = common dso_local global i32 0, align 4
@OT_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\\%s: extra argument \22%s\22 ignored\00", align 1
@OT_WHOLE_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HandleSlashCmds(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @psql_scan_slash_command(i32* %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @exec_command(i8* %23, i32* %24, i32* %25, i32 %26, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @PSQL_CMD_UNKNOWN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %4
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @pg_log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @pg_log_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i64, i64* @PSQL_CMD_ERROR, align 8
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %39, %4
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @PSQL_CMD_ERROR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @conditional_active(i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @IFSTATE_IGNORED, align 4
  %50 = call i32 @conditional_stack_push(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %63, %45
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @OT_NORMAL, align 4
  %54 = call i8* @psql_scan_slash_option(i32* %52, i32 %53, i32* null, i32 0)
  store i8* %54, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @pg_log_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @free(i8* %64)
  br label %51

66:                                               ; preds = %51
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @conditional_stack_pop(i32* %67)
  br label %79

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %75, %69
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @OT_WHOLE_LINE, align 4
  %73 = call i8* @psql_scan_slash_option(i32* %71, i32 %72, i32* null, i32 0)
  store i8* %73, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @free(i8* %76)
  br label %70

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %66
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @psql_scan_slash_command_end(i32* %80)
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %85 = call i32 @fflush(i32 %84)
  %86 = load i64, i64* %9, align 8
  ret i64 %86
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @psql_scan_slash_command(i32*) #1

declare dso_local i64 @exec_command(i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local i32 @pg_log_info(i8*) #1

declare dso_local i32 @conditional_active(i32*) #1

declare dso_local i32 @conditional_stack_push(i32*, i32) #1

declare dso_local i8* @psql_scan_slash_option(i32*, i32, i32*, i32) #1

declare dso_local i32 @pg_log_warning(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @conditional_stack_pop(i32*) #1

declare dso_local i32 @psql_scan_slash_command_end(i32*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
