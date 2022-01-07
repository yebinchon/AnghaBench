; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_cache_get.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_method_store_cache_get(i32* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %55

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @ossl_property_read_lock(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.TYPE_7__* @ossl_method_store_retrieve(i32* %22, i32 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @ossl_property_unlock(i32* %28)
  store i32 0, i32* %5, align 4
  br label %55

30:                                               ; preds = %19
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  br label %36

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8* [ %34, %33 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %35 ]
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_6__* @lh_QUERY_retrieve(i32 %41, %struct.TYPE_6__* %11)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %12, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = icmp eq %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ossl_property_unlock(i32* %46)
  store i32 0, i32* %5, align 4
  br label %55

48:                                               ; preds = %36
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %9, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @ossl_property_unlock(i32* %53)
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %48, %45, %27, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @ossl_property_read_lock(i32*) #1

declare dso_local %struct.TYPE_7__* @ossl_method_store_retrieve(i32*, i32) #1

declare dso_local i32 @ossl_property_unlock(i32*) #1

declare dso_local %struct.TYPE_6__* @lh_QUERY_retrieve(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
