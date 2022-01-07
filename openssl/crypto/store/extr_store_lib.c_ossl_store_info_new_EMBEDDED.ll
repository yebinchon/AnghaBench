; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_store_lib.c_ossl_store_info_new_EMBEDDED.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_store_lib.c_ossl_store_info_new_EMBEDDED.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32* }

@OSSL_STORE_INFO_EMBEDDED = common dso_local global i32 0, align 4
@OSSL_STORE_F_OSSL_STORE_INFO_NEW_EMBEDDED = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ossl_store_info_new_EMBEDDED(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @OSSL_STORE_INFO_EMBEDDED, align 4
  %8 = call %struct.TYPE_9__* @store_info_new(i32 %7, i32* null)
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = icmp eq %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_INFO_NEW_EMBEDDED, align 4
  %13 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %14 = call i32 @OSSL_STOREerr(i32 %12, i32 %13)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %50

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32* %16, i32** %20, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %27

24:                                               ; preds = %15
  %25 = load i8*, i8** %4, align 8
  %26 = call i32* @OPENSSL_strdup(i8* %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32* [ null, %23 ], [ %26, %24 ]
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32* %28, i32** %32, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_INFO_NEW_EMBEDDED, align 4
  %44 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %45 = call i32 @OSSL_STOREerr(i32 %43, i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = call i32 @OSSL_STORE_INFO_free(%struct.TYPE_9__* %46)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %48

48:                                               ; preds = %42, %35, %27
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %3, align 8
  br label %50

50:                                               ; preds = %48, %11
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %51
}

declare dso_local %struct.TYPE_9__* @store_info_new(i32, i32*) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i32* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @OSSL_STORE_INFO_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
