; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_fake.c_fputcSocket.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_fake.c_fputcSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKET_ERROR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"fputcSocket: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fputcSocket(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %8 = load i8, i8* %5, align 1
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %8, i8* %9, align 1
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %10, align 1
  %11 = load i64, i64* @SOCKET_ERROR, align 8
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %14 = call i64 @send(i32 %12, i8* %13, i32 1, i32 0)
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = call i32 (...) @WSAGetLastError()
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @stdout, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %3, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
