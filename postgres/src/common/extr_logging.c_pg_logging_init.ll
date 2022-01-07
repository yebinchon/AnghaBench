; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_logging.c_pg_logging_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_logging.c_pg_logging_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"PG_COLOR\00", align 1
@stderr = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@PG_LOG_INFO = common dso_local global i32 0, align 4
@__pg_log_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PG_COLORS\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@sgr_error = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@sgr_warning = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"locus\00", align 1
@sgr_locus = common dso_local global i8* null, align 8
@SGR_ERROR_DEFAULT = common dso_local global i8* null, align 8
@SGR_WARNING_DEFAULT = common dso_local global i8* null, align 8
@SGR_LOCUS_DEFAULT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_logging_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %11 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* @_IONBF, align 4
  %14 = call i32 @setvbuf(i32 %12, i32* null, i32 %13, i32 0)
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @get_progname(i8* %15)
  store i32 %16, i32* @progname, align 4
  %17 = load i32, i32* @PG_LOG_INFO, align 4
  store i32 %17, i32* @__pg_log_level, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fileno(i32 %29)
  %31 = call i64 @isatty(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %20
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %28, %24
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %96

38:                                               ; preds = %35
  %39 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %91

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @strdup(i8* %43)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %90

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @strtok(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %49, i8** %7, align 8
  br label %50

50:                                               ; preds = %85, %47
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %87

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @strchr(i8* %54, i8 signext 61)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %7, align 8
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @strdup(i8* %67)
  store i8* %68, i8** @sgr_error, align 8
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i8*, i8** %9, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %10, align 8
  %75 = call i8* @strdup(i8* %74)
  store i8* %75, i8** @sgr_warning, align 8
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %10, align 8
  %82 = call i8* @strdup(i8* %81)
  store i8* %82, i8** @sgr_locus, align 8
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83, %53
  br label %85

85:                                               ; preds = %84
  %86 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %86, i8** %7, align 8
  br label %50

87:                                               ; preds = %50
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @free(i8* %88)
  br label %90

90:                                               ; preds = %87, %42
  br label %95

91:                                               ; preds = %38
  %92 = load i8*, i8** @SGR_ERROR_DEFAULT, align 8
  store i8* %92, i8** @sgr_error, align 8
  %93 = load i8*, i8** @SGR_WARNING_DEFAULT, align 8
  store i8* %93, i8** @sgr_warning, align 8
  %94 = load i8*, i8** @SGR_LOCUS_DEFAULT, align 8
  store i8* %94, i8** @sgr_locus, align 8
  br label %95

95:                                               ; preds = %91, %90
  br label %96

96:                                               ; preds = %95, %35
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @get_progname(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
