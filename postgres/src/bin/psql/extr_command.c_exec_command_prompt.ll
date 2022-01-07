; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_prompt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@OT_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"\\%s: missing required argument\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\\%s: could not read value for variable\00", align 1
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @exec_command_prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_prompt(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %88

15:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @OT_NORMAL, align 4
  %18 = call i8* @psql_scan_slash_option(i32 %16, i32 %17, i32* null, i32 0)
  store i8* %18, i8** %10, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @OT_NORMAL, align 4
  %21 = call i8* @psql_scan_slash_option(i32 %19, i32 %20, i32* null, i32 0)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 0, i32* %7, align 4
  br label %87

27:                                               ; preds = %15
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %10, align 8
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %8, align 8
  br label %35

33:                                               ; preds = %27
  %34 = load i8*, i8** %10, align 8
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = call i64 @pg_malloc(i32 4096)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @simple_prompt(i8* %41, i8* %42, i32 4096, i32 1)
  br label %62

44:                                               ; preds = %35
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fputs(i8* %48, i32 %49)
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @fflush(i32 %51)
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i32, i32* @stdin, align 4
  %55 = call i8* @gets_fromFile(i32 %54)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @pg_log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @SetVariable(i32 %66, i8* %67, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %65, %62
  %73 = load i8*, i8** %12, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i8*, i8** %9, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @free(i8* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %84, %24
  br label %91

88:                                               ; preds = %3
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @ignore_slash_options(i32 %89)
  br label %91

91:                                               ; preds = %88, %87
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  br label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @PSQL_CMD_ERROR, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  ret i32 %99
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @simple_prompt(i8*, i8*, i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @gets_fromFile(i32) #1

declare dso_local i32 @SetVariable(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
