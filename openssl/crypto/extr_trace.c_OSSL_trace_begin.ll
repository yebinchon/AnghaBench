; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_trace.c_OSSL_trace_begin.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_trace.c_OSSL_trace_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32* }

@trace_channels = common dso_local global %struct.TYPE_2__* null, align 8
@trace_lock = common dso_local global i32 0, align 4
@current_channel = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OSSL_TRACE_CTRL_BEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OSSL_trace_begin(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ossl_trace_get_category(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %4, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %60

26:                                               ; preds = %11
  %27 = load i32, i32* @trace_lock, align 4
  %28 = call i32 @CRYPTO_THREAD_write_lock(i32 %27)
  %29 = load i32*, i32** %4, align 8
  store i32* %29, i32** @current_channel, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %59 [
    i32 128, label %36
    i32 129, label %46
  ]

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @BIO_puts(i32* %40, i8* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @BIO_puts(i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %39, %36
  br label %59

46:                                               ; preds = %26
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @OSSL_TRACE_CTRL_BEGIN, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %55

52:                                               ; preds = %46
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strlen(i8* %53)
  br label %55

55:                                               ; preds = %52, %51
  %56 = phi i32 [ 0, %51 ], [ %54, %52 ]
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @BIO_ctrl(i32* %47, i32 %48, i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %26, %55, %45
  br label %60

60:                                               ; preds = %59, %11
  %61 = load i32*, i32** %4, align 8
  store i32* %61, i32** %2, align 8
  br label %62

62:                                               ; preds = %60, %10
  %63 = load i32*, i32** %2, align 8
  ret i32* %63
}

declare dso_local i32 @ossl_trace_get_category(i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @BIO_ctrl(i32*, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
