; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_find_other_exec_or_die.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_find_other_exec_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [108 x i8] c"The program \22%s\22 is needed by %s but was not found in the\0Asame directory as \22%s\22.\0ACheck your installation.\0A\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"The program \22%s\22 was found by \22%s\22\0Abut was not the same version as %s.\0ACheck your installation.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @find_other_exec_or_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_other_exec_or_die(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @MAXPGPATH, align 4
  %12 = call i8* @pg_malloc(i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @find_other_exec(i8* %13, i8* %14, i8* %15, i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %3
  %20 = load i32, i32* @MAXPGPATH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @find_my_exec(i8* %24, i8* %23)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i8*, i8** @progname, align 8
  %29 = trunc i64 %21 to i32
  %30 = call i32 @strlcpy(i8* %23, i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = call i32 @_(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** @progname, align 8
  %38 = call i32 @write_stderr(i32 %35, i8* %36, i8* %37, i8* %23)
  br label %44

39:                                               ; preds = %31
  %40 = call i32 @_(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** @progname, align 8
  %43 = call i32 @write_stderr(i32 %40, i8* %41, i8* %23, i8* %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = call i32 @exit(i32 1) #4
  unreachable

46:                                               ; preds = %3
  %47 = load i8*, i8** %8, align 8
  ret i8* %47
}

declare dso_local i8* @pg_malloc(i32) #1

declare dso_local i32 @find_other_exec(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @find_my_exec(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @write_stderr(i32, i8*, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
