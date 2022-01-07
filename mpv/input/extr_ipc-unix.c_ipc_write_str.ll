; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_ipc-unix.c_ipc_write_str.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_ipc-unix.c_ipc_write_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_arg = type { i32, i32 }

@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@ENOTSOCK = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client_arg*, i8*)* @ipc_write_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_write_str(%struct.client_arg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.client_arg* %0, %struct.client_arg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %50, %46, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  %14 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %15 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @MSG_NOSIGNAL, align 4
  %20 = call i64 @send(i32 %16, i8* %17, i64 %18, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %13
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %58

27:                                               ; preds = %23
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EBADF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @ENOTSOCK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %37 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %58

38:                                               ; preds = %31
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EINTR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EAGAIN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  br label %10

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %58

50:                                               ; preds = %13
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8* %56, i8** %5, align 8
  br label %10

57:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %47, %35, %26
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @send(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
