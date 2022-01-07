; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_CopyStreamPoll.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_CopyStreamPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"invalid socket: %s\00", align 1
@PGINVALID_SOCKET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"select() failed: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @CopyStreamPoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CopyStreamPoll(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @PQsocket(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @PQerrorMessage(i32* %19)
  %21 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %4, align 4
  br label %71

22:                                               ; preds = %3
  %23 = call i32 @FD_ZERO(i32* %9)
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @FD_SET(i32 %24, i32* %9)
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PGINVALID_SOCKET, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @FD_SET(i32 %31, i32* %9)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @Max(i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %30, %22
  %37 = load i64, i64* %6, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store %struct.timeval* null, %struct.timeval** %13, align 8
  br label %48

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = sdiv i64 %41, 1000
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = srem i64 %44, 1000
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  store %struct.timeval* %12, %struct.timeval** %13, align 8
  br label %48

48:                                               ; preds = %40, %39
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  %51 = load %struct.timeval*, %struct.timeval** %13, align 8
  %52 = call i32 @select(i32 %50, i32* %9, i32* null, i32* null, %struct.timeval* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EINTR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %71

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %71

62:                                               ; preds = %48
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @FD_ISSET(i32 %66, i32* %9)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %71

70:                                               ; preds = %65, %62
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %69, %60, %59, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @PQsocket(i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
