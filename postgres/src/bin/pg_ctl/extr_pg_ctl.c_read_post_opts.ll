; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_read_post_opts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_read_post_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@post_opts = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ctl_command = common dso_local global i64 0, align 8
@RESTART_COMMAND = common dso_local global i64 0, align 8
@postopts_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: could not read file \22%s\22\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: option file \22%s\22 must have exactly one line\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \22\00", align 1
@exec_path = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_post_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_post_opts() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i8*, i8** @post_opts, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %56

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @post_opts, align 8
  %8 = load i64, i64* @ctl_command, align 8
  %9 = load i64, i64* @RESTART_COMMAND, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %7
  %12 = load i32, i32* @postopts_file, align 4
  %13 = call i8** @readfile(i32 %12, i32* %2)
  store i8** %13, i8*** %1, align 8
  %14 = load i8**, i8*** %1, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @progname, align 4
  %19 = load i32, i32* @postopts_file, align 4
  %20 = call i32 @write_stderr(i32 %17, i32 %18, i32 %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %11
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @progname, align 4
  %28 = load i32, i32* @postopts_file, align 4
  %29 = call i32 @write_stderr(i32 %26, i32 %27, i32 %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %22
  %32 = load i8**, i8*** %1, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i8* @strstr(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %36, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i8*, i8** %4, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = call i8* @pg_strdup(i8* %41)
  store i8* %42, i8** @post_opts, align 8
  br label %43

43:                                               ; preds = %38, %31
  %44 = load i32*, i32** @exec_path, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8*, i8** %3, align 8
  %48 = call i8* @pg_strdup(i8* %47)
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** @exec_path, align 8
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = load i8**, i8*** %1, align 8
  %54 = call i32 @free_readfile(i8** %53)
  br label %55

55:                                               ; preds = %52, %7
  br label %56

56:                                               ; preds = %55, %0
  ret void
}

declare dso_local i8** @readfile(i32, i32*) #1

declare dso_local i32 @write_stderr(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @free_readfile(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
