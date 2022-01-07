; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpc_generic.c___rpc_sockisbound.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpc_generic.c___rpc_sockisbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%union.anon = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { i32*, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_un = type { i32*, i32, i32 }

@SOCKET_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_sockisbound(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca %union.anon, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 4, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = bitcast %struct.sockaddr_storage* %4 to i8*
  %9 = bitcast i8* %8 to %struct.sockaddr*
  %10 = call i64 @getsockname(i32 %7, %struct.sockaddr* %9, i32* %6)
  %11 = load i64, i64* @SOCKET_ERROR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %36 [
    i32 130, label %17
    i32 128, label %26
  ]

17:                                               ; preds = %14
  %18 = bitcast %union.anon* %5 to %struct.sockaddr_in*
  %19 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr_un*
  %20 = call i32 @memcpy(%struct.sockaddr_un* %19, %struct.sockaddr_storage* %4, i32 16)
  %21 = bitcast %union.anon* %5 to %struct.sockaddr_in*
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %14
  %27 = bitcast %union.anon* %5 to %struct.sockaddr_un*
  %28 = call i32 @memcpy(%struct.sockaddr_un* %27, %struct.sockaddr_storage* %4, i32 16)
  %29 = bitcast %union.anon* %5 to %struct.sockaddr_un*
  %30 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %26, %17, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @memcpy(%struct.sockaddr_un*, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
