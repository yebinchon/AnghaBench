; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_internal_flush.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_internal_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@internal_flush.last_reported_send_errno = internal global i32 0, align 4
@PqSendBuffer = common dso_local global i8* null, align 8
@PqSendStart = common dso_local global i32 0, align 4
@PqSendPointer = common dso_local global i32 0, align 4
@MyProcPort = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@COMMERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not send data to client: %m\00", align 1
@ClientConnectionLost = common dso_local global i32 0, align 4
@InterruptPending = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @internal_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_flush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @PqSendBuffer, align 8
  %6 = load i32, i32* @PqSendStart, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  store i8* %8, i8** %2, align 8
  %9 = load i8*, i8** @PqSendBuffer, align 8
  %10 = load i32, i32* @PqSendPointer, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %55, %33, %0
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %13
  %18 = load i32, i32* @MyProcPort, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @secure_write(i32 %18, i8* %19, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %17
  %30 = load i32, i32* @errno, align 4
  %31 = load i32, i32* @EINTR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %13

34:                                               ; preds = %29
  %35 = load i32, i32* @errno, align 4
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @errno, align 4
  %40 = load i32, i32* @EWOULDBLOCK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  store i32 0, i32* %1, align 4
  br label %64

43:                                               ; preds = %38
  %44 = load i32, i32* @errno, align 4
  %45 = load i32, i32* @internal_flush.last_reported_send_errno, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* @internal_flush.last_reported_send_errno, align 4
  %49 = load i32, i32* @COMMERROR, align 4
  %50 = call i32 (...) @errcode_for_socket_access()
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @ereport(i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %47, %43
  store i32 0, i32* @PqSendPointer, align 4
  store i32 0, i32* @PqSendStart, align 4
  store i32 1, i32* @ClientConnectionLost, align 4
  store i32 1, i32* @InterruptPending, align 4
  %54 = load i32, i32* @EOF, align 4
  store i32 %54, i32* %1, align 4
  br label %64

55:                                               ; preds = %17
  store i32 0, i32* @internal_flush.last_reported_send_errno, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i8*, i8** %2, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @PqSendStart, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* @PqSendStart, align 4
  br label %13

63:                                               ; preds = %13
  store i32 0, i32* @PqSendPointer, align 4
  store i32 0, i32* @PqSendStart, align 4
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %63, %53, %42
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @secure_write(i32, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_socket_access(...) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
