; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_be_tls_read.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_be_tls_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i64 0, align 8
@COMMERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SSL error: %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unrecognized SSL error code: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @be_tls_read(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* @errno, align 8
  %12 = call i32 (...) @ERR_clear_error()
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @SSL_read(i32 %15, i8* %16, i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @SSL_get_error(i32 %21, i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 133
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %4
  %30 = call i64 (...) @ERR_get_error()
  br label %32

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i64 [ %30, %29 ], [ 0, %31 ]
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %60 [
    i32 133, label %35
    i32 130, label %36
    i32 129, label %40
    i32 131, label %44
    i32 132, label %50
    i32 128, label %59
  ]

35:                                               ; preds = %32
  br label %68

36:                                               ; preds = %32
  %37 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* @EWOULDBLOCK, align 8
  store i64 %39, i64* @errno, align 8
  store i64 -1, i64* %9, align 8
  br label %68

40:                                               ; preds = %32
  %41 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i64, i64* @EWOULDBLOCK, align 8
  store i64 %43, i64* @errno, align 8
  store i64 -1, i64* %9, align 8
  br label %68

44:                                               ; preds = %32
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @ECONNRESET, align 8
  store i64 %48, i64* @errno, align 8
  store i64 -1, i64* %9, align 8
  br label %49

49:                                               ; preds = %47, %44
  br label %68

50:                                               ; preds = %32
  %51 = load i32, i32* @COMMERROR, align 4
  %52 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %53 = call i32 @errcode(i32 %52)
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @SSLerrmessage(i64 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = call i32 @ereport(i32 %51, i32 %56)
  %58 = load i64, i64* @ECONNRESET, align 8
  store i64 %58, i64* @errno, align 8
  store i64 -1, i64* %9, align 8
  br label %68

59:                                               ; preds = %32
  store i64 0, i64* %9, align 8
  br label %68

60:                                               ; preds = %32
  %61 = load i32, i32* @COMMERROR, align 4
  %62 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = call i32 @ereport(i32 %61, i32 %65)
  %67 = load i64, i64* @ECONNRESET, align 8
  store i64 %67, i64* @errno, align 8
  store i64 -1, i64* %9, align 8
  br label %68

68:                                               ; preds = %60, %59, %50, %49, %40, %36, %35
  %69 = load i64, i64* %9, align 8
  ret i64 %69
}

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i64 @SSL_read(i32, i8*, i64) #1

declare dso_local i32 @SSL_get_error(i32, i64) #1

declare dso_local i64 @ERR_get_error(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @SSLerrmessage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
