; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_inq.c_start_server.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_inq.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"can only send %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @start_server(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  store i32 4, i32* %6, align 4
  %13 = load i32, i32* @BUF_SIZE, align 4
  %14 = call i8* @malloc(i32 %13)
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %51, %1
  %16 = load i32, i32* %4, align 4
  %17 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %18 = call i32 @accept(i32 %16, %struct.sockaddr* %17, i32* %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %55

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @BUF_SIZE, align 4
  %28 = call i32 @send(i32 %25, i8* %26, i32 %27, i32 0)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EINTR, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %24, label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @BUF_SIZE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = call i32 @sleep(i32 1)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @close(i32 %53)
  br label %15

55:                                               ; preds = %21
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @close(i32 %58)
  %60 = call i32 @pthread_exit(i32 0)
  %61 = load i8*, i8** %2, align 8
  ret i8* %61
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pthread_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
