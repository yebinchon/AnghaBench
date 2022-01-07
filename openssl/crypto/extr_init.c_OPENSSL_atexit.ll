; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_init.c_OPENSSL_atexit.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_init.c_OPENSSL_atexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { void (...)*, %struct.TYPE_4__* }
%union.anon = type { i8* }

@DSO_FLAG_NO_UNLOAD_ON_FREE = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"atexit: obtained DSO reference? %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"No!\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Yes.\00", align 1
@CRYPTO_F_OPENSSL_ATEXIT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@stop_handlers = common dso_local global %struct.TYPE_4__* null, align 8
@GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = common dso_local global i32 0, align 4
@GET_MODULE_HANDLE_EX_FLAG_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OPENSSL_atexit(void ()* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca void ()*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %union.anon, align 8
  %6 = alloca i32*, align 8
  store void ()* %0, void ()** %3, align 8
  %7 = load void ()*, void ()** %3, align 8
  %8 = bitcast %union.anon* %5 to void ()**
  store void ()* %7, void ()** %8, align 8
  store i32* null, i32** %6, align 8
  %9 = call i32 (...) @ERR_set_mark()
  %10 = bitcast %union.anon* %5 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @DSO_FLAG_NO_UNLOAD_ON_FREE, align 4
  %13 = call i32* @DSO_dsobyaddr(i8* %11, i32 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32, i32* @INIT, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @OSSL_TRACE1(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @DSO_free(i32* %20)
  %22 = call i32 (...) @ERR_pop_to_mark()
  %23 = call %struct.TYPE_4__* @OPENSSL_malloc(i32 16)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %4, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @CRYPTO_F_OPENSSL_ATEXIT, align 4
  %27 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %28 = call i32 @CRYPTOerr(i32 %26, i32 %27)
  store i32 0, i32* %2, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load void ()*, void ()** %3, align 8
  %31 = bitcast void ()* %30 to void (...)*
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store void (...)* %31, void (...)** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stop_handlers, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** @stop_handlers, align 8
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %29, %25
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @ERR_set_mark(...) #1

declare dso_local i32* @DSO_dsobyaddr(i8*, i32) #1

declare dso_local i32 @OSSL_TRACE1(i32, i8*, i8*) #1

declare dso_local i32 @DSO_free(i32*) #1

declare dso_local i32 @ERR_pop_to_mark(...) #1

declare dso_local %struct.TYPE_4__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
