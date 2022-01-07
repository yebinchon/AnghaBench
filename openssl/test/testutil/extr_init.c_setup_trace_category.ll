; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_init.c_setup_trace_category.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_init.c_setup_trace_category.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@stderr = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@BIO_FP_TEXT = common dso_local global i32 0, align 4
@internal_trace_cb = common dso_local global i32* null, align 8
@trace_data_stack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"warning: unable to setup trace callback for category '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setup_trace_category to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_trace_category(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @OSSL_trace_enabled(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %46

9:                                                ; preds = %1
  %10 = call i32 (...) @apps_bf_prefix()
  %11 = call i32 @BIO_new(i32 %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* @BIO_NOCLOSE, align 4
  %14 = load i32, i32* @BIO_FP_TEXT, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @BIO_new_fp(i32 %12, i32 %15)
  %17 = call i32* @BIO_push(i32 %11, i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 8)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %4, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %9
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = icmp eq i32* %22, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = load i32*, i32** @internal_trace_cb, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = call i64 @OSSL_trace_set_callback(i32 %27, i32* %28, %struct.TYPE_5__* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @trace_data_stack, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = call i64 @sk_tracedata_push(i32 %33, %struct.TYPE_5__* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32, %26, %21, %9
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i8* @OSSL_trace_get_category_name(i32 %39)
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @OSSL_trace_set_callback(i32 %42, i32* null, %struct.TYPE_5__* null)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @BIO_free_all(i32* %44)
  br label %46

46:                                               ; preds = %8, %37, %32
  ret void
}

declare dso_local i64 @OSSL_trace_enabled(i32) #1

declare dso_local i32* @BIO_push(i32, i32) #1

declare dso_local i32 @BIO_new(i32) #1

declare dso_local i32 @apps_bf_prefix(...) #1

declare dso_local i32 @BIO_new_fp(i32, i32) #1

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i64 @OSSL_trace_set_callback(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @sk_tracedata_push(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @OSSL_trace_get_category_name(i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
