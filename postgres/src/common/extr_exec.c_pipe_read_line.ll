; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_exec.c_pipe_read_line.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_exec.c_pipe_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"popen failure\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"no data was returned by command \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fgets failure\00", align 1
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @pipe_read_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pipe_read_line(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fflush(i32 %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fflush(i32 %11)
  store i64 0, i64* @errno, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @popen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %44

18:                                               ; preds = %3
  store i64 0, i64* @errno, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @fgets(i8* %19, i32 %20, i32* %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @feof(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %34

32:                                               ; preds = %24
  %33 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @pclose(i32* %35)
  store i8* null, i8** %4, align 8
  br label %44

37:                                               ; preds = %18
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @pclose_check(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* null, i8** %4, align 8
  br label %44

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %42, %41, %34, %16
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i64 @pclose_check(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
