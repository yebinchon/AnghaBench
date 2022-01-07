; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_poll_default_rcv_callback.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_poll_default_rcv_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@POLLIN = common dso_local global i16 0, align 2
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"POLLFD: poll_default_rcv_callback(): recv() failed with %zd.\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"POLLFD: internal error: poll_default_rcv_callback() is discarding %zd bytes received on socket %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll_default_rcv_callback(%struct.TYPE_3__* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca [1025 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i16* %1, i16** %5, align 8
  %8 = load i16, i16* @POLLIN, align 2
  %9 = sext i16 %8 to i32
  %10 = load i16*, i16** %5, align 8
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  %13 = or i32 %12, %9
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %10, align 2
  br label %15

15:                                               ; preds = %47, %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [1025 x i8], [1025 x i8]* %6, i64 0, i64 0
  %20 = load i32, i32* @MSG_DONTWAIT, align 4
  %21 = call i32 @recv(i32 %18, i8* %19, i32 1024, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %15
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EWOULDBLOCK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EAGAIN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %3, align 4
  br label %51

35:                                               ; preds = %28, %24
  br label %46

36:                                               ; preds = %15
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @info(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %36
  br label %46

46:                                               ; preds = %45, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %15, label %50

50:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
