; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_lu.c_x509_store_add.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_lu.c_x509_store_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, i32* }

@X509_LU_CRL = common dso_local global i32 0, align 4
@X509_LU_X509 = common dso_local global i32 0, align 4
@X509_LU_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32)* @x509_store_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_store_add(%struct.TYPE_13__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

14:                                               ; preds = %3
  %15 = call %struct.TYPE_14__* (...) @X509_OBJECT_new()
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = icmp eq %struct.TYPE_14__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %79

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* @X509_LU_CRL, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store i32* %27, i32** %30, align 8
  br label %40

31:                                               ; preds = %19
  %32 = load i32, i32* @X509_LU_X509, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  br label %40

40:                                               ; preds = %31, %22
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = call i32 @X509_OBJECT_up_ref_count(%struct.TYPE_14__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @X509_LU_NONE, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = call i32 @X509_OBJECT_free(%struct.TYPE_14__* %48)
  store i32 0, i32* %4, align 4
  br label %79

50:                                               ; preds = %40
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = call i32 @X509_STORE_lock(%struct.TYPE_13__* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %57 = call i64 @X509_OBJECT_retrieve_match(i32 %55, %struct.TYPE_14__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  br label %69

60:                                               ; preds = %50
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = call i32 @sk_X509_OBJECT_push(i32 %63, %struct.TYPE_14__* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %60, %59
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = call i32 @X509_STORE_unlock(%struct.TYPE_13__* %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = call i32 @X509_OBJECT_free(%struct.TYPE_14__* %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %44, %18, %13
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_14__* @X509_OBJECT_new(...) #1

declare dso_local i32 @X509_OBJECT_up_ref_count(%struct.TYPE_14__*) #1

declare dso_local i32 @X509_OBJECT_free(%struct.TYPE_14__*) #1

declare dso_local i32 @X509_STORE_lock(%struct.TYPE_13__*) #1

declare dso_local i64 @X509_OBJECT_retrieve_match(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @sk_X509_OBJECT_push(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @X509_STORE_unlock(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
