; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_trace.c_OSSL_trace_end.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_trace.c_OSSL_trace_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@trace_channels = common dso_local global %struct.TYPE_2__* null, align 8
@current_channel = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OSSL_TRACE_CTRL_END = common dso_local global i32 0, align 4
@trace_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OSSL_trace_end(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ossl_trace_get_category(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %58

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** @current_channel, align 8
  %19 = icmp eq i32* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @ossl_assert(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @BIO_flush(i32* %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %55 [
    i32 128, label %32
    i32 129, label %42
  ]

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @BIO_puts(i32* %36, i8* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @BIO_puts(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %32
  br label %55

42:                                               ; preds = %23
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @OSSL_TRACE_CTRL_END, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %51

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strlen(i8* %49)
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ 0, %47 ], [ %50, %48 ]
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @BIO_ctrl(i32* %43, i32 %44, i32 %52, i8* %53)
  br label %55

55:                                               ; preds = %23, %51, %41
  store i32* null, i32** @current_channel, align 8
  %56 = load i32, i32* @trace_lock, align 4
  %57 = call i32 @CRYPTO_THREAD_unlock(i32 %56)
  br label %58

58:                                               ; preds = %55, %16, %2
  ret void
}

declare dso_local i32 @ossl_trace_get_category(i32) #1

declare dso_local i64 @ossl_assert(i32) #1

declare dso_local i32 @BIO_flush(i32*) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @BIO_ctrl(i32*, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
