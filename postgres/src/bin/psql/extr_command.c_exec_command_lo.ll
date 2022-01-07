; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_lo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_lo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@OT_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\\%s: missing required argument\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@PSQL_CMD_UNKNOWN = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @exec_command_lo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_lo(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  store i32 %11, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %86

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @OT_NORMAL, align 4
  %17 = call i8* @psql_scan_slash_option(i32 %15, i32 %16, i32* null, i32 1)
  store i8* %17, i8** %9, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @OT_NORMAL, align 4
  %20 = call i8* @psql_scan_slash_option(i32 %18, i32 %19, i32* null, i32 1)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %14
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i32 0, i32* %8, align 4
  br label %36

31:                                               ; preds = %25
  %32 = call i32 @expand_tilde(i8** %10)
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @do_lo_export(i8* %33, i8* %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %28
  br label %81

37:                                               ; preds = %14
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 0, i32* %8, align 4
  br label %53

48:                                               ; preds = %42
  %49 = call i32 @expand_tilde(i8** %9)
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @do_lo_import(i8* %50, i8* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %45
  br label %80

54:                                               ; preds = %37
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (...) @do_lo_list()
  store i32 %60, i32* %8, align 4
  br label %79

61:                                               ; preds = %54
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  store i32 0, i32* %8, align 4
  br label %75

72:                                               ; preds = %66
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @do_lo_unlink(i8* %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %78

76:                                               ; preds = %61
  %77 = load i32, i32* @PSQL_CMD_UNKNOWN, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %75
  br label %79

79:                                               ; preds = %78, %59
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80, %36
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @free(i8* %84)
  br label %89

86:                                               ; preds = %3
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @ignore_slash_options(i32 %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @PSQL_CMD_ERROR, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local i32 @expand_tilde(i8**) #1

declare dso_local i32 @do_lo_export(i8*, i8*) #1

declare dso_local i32 @do_lo_import(i8*, i8*) #1

declare dso_local i32 @do_lo_list(...) #1

declare dso_local i32 @do_lo_unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
