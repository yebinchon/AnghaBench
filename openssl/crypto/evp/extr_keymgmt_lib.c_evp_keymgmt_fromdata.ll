; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_keymgmt_lib.c_evp_keymgmt_fromdata.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_keymgmt_lib.c_evp_keymgmt_fromdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* (i8*, i32*)*, i8* (i8*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @evp_keymgmt_fromdata(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = call i32 @EVP_KEYMGMT_provider(%struct.TYPE_11__* %11)
  %13 = call i8* @ossl_provider_ctx(i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i8* (i8*, i32*)*, i8* (i8*, i32*)** %18, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i8* %19(i8* %20, i32* %21)
  br label %30

23:                                               ; preds = %4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i8* (i8*, i32*)*, i8* (i8*, i32*)** %25, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i8* %26(i8* %27, i32* %28)
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i8* [ %22, %16 ], [ %29, %23 ]
  store i8* %31, i8** %10, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = call i32 @evp_keymgmt_clear_pkey_cache(%struct.TYPE_10__* %32)
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = call i32 @EVP_KEYMGMT_up_ref(%struct.TYPE_11__* %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i8* %45, i8** %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 8
  br label %57

57:                                               ; preds = %36, %30
  %58 = load i8*, i8** %10, align 8
  ret i8* %58
}

declare dso_local i8* @ossl_provider_ctx(i32) #1

declare dso_local i32 @EVP_KEYMGMT_provider(%struct.TYPE_11__*) #1

declare dso_local i32 @evp_keymgmt_clear_pkey_cache(%struct.TYPE_10__*) #1

declare dso_local i32 @EVP_KEYMGMT_up_ref(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
