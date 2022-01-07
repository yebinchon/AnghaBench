; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/common/extr_ipc.c_ipc_bind.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/common/extr_ipc.c_ipc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_bind(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @unlink(i8* %6)
  %8 = load i32, i32* @AF_UNIX, align 4
  %9 = load i32, i32* @SOCK_SEQPACKET, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 1
  %13 = load i32, i32* @AF_UNIX, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @snprintf(i32 %15, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* %4, align 4
  %19 = bitcast %struct.sockaddr_un* %5 to %struct.sockaddr*
  %20 = call i32 @bind(i32 %18, %struct.sockaddr* %19, i32 8)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @listen(i32 %25, i32 3)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
