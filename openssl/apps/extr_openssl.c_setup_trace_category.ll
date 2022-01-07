; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_openssl.c_setup_trace_category.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_openssl.c_setup_trace_category.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@FORMAT_TEXT = common dso_local global i32 0, align 4
@internal_trace_cb = common dso_local global i32* null, align 8
@trace_data_stack = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
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
  br label %43

9:                                                ; preds = %1
  %10 = call i32 (...) @apps_bf_prefix()
  %11 = call i32 @BIO_new(i32 %10)
  %12 = load i32, i32* @FORMAT_TEXT, align 4
  %13 = call i32 @dup_bio_err(i32 %12)
  %14 = call i32* @BIO_push(i32 %11, i32 %13)
  store i32* %14, i32** %3, align 8
  %15 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 8)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %9
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = icmp eq i32* %19, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = load i32*, i32** @internal_trace_cb, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = call i64 @OSSL_trace_set_callback(i32 %24, i32* %25, %struct.TYPE_5__* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @trace_data_stack, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = call i64 @sk_tracedata_push(i32 %30, %struct.TYPE_5__* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29, %23, %18, %9
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i8* @OSSL_trace_get_category_name(i32 %36)
  %38 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @OSSL_trace_set_callback(i32 %39, i32* null, %struct.TYPE_5__* null)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @BIO_free_all(i32* %41)
  br label %43

43:                                               ; preds = %8, %34, %29
  ret void
}

declare dso_local i64 @OSSL_trace_enabled(i32) #1

declare dso_local i32* @BIO_push(i32, i32) #1

declare dso_local i32 @BIO_new(i32) #1

declare dso_local i32 @apps_bf_prefix(...) #1

declare dso_local i32 @dup_bio_err(i32) #1

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
