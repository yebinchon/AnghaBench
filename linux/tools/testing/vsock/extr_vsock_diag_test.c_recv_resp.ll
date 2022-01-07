; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_recv_resp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_recv_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_nl = type { i32 }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i32, i32, %struct.iovec*, %struct.sockaddr_nl* }

@AF_NETLINK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"recvmsg\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @recv_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @recv_resp(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_nl, align 4
  %8 = alloca %struct.iovec, align 8
  %9 = alloca %struct.msghdr, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %7, i32 0, i32 0
  %12 = load i32, i32* @AF_NETLINK, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 2
  store %struct.iovec* %8, %struct.iovec** %19, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 3
  store %struct.sockaddr_nl* %7, %struct.sockaddr_nl** %20, align 8
  br label %21

21:                                               ; preds = %31, %3
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @recvmsg(i32 %22, %struct.msghdr* %9, i32 0)
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EINTR, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %21, label %33

33:                                               ; preds = %31
  %34 = load i64, i64* %10, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 @exit(i32 %38) #3
  unreachable

40:                                               ; preds = %33
  %41 = load i64, i64* %10, align 8
  ret i64 %41
}

declare dso_local i64 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @perror(i8*) #1

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
