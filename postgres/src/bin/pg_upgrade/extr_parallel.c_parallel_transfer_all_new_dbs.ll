; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_parallel.c_parallel_transfer_all_new_dbs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_parallel.c_parallel_transfer_all_new_dbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32*, i32* }

@user_opts = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@parallel_jobs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not create worker process: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@cur_thread_args = common dso_local global i8** null, align 8
@thread_handles = common dso_local global i64* null, align 8
@transfer_thread_args = common dso_local global %struct.TYPE_6__** null, align 8
@win32_transfer_all_new_dbs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parallel_transfer_all_new_dbs(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @user_opts, i32 0, i32 0), align 4
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @transfer_all_new_dbs(i32* %15, i32* %16, i8* %17, i8* %18, i8* null)
  br label %56

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %24, %20
  %22 = call i32 @reap_child(i32 0)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %21

25:                                               ; preds = %21
  %26 = load i32, i32* @parallel_jobs, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @user_opts, i32 0, i32 0), align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @reap_child(i32 1)
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* @parallel_jobs, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @parallel_jobs, align 4
  %34 = call i32 @fflush(i32* null)
  %35 = call i64 (...) @fork()
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @transfer_all_new_dbs(i32* %40, i32* %41, i8* %42, i8* %43, i8* %44)
  %46 = call i32 @_exit(i32 0) #3
  unreachable

47:                                               ; preds = %31
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @pg_fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %14
  ret void
}

declare dso_local i32 @transfer_all_new_dbs(i32*, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @reap_child(i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @pg_fatal(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
