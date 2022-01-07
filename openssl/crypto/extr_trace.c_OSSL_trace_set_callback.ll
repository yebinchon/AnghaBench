; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_trace.c_OSSL_trace_set_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_trace.c_OSSL_trace_set_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_data_st = type { i32, i8*, i32* }

@OSSL_TRACE_CATEGORY_NUM = common dso_local global i32 0, align 4
@trace_method = common dso_local global i32 0, align 4
@CALLBACK_CHANNEL = common dso_local global i32 0, align 4
@trace_attach_w_callback_cb = common dso_local global i32 0, align 4
@trace_detach_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_trace_set_callback(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.trace_data_st*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.trace_data_st* null, %struct.trace_data_st** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @OSSL_TRACE_CATEGORY_NUM, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %54

17:                                               ; preds = %12
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = call i32* @BIO_new(i32* @trace_method)
  store i32* %21, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call %struct.trace_data_st* @OPENSSL_zalloc(i32 24)
  store %struct.trace_data_st* %24, %struct.trace_data_st** %9, align 8
  %25 = icmp eq %struct.trace_data_st* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  br label %49

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.trace_data_st*, %struct.trace_data_st** %9, align 8
  %30 = getelementptr inbounds %struct.trace_data_st, %struct.trace_data_st* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.trace_data_st*, %struct.trace_data_st** %9, align 8
  %33 = getelementptr inbounds %struct.trace_data_st, %struct.trace_data_st* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.trace_data_st*, %struct.trace_data_st** %9, align 8
  %36 = getelementptr inbounds %struct.trace_data_st, %struct.trace_data_st* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.trace_data_st*, %struct.trace_data_st** %9, align 8
  %39 = call i32 @BIO_set_data(i32* %37, %struct.trace_data_st* %38)
  br label %40

40:                                               ; preds = %27, %17
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @CALLBACK_CHANNEL, align 4
  %43 = load i32, i32* @trace_attach_w_callback_cb, align 4
  %44 = load i32, i32* @trace_detach_cb, align 4
  %45 = call i32 @set_trace_data(i32 %41, i32 %42, i32** %8, i32* null, i32* null, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %49

48:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %54

49:                                               ; preds = %47, %26
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @BIO_free(i32* %50)
  %52 = load %struct.trace_data_st*, %struct.trace_data_st** %9, align 8
  %53 = call i32 @OPENSSL_free(%struct.trace_data_st* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %48, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @BIO_new(i32*) #1

declare dso_local %struct.trace_data_st* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @BIO_set_data(i32*, %struct.trace_data_st*) #1

declare dso_local i32 @set_trace_data(i32, i32, i32**, i32*, i32*, i32, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @OPENSSL_free(%struct.trace_data_st*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
