; ModuleID = '/home/carl/AnghaBench/php-src/main/streams/extr_xp_socket.c_sock_sendto.c'
source_filename = "/home/carl/AnghaBench/php-src/main/streams/extr_xp_socket.c_sock_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@SOCK_CONN_ERR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i64, i32, %struct.sockaddr*, i64)* @sock_sendto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_sendto(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %16 = icmp ne %struct.sockaddr* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %6
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @XP_SOCK_BUF_SIZE(i64 %22)
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @XP_SOCK_BUF_SIZE(i64 %26)
  %28 = call i32 @sendto(i32 %20, i8* %21, i32 %23, i32 %24, %struct.sockaddr* %25, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @SOCK_CONN_ERR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %14, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ -1, %32 ], [ %34, %33 ]
  store i32 %36, i32* %7, align 4
  br label %52

37:                                               ; preds = %6
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @send(i32 %40, i8* %41, i64 %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* @SOCK_CONN_ERR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %14, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ -1, %47 ], [ %49, %48 ]
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %35
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @XP_SOCK_BUF_SIZE(i64) #1

declare dso_local i32 @send(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
