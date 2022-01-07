; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/vsock/extr_control.c_control_readln.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/vsock/extr_control.c_control_readln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@control_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unexpected EOF on control socket\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @control_readln() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load i32, i32* @TIMEOUT, align 4
  %7 = call i32 @timeout_begin(i32 %6)
  br label %8

8:                                                ; preds = %70, %0
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i8*, i8** %1, align 8
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %14, 80
  %16 = call i8* @realloc(i8* %13, i64 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = call i32 @exit(i32 %21) #3
  unreachable

23:                                               ; preds = %12
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %1, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 80
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %23, %8
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* @control_fd, align 4
  %30 = load i8*, i8** %1, align 8
  %31 = load i64, i64* %2, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = call i32 @recv(i32 %29, i8* %32, i32 1, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = call i32 @timeout_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EINTR, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %28, label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  %51 = call i32 @exit(i32 %50) #3
  unreachable

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  %58 = call i32 @exit(i32 %57) #3
  unreachable

59:                                               ; preds = %52
  %60 = load i8*, i8** %1, align 8
  %61 = load i64, i64* %2, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i8*, i8** %1, align 8
  %68 = load i64, i64* %2, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %69, align 1
  br label %73

70:                                               ; preds = %59
  %71 = load i64, i64* %2, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %2, align 8
  br label %8

73:                                               ; preds = %66
  %74 = call i32 (...) @timeout_end()
  %75 = load i8*, i8** %1, align 8
  ret i8* %75
}

declare dso_local i32 @timeout_begin(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @timeout_check(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @timeout_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
