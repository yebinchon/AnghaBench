; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_adjust_data_dir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_adjust_data_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@pg_config = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s/postgresql.conf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s/PG_VERSION\00", align 1
@exec_path = common dso_local global i8* null, align 8
@argv0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@PG_BACKEND_VERSIONSTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"\22%s\22 -C data_directory %s%s\00", align 1
@pgdata_opt = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@post_opts = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [63 x i8] c"%s: could not determine the data directory using command \22%s\22\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@pg_data = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @adjust_data_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_data_dir() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAXPGPATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @MAXPGPATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %14 = load i8*, i8** @pg_config, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 1, i32* %6, align 4
  br label %87

17:                                               ; preds = %0
  %18 = trunc i64 %12 to i32
  %19 = load i8*, i8** @pg_config, align 8
  %20 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %87

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @fclose(i32* %25)
  %27 = trunc i64 %12 to i32
  %28 = load i8*, i8** @pg_config, align 8
  %29 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @fclose(i32* %33)
  store i32 1, i32* %6, align 4
  br label %87

35:                                               ; preds = %24
  %36 = load i8*, i8** @exec_path, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @argv0, align 4
  %40 = load i32, i32* @PG_BACKEND_VERSIONSTR, align 4
  %41 = call i8* @find_other_exec_or_die(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store i8* %41, i8** %4, align 8
  br label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** @exec_path, align 8
  %44 = call i8* @pg_strdup(i8* %43)
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* @MAXPGPATH, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** @pgdata_opt, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i8*, i8** @pgdata_opt, align 8
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i8* [ %51, %50 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %52 ]
  %55 = load i8*, i8** @post_opts, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** @post_opts, align 8
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i8* [ %58, %57 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %59 ]
  %62 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %10, i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %47, i8* %54, i8* %61)
  %63 = call i32* @popen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %63, i32** %5, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = trunc i64 %12 to i32
  %68 = load i32*, i32** %5, align 8
  %69 = call i32* @fgets(i8* %13, i32 %67, i32* %68)
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66, %60
  %72 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* @progname, align 4
  %74 = call i32 @write_stderr(i32 %72, i32 %73, i8* %10)
  %75 = call i32 @exit(i32 1) #4
  unreachable

76:                                               ; preds = %66
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @pclose(i32* %77)
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @free(i8* %79)
  %81 = call i32 @pg_strip_crlf(i8* %13)
  %82 = load i8*, i8** @pg_data, align 8
  %83 = call i32 @free(i8* %82)
  %84 = call i8* @pg_strdup(i8* %13)
  store i8* %84, i8** @pg_data, align 8
  %85 = load i8*, i8** @pg_data, align 8
  %86 = call i32 @canonicalize_path(i8* %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %76, %32, %23, %16
  %88 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %6, align 4
  switch i32 %89, label %91 [
    i32 0, label %90
    i32 1, label %90
  ]

90:                                               ; preds = %87, %87
  ret void

91:                                               ; preds = %87
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @find_other_exec_or_die(i32, i8*, i32) #2

declare dso_local i8* @pg_strdup(i8*) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @write_stderr(i32, i32, i8*) #2

declare dso_local i32 @_(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @pclose(i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @pg_strip_crlf(i8*) #2

declare dso_local i32 @canonicalize_path(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
