; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dso/extr_dso_lib.c_DSO_new_method.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dso/extr_dso_lib.c_DSO_new_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32*, i32* }

@default_DSO_meth = common dso_local global %struct.TYPE_10__* null, align 8
@DSO_F_DSO_NEW_METHOD = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*)* @DSO_new_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @DSO_new_method(i32* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @default_DSO_meth, align 8
  %6 = icmp eq %struct.TYPE_10__* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call %struct.TYPE_10__* (...) @DSO_METHOD_openssl()
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** @default_DSO_meth, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = call %struct.TYPE_9__* @OPENSSL_zalloc(i32 32)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @DSO_F_DSO_NEW_METHOD, align 4
  %15 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %16 = call i32 @DSOerr(i32 %14, i32 %15)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %75

17:                                               ; preds = %9
  %18 = call i32* (...) @sk_void_new_null()
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i32, i32* @DSO_F_DSO_NEW_METHOD, align 4
  %27 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %28 = call i32 @DSOerr(i32 %26, i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = call i32 @OPENSSL_free(%struct.TYPE_9__* %29)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %75

31:                                               ; preds = %17
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @default_DSO_meth, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %31
  %45 = load i32, i32* @DSO_F_DSO_NEW_METHOD, align 4
  %46 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %47 = call i32 @DSOerr(i32 %45, i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @sk_void_free(i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = call i32 @OPENSSL_free(%struct.TYPE_9__* %52)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %75

54:                                               ; preds = %31
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %58, align 8
  %60 = icmp ne i32 (%struct.TYPE_9__*)* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = call i32 %66(%struct.TYPE_9__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = call i32 @DSO_free(%struct.TYPE_9__* %71)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %73

73:                                               ; preds = %70, %61, %54
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %2, align 8
  br label %75

75:                                               ; preds = %73, %44, %25, %13
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %76
}

declare dso_local %struct.TYPE_10__* @DSO_METHOD_openssl(...) #1

declare dso_local %struct.TYPE_9__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @DSOerr(i32, i32) #1

declare dso_local i32* @sk_void_new_null(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_9__*) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @sk_void_free(i32*) #1

declare dso_local i32 @DSO_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
