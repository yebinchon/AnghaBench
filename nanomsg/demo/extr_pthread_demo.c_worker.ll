; ModuleID = '/home/carl/AnghaBench/nanomsg/demo/extr_pthread_demo.c_worker.c'
source_filename = "/home/carl/AnghaBench/nanomsg/demo/extr_pthread_demo.c_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_iovec = type { i8**, i8* }
%struct.nn_msghdr = type { i32, i8**, %struct.nn_iovec*, i8* }

@NN_MSG = common dso_local global i8* null, align 8
@EBADF = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nn_recv: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nn_recv: wanted %d, but got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nn_send: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nn_iovec, align 8
  %11 = alloca %struct.nn_msghdr, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %72, %43, %1
  %16 = call i32 @memset(%struct.nn_msghdr* %11, i32 0, i32 32)
  store i8* null, i8** %9, align 8
  %17 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %10, i32 0, i32 0
  store i8** %8, i8*** %17, align 8
  %18 = load i8*, i8** @NN_MSG, align 8
  %19 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %10, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %11, i32 0, i32 2
  store %struct.nn_iovec* %10, %struct.nn_iovec** %20, align 8
  %21 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %11, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %11, i32 0, i32 1
  store i8** %9, i8*** %22, align 8
  %23 = load i8*, i8** @NN_MSG, align 8
  %24 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %11, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @nn_recvmsg(i32 %25, %struct.nn_msghdr* %11, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %15
  %30 = call i64 (...) @nn_errno()
  %31 = load i64, i64* @EBADF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8* null, i8** %2, align 8
  br label %76

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = call i64 (...) @nn_errno()
  %37 = call i8* @nn_strerror(i64 %36)
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %73

39:                                               ; preds = %15
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 4
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @nn_freemsg(i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @nn_freemsg(i8* %49)
  br label %15

51:                                               ; preds = %39
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @memcpy(i32* %5, i8* %52, i32 4)
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @nn_freemsg(i8* %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ntohl(i32 %56)
  %58 = call i32 @poll(i32* null, i32 0, i32 %57)
  %59 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %11, i32 0, i32 2
  store %struct.nn_iovec* null, %struct.nn_iovec** %59, align 8
  %60 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %11, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @nn_sendmsg(i32 %61, %struct.nn_msghdr* %11, i32 0)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %51
  %66 = load i32, i32* @stderr, align 4
  %67 = call i64 (...) @nn_errno()
  %68 = call i8* @nn_strerror(i64 %67)
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @nn_freemsg(i8* %70)
  br label %72

72:                                               ; preds = %65, %51
  br label %15

73:                                               ; preds = %34
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @nn_close(i32 %74)
  store i8* null, i8** %2, align 8
  br label %76

76:                                               ; preds = %73, %33
  %77 = load i8*, i8** %2, align 8
  ret i8* %77
}

declare dso_local i32 @memset(%struct.nn_msghdr*, i32, i32) #1

declare dso_local i32 @nn_recvmsg(i32, %struct.nn_msghdr*, i32) #1

declare dso_local i64 @nn_errno(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @nn_strerror(i64) #1

declare dso_local i32 @nn_freemsg(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @poll(i32*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nn_sendmsg(i32, %struct.nn_msghdr*, i32) #1

declare dso_local i32 @nn_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
