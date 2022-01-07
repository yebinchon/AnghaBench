; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_do_status.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_do_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"%s: single-user server is running (PID: %ld)\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: server is running (PID: %ld)\0A\00", align 1
@postopts_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: no server running\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_status() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = call i64 @get_pgpid(i32 1)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %57

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i64, i64* %1, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i64 @postmaster_is_alive(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** @progname, align 8
  %21 = load i64, i64* %1, align 8
  %22 = call i32 (i8*, i8*, ...) @printf(i8* %19, i8* %20, i64 %21)
  br label %62

23:                                               ; preds = %11
  br label %56

24:                                               ; preds = %8
  %25 = load i64, i64* %1, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i64 @postmaster_is_alive(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** @progname, align 8
  %32 = load i64, i64* %1, align 8
  %33 = call i32 (i8*, i8*, ...) @printf(i8* %30, i8* %31, i64 %32)
  %34 = load i32, i32* @postopts_file, align 4
  %35 = call i8** @readfile(i32 %34, i32* %4)
  store i8** %35, i8*** %2, align 8
  %36 = load i8**, i8*** %2, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %29
  %39 = load i8**, i8*** %2, align 8
  store i8** %39, i8*** %3, align 8
  br label %40

40:                                               ; preds = %48, %38
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i8**, i8*** %3, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @puts(i8* %46)
  br label %48

48:                                               ; preds = %44
  %49 = load i8**, i8*** %3, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %3, align 8
  br label %40

51:                                               ; preds = %40
  %52 = load i8**, i8*** %2, align 8
  %53 = call i32 @free_readfile(i8** %52)
  br label %54

54:                                               ; preds = %51, %29
  br label %62

55:                                               ; preds = %24
  br label %56

56:                                               ; preds = %55, %23
  br label %57

57:                                               ; preds = %56, %0
  %58 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i8*, i8** @progname, align 8
  %60 = call i32 (i8*, i8*, ...) @printf(i8* %58, i8* %59)
  %61 = call i32 @exit(i32 3) #3
  unreachable

62:                                               ; preds = %54, %18
  ret void
}

declare dso_local i64 @get_pgpid(i32) #1

declare dso_local i64 @postmaster_is_alive(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8** @readfile(i32, i32*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @free_readfile(i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
