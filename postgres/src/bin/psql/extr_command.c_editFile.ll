; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_editFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_editFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"PSQL_EDITOR\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"VISUAL\00", align 1
@DEFAULT_EDITOR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"PSQL_EDITOR_LINENUMBER_ARG\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"environment variable PSQL_EDITOR_LINENUMBER_ARG must be set to specify a line number\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"exec %s %s%d '%s'\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"exec %s '%s'\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"could not start editor \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"could not start /bin/sh\00", align 1
@DEFAULT_EDITOR_LINENUMBER_ARG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @editFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @editFile(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @DEFAULT_EDITOR, align 8
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = call i8* @getenv(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %72

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* (i8*, i8*, i8*, ...) @psprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %43, i8* %44, i32 %45, i8* %46)
  store i8* %47, i8** %8, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i8* (i8*, i8*, i8*, ...) @psprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %49, i8* %50)
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @system(i8* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %58)
  br label %66

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 127
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %36
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i8* @psprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
