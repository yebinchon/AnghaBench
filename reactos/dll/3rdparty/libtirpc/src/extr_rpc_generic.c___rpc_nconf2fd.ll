; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpc_generic.c___rpc_nconf2fd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpc_generic.c___rpc_nconf2fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32 }
%struct.__rpc_sockinfo = type { i64, i32, i32 }

@INVALID_SOCKET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@SOL_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_nconf2fd(%struct.netconfig* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netconfig*, align 8
  %4 = alloca %struct.__rpc_sockinfo, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.netconfig* %0, %struct.netconfig** %3, align 8
  %7 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %8 = call i32 @__rpc_nconf2sockinfo(%struct.netconfig* %7, %struct.__rpc_sockinfo* %4)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %4, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @socket(i64 %13, i32 %15, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @INVALID_SOCKET, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SOL_IPV6, align 4
  %29 = load i32, i32* @IPV6_V6ONLY, align 4
  %30 = bitcast i32* %6 to i8*
  %31 = call i32 @setsockopt(i32 %27, i32 %28, i32 %29, i8* %30, i32 4)
  br label %32

32:                                               ; preds = %26, %21, %11
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @__rpc_nconf2sockinfo(%struct.netconfig*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
