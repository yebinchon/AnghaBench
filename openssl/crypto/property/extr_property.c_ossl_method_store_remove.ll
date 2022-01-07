; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_remove.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_method_store_remove(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %3
  store i32 0, i32* %4, align 4
  br label %70

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @ossl_property_write_lock(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ossl_method_cache_flush(i32* %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_7__* @ossl_method_store_retrieve(i32* %26, i32 %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = icmp eq %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ossl_property_unlock(i32* %32)
  store i32 0, i32* %4, align 4
  br label %70

34:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sk_IMPLEMENTATION_num(i32 %39)
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.TYPE_6__* @sk_IMPLEMENTATION_value(i32 %45, i32 %46)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %10, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @sk_IMPLEMENTATION_delete(i32 %56, i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @ossl_property_unlock(i32* %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = call i32 @impl_free(%struct.TYPE_6__* %61)
  store i32 1, i32* %4, align 4
  br label %70

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %35

67:                                               ; preds = %35
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @ossl_property_unlock(i32* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %53, %31, %19
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ossl_property_write_lock(i32*) #1

declare dso_local i32 @ossl_method_cache_flush(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @ossl_method_store_retrieve(i32*, i32) #1

declare dso_local i32 @ossl_property_unlock(i32*) #1

declare dso_local i32 @sk_IMPLEMENTATION_num(i32) #1

declare dso_local %struct.TYPE_6__* @sk_IMPLEMENTATION_value(i32, i32) #1

declare dso_local i32 @sk_IMPLEMENTATION_delete(i32, i32) #1

declare dso_local i32 @impl_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
