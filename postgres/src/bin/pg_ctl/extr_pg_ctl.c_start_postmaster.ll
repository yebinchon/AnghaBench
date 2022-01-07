; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_start_postmaster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_start_postmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: could not start server: %s\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@log_file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"exec \22%s\22 %s%s < \22%s\22 >> \22%s\22 2>&1\00", align 1
@exec_path = common dso_local global i8* null, align 8
@pgdata_opt = common dso_local global i8* null, align 8
@post_opts = common dso_local global i8* null, align 8
@DEVNULL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"exec \22%s\22 %s%s < \22%s\22 2>&1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@postmasterProcess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @start_postmaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @start_postmaster() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAXPGPATH, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fflush(i32 %8)
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fflush(i32 %10)
  %12 = call i64 (...) @fork()
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %0
  %16 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @progname, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i64 @strerror(i32 %18)
  %20 = call i32 @write_stderr(i32 %16, i32 %17, i64 %19)
  %21 = call i32 @exit(i32 1) #4
  unreachable

22:                                               ; preds = %0
  %23 = load i64, i64* %3, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %3, align 8
  %27 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %27)
  ret i64 %26

28:                                               ; preds = %22
  %29 = load i8*, i8** @log_file, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* @MAXPGPATH, align 4
  %33 = load i8*, i8** @exec_path, align 8
  %34 = load i8*, i8** @pgdata_opt, align 8
  %35 = load i8*, i8** @post_opts, align 8
  %36 = load i8*, i8** @DEVNULL, align 8
  %37 = load i8*, i8** @log_file, align 8
  %38 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %7, i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %34, i8* %35, i8* %36, i8* %37)
  br label %46

39:                                               ; preds = %28
  %40 = load i32, i32* @MAXPGPATH, align 4
  %41 = load i8*, i8** @exec_path, align 8
  %42 = load i8*, i8** @pgdata_opt, align 8
  %43 = load i8*, i8** @post_opts, align 8
  %44 = load i8*, i8** @DEVNULL, align 8
  %45 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %7, i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %42, i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %39, %31
  %47 = call i32 @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %7, i8* null)
  %48 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @progname, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i64 @strerror(i32 %50)
  %52 = call i32 @write_stderr(i32 %48, i32 %49, i64 %51)
  %53 = call i32 @exit(i32 1) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fflush(i32) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @write_stderr(i32, i32, i64) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @strerror(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i8*) #2

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
