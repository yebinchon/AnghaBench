; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_fake.c_fgetcSocket.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_fake.c_fgetcSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fgetcSocket.index = internal global i32 0, align 4
@fgetcSocket.total = internal global i32 0, align 4
@fgetcSocket.buffer = internal global [4096 x i8] zeroinitializer, align 16
@SOCKET_ERROR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetcSocket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @fgetcSocket.index, align 4
  %5 = load i32, i32* @fgetcSocket.total, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  store i32 0, i32* @fgetcSocket.index, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @recv(i32 %8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @fgetcSocket.buffer, i64 0, i64 0), i32 4096, i32 0)
  store i32 %9, i32* @fgetcSocket.total, align 4
  %10 = load i32, i32* @fgetcSocket.total, align 4
  %11 = load i32, i32* @SOCKET_ERROR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  store i32 0, i32* @fgetcSocket.total, align 4
  %14 = load i32, i32* @ERROR, align 4
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %7
  %16 = load i32, i32* @fgetcSocket.total, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @EOF, align 4
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* @fgetcSocket.index, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @fgetcSocket.index, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* @fgetcSocket.buffer, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %18, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
