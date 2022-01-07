; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_ftp.c_dataconn.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_ftp.c_dataconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@passivemode = common dso_local global i64 0, align 8
@data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ftp: accept\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error closing socket(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dataconn(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 4, i32* %6, align 4
  %8 = load i64, i64* @passivemode, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @data, align 4
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* @data, align 4
  %14 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %15 = call i32 @accept(i32 %13, %struct.sockaddr* %14, i32* %6)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @data, align 4
  %21 = call i64 @closesocket(i32 %20)
  store i32 -1, i32* @data, align 4
  store i32 0, i32* %2, align 4
  br label %36

22:                                               ; preds = %12
  %23 = load i32, i32* @data, align 4
  %24 = call i64 @closesocket(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = call i32 (...) @WSAGetLastError()
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @stdout, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @stdout, align 4
  %32 = call i64 @fflush(i32 %31)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* @data, align 4
  %35 = load i32, i32* @data, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %18, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @closesocket(i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i64 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
