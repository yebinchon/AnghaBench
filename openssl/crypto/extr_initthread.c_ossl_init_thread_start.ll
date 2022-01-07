; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_initthread.c_ossl_init_thread_start.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_initthread.c_ossl_init_thread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i8*, i8*, i32 }

@destructor_key = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@OPENSSL_CTX_THREAD_EVENT_HANDLER_INDEX = common dso_local global i32 0, align 4
@ossl_ctx_thread_stop = common dso_local global i32 0, align 4
@thread_event_ossl_ctx_method = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_init_thread_start(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @destructor_key, i32 0, i32 0), i32** %10, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = call %struct.TYPE_5__** @init_get_thread_local(i32* %11, i32 1, i32 0)
  store %struct.TYPE_5__** %12, %struct.TYPE_5__*** %8, align 8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %14 = icmp eq %struct.TYPE_5__** %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

16:                                               ; preds = %3
  %17 = call %struct.TYPE_5__* @OPENSSL_malloc(i32 32)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %9, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %37

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %36, align 8
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %21, %20, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_5__** @init_get_thread_local(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @OPENSSL_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
