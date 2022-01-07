; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_recvbuf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_recvbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PqRecvPointer = common dso_local global i64 0, align 8
@PqRecvLength = common dso_local global i64 0, align 8
@PqRecvBuffer = common dso_local global i64 0, align 8
@MyProcPort = common dso_local global i32 0, align 4
@PQ_RECV_BUFFER_SIZE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@COMMERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not receive data from client: %m\00", align 1
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pq_recvbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pq_recvbuf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @PqRecvPointer, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %0
  %6 = load i64, i64* @PqRecvLength, align 8
  %7 = load i64, i64* @PqRecvPointer, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i64, i64* @PqRecvBuffer, align 8
  %11 = load i64, i64* @PqRecvBuffer, align 8
  %12 = load i64, i64* @PqRecvPointer, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* @PqRecvLength, align 8
  %15 = load i64, i64* @PqRecvPointer, align 8
  %16 = sub nsw i64 %14, %15
  %17 = call i32 @memmove(i64 %10, i64 %13, i64 %16)
  %18 = load i64, i64* @PqRecvPointer, align 8
  %19 = load i64, i64* @PqRecvLength, align 8
  %20 = sub nsw i64 %19, %18
  store i64 %20, i64* @PqRecvLength, align 8
  store i64 0, i64* @PqRecvPointer, align 8
  br label %22

21:                                               ; preds = %5
  store i64 0, i64* @PqRecvPointer, align 8
  store i64 0, i64* @PqRecvLength, align 8
  br label %22

22:                                               ; preds = %21, %9
  br label %23

23:                                               ; preds = %22, %0
  %24 = call i32 @socket_set_nonblocking(i32 0)
  br label %25

25:                                               ; preds = %40, %23
  %26 = load i32, i32* @MyProcPort, align 4
  %27 = load i64, i64* @PqRecvBuffer, align 8
  %28 = load i64, i64* @PqRecvLength, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @PQ_RECV_BUFFER_SIZE, align 8
  %31 = load i64, i64* @PqRecvLength, align 8
  %32 = sub nsw i64 %30, %31
  %33 = call i32 @secure_read(i32 %26, i64 %29, i64 %32)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %25
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINTR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %25

41:                                               ; preds = %36
  %42 = load i32, i32* @COMMERROR, align 4
  %43 = call i32 (...) @errcode_for_socket_access()
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %42, i32 %44)
  %46 = load i32, i32* @EOF, align 4
  store i32 %46, i32* %1, align 4
  br label %57

47:                                               ; preds = %25
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @EOF, align 4
  store i32 %51, i32* %1, align 4
  br label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @PqRecvLength, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* @PqRecvLength, align 8
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %52, %50, %41
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @socket_set_nonblocking(i32) #1

declare dso_local i32 @secure_read(i32, i64, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_socket_access(...) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
