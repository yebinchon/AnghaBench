; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_set.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@OT_NORMAL = common dso_local global i32 0, align 4
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @exec_command_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @OT_NORMAL, align 4
  %14 = call i8* @psql_scan_slash_option(i32 %12, i32 %13, i32* null, i32 0)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %19 = call i32 @PrintVariables(i32 %18)
  store i32 1, i32* %5, align 4
  br label %63

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @OT_NORMAL, align 4
  %23 = call i8* @psql_scan_slash_option(i32 %21, i32 %22, i32* null, i32 0)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  br label %29

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %28 ]
  %31 = call i8* @pg_strdup(i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @free(i8* %32)
  br label %34

34:                                               ; preds = %39, %29
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @OT_NORMAL, align 4
  %37 = call i8* @psql_scan_slash_option(i32 %35, i32 %36, i32* null, i32 0)
  store i8* %37, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = add nsw i64 %42, %44
  %46 = add nsw i64 %45, 1
  %47 = call i8* @pg_realloc(i8* %40, i64 %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strcat(i8* %48, i8* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @free(i8* %51)
  br label %34

53:                                               ; preds = %34
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @SetVariable(i32 %54, i8* %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %60, %17
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @free(i8* %64)
  br label %69

66:                                               ; preds = %2
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @ignore_slash_options(i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @PSQL_CMD_ERROR, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  ret i32 %77
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i32 @PrintVariables(i32) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @pg_realloc(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @SetVariable(i32, i8*, i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
