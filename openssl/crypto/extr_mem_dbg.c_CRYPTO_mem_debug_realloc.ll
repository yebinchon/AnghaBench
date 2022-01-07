; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_mem_dbg.c_CRYPTO_mem_debug_realloc.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_mem_dbg.c_CRYPTO_mem_debug_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i8* }

@CRYPTO_MEM_CHECK_DISABLE = common dso_local global i32 0, align 4
@mh = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_mem_debug_realloc(i8* %0, i8* %1, i64 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %68 [
    i32 0, label %16
    i32 1, label %17
  ]

16:                                               ; preds = %6
  br label %68

17:                                               ; preds = %6
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %68

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = or i32 128, %27
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @CRYPTO_mem_debug_malloc(i8* %25, i64 %26, i32 %28, i8* %29, i32 %30)
  br label %68

32:                                               ; preds = %21
  %33 = call i32 (...) @mem_check_on()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = load i32, i32* @CRYPTO_MEM_CHECK_DISABLE, align 4
  %37 = call i32 @CRYPTO_mem_ctrl(i32 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @mh, align 4
  %41 = call %struct.TYPE_5__* @lh_MEM_delete(i32 %40, %struct.TYPE_5__* %13)
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %14, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %35
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @OSSL_NELEM(i32 %56)
  %58 = call i32 @backtrace(i32 %53, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @mh, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = call i32 @lh_MEM_insert(i32 %61, %struct.TYPE_5__* %62)
  br label %64

64:                                               ; preds = %44, %35
  %65 = load i32, i32* @CRYPTO_MEM_CHECK_ENABLE, align 4
  %66 = call i32 @CRYPTO_mem_ctrl(i32 %65)
  br label %67

67:                                               ; preds = %64, %32
  br label %68

68:                                               ; preds = %6, %67, %24, %20, %16
  ret void
}

declare dso_local i32 @CRYPTO_mem_debug_malloc(i8*, i64, i32, i8*, i32) #1

declare dso_local i32 @mem_check_on(...) #1

declare dso_local i32 @CRYPTO_mem_ctrl(i32) #1

declare dso_local %struct.TYPE_5__* @lh_MEM_delete(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @backtrace(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

declare dso_local i32 @lh_MEM_insert(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
