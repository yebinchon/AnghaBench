; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_edit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSQL_CMD_SKIP_LINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"no query buffer\00", align 1
@PSQL_CMD_ERROR = common dso_local global i64 0, align 8
@OT_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid line number: %s\00", align 1
@PSQL_CMD_NEWEDIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32)* @exec_command_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @exec_command_edit(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* @PSQL_CMD_SKIP_LINE, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %102

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @PSQL_CMD_ERROR, align 8
  store i64 %21, i64* %9, align 8
  br label %101

22:                                               ; preds = %16
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %12, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @OT_NORMAL, align 4
  %25 = call i8* @psql_scan_slash_option(i32 %23, i32 %24, i32* null, i32 1)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @OT_NORMAL, align 4
  %31 = call i8* @psql_scan_slash_option(i32 %29, i32 %30, i32* null, i32 1)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @strspn(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** %11, align 8
  store i8* null, i8** %10, align 8
  br label %48

48:                                               ; preds = %46, %40, %34
  br label %49

49:                                               ; preds = %48, %28
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @atoi(i8* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = load i64, i64* @PSQL_CMD_ERROR, align 8
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @PSQL_CMD_ERROR, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = call i32 @expand_tilde(i8** %10)
  %69 = load i8*, i8** %10, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @canonicalize_path(i8* %72)
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @copy_previous_query(i32 %75, i32 %76)
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i64 @do_edit(i8* %78, i32 %79, i32 %80, i32* null)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i64, i64* @PSQL_CMD_NEWEDIT, align 8
  store i64 %84, i64* %9, align 8
  br label %87

85:                                               ; preds = %74
  %86 = load i64, i64* @PSQL_CMD_ERROR, align 8
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %85, %83
  br label %88

88:                                               ; preds = %87, %63
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @free(i8* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i8*, i8** %11, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @free(i8* %98)
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %19
  br label %105

102:                                              ; preds = %4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @ignore_slash_options(i32 %103)
  br label %105

105:                                              ; preds = %102, %101
  %106 = load i64, i64* %9, align 8
  ret i64 %106
}

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @expand_tilde(i8**) #1

declare dso_local i32 @canonicalize_path(i8*) #1

declare dso_local i32 @copy_previous_query(i32, i32) #1

declare dso_local i64 @do_edit(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
