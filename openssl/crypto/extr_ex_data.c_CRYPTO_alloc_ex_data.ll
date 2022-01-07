; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_ex_data.c_CRYPTO_alloc_ex_data.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_ex_data.c_CRYPTO_alloc_ex_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 (i8*, i32*, %struct.TYPE_14__*, i32, i32, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_alloc_ex_data(i32 %0, i8* %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_11__* @openssl_ctx_get_ex_data_global(i32 %16)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %13, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %66

21:                                               ; preds = %4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @CRYPTO_get_ex_data(%struct.TYPE_14__* %22, i32 %23)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %66

28:                                               ; preds = %21
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.TYPE_12__* @get_and_lock(i32 %31, i32 %32)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %11, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %35 = icmp eq %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %66

37:                                               ; preds = %28
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.TYPE_13__* @sk_EX_CALLBACK_value(i32 %40, i32 %41)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %10, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CRYPTO_THREAD_unlock(i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32 (i8*, i32*, %struct.TYPE_14__*, i32, i32, i32)*, i32 (i8*, i32*, %struct.TYPE_14__*, i32, i32, i32)** %48, align 8
  %50 = icmp eq i32 (i8*, i32*, %struct.TYPE_14__*, i32, i32, i32)* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %66

52:                                               ; preds = %37
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i32 (i8*, i32*, %struct.TYPE_14__*, i32, i32, i32)*, i32 (i8*, i32*, %struct.TYPE_14__*, i32, i32, i32)** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %55(i8* %56, i32* null, %struct.TYPE_14__* %57, i32 %58, i32 %61, i32 %64)
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %52, %51, %36, %27, %20
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_11__* @openssl_ctx_get_ex_data_global(i32) #1

declare dso_local i8* @CRYPTO_get_ex_data(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_12__* @get_and_lock(i32, i32) #1

declare dso_local %struct.TYPE_13__* @sk_EX_CALLBACK_value(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
