; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_socket.c_TranslateSocketError.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_socket.c_TranslateSocketError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOTSOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unrecognized win32 socket error code: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TranslateSocketError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TranslateSocketError() #0 {
  %1 = call i32 (...) @WSAGetLastError()
  switch i32 %1, label %44 [
    i32 147, label %2
    i32 128, label %2
    i32 145, label %2
    i32 146, label %2
    i32 154, label %2
    i32 149, label %4
    i32 152, label %6
    i32 144, label %8
    i32 142, label %10
    i32 158, label %12
    i32 143, label %14
    i32 138, label %16
    i32 134, label %18
    i32 133, label %18
    i32 131, label %18
    i32 157, label %20
    i32 156, label %22
    i32 155, label %24
    i32 148, label %26
    i32 136, label %28
    i32 135, label %30
    i32 130, label %32
    i32 161, label %34
    i32 160, label %36
    i32 159, label %38
    i32 150, label %40
    i32 151, label %40
    i32 129, label %40
    i32 141, label %40
    i32 139, label %40
    i32 140, label %40
    i32 137, label %42
    i32 132, label %42
    i32 153, label %42
  ]

2:                                                ; preds = %0, %0, %0, %0, %0
  %3 = load i32, i32* @EINVAL, align 4
  store i32 %3, i32* @errno, align 4
  br label %50

4:                                                ; preds = %0
  %5 = load i32, i32* @EINPROGRESS, align 4
  store i32 %5, i32* @errno, align 4
  br label %50

6:                                                ; preds = %0
  %7 = load i32, i32* @EFAULT, align 4
  store i32 %7, i32* @errno, align 4
  br label %50

8:                                                ; preds = %0
  %9 = load i32, i32* @EISCONN, align 4
  store i32 %9, i32* @errno, align 4
  br label %50

10:                                               ; preds = %0
  %11 = load i32, i32* @EMSGSIZE, align 4
  store i32 %11, i32* @errno, align 4
  br label %50

12:                                               ; preds = %0
  %13 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %13, i32* @errno, align 4
  br label %50

14:                                               ; preds = %0
  %15 = load i32, i32* @EMFILE, align 4
  store i32 %15, i32* @errno, align 4
  br label %50

16:                                               ; preds = %0
  %17 = load i32, i32* @ENOBUFS, align 4
  store i32 %17, i32* @errno, align 4
  br label %50

18:                                               ; preds = %0, %0, %0
  %19 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %19, i32* @errno, align 4
  br label %50

20:                                               ; preds = %0
  %21 = load i32, i32* @ECONNABORTED, align 4
  store i32 %21, i32* @errno, align 4
  br label %50

22:                                               ; preds = %0
  %23 = load i32, i32* @ECONNREFUSED, align 4
  store i32 %23, i32* @errno, align 4
  br label %50

24:                                               ; preds = %0
  %25 = load i32, i32* @ECONNRESET, align 4
  store i32 %25, i32* @errno, align 4
  br label %50

26:                                               ; preds = %0
  %27 = load i32, i32* @EINTR, align 4
  store i32 %27, i32* @errno, align 4
  br label %50

28:                                               ; preds = %0
  %29 = load i32, i32* @ENOTSOCK, align 4
  store i32 %29, i32* @errno, align 4
  br label %50

30:                                               ; preds = %0
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %31, i32* @errno, align 4
  br label %50

32:                                               ; preds = %0
  %33 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %33, i32* @errno, align 4
  br label %50

34:                                               ; preds = %0
  %35 = load i32, i32* @EACCES, align 4
  store i32 %35, i32* @errno, align 4
  br label %50

36:                                               ; preds = %0
  %37 = load i32, i32* @EADDRINUSE, align 4
  store i32 %37, i32* @errno, align 4
  br label %50

38:                                               ; preds = %0
  %39 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %39, i32* @errno, align 4
  br label %50

40:                                               ; preds = %0, %0, %0, %0, %0, %0
  %41 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %41, i32* @errno, align 4
  br label %50

42:                                               ; preds = %0, %0, %0
  %43 = load i32, i32* @ENOTCONN, align 4
  store i32 %43, i32* @errno, align 4
  br label %50

44:                                               ; preds = %0
  %45 = load i32, i32* @NOTICE, align 4
  %46 = call i32 (...) @WSAGetLastError()
  %47 = call i32 @errmsg_internal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = call i32 @ereport(i32 %45, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* @errno, align 4
  br label %50

50:                                               ; preds = %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4, %2
  ret void
}

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
