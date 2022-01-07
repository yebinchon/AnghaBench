; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x_pubkey.c_X509_PUBKEY_set.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x_pubkey.c_X509_PUBKEY_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* }

@X509_F_X509_PUBKEY_SET = common dso_local global i32 0, align 4
@X509_R_PUBLIC_KEY_ENCODE_ERROR = common dso_local global i32 0, align 4
@X509_R_METHOD_NOT_SUPPORTED = common dso_local global i32 0, align 4
@X509_R_UNSUPPORTED_ALGORITHM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_PUBKEY_set(%struct.TYPE_12__** %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %7 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %8 = icmp eq %struct.TYPE_12__** %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

10:                                               ; preds = %2
  %11 = call %struct.TYPE_12__* (...) @X509_PUBKEY_new()
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %64

14:                                               ; preds = %10
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = call i32 %34(%struct.TYPE_12__* %35, %struct.TYPE_13__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @X509_F_X509_PUBKEY_SET, align 4
  %41 = load i32, i32* @X509_R_PUBLIC_KEY_ENCODE_ERROR, align 4
  %42 = call i32 @X509err(i32 %40, i32 %41)
  br label %64

43:                                               ; preds = %29
  br label %48

44:                                               ; preds = %22
  %45 = load i32, i32* @X509_F_X509_PUBKEY_SET, align 4
  %46 = load i32, i32* @X509_R_METHOD_NOT_SUPPORTED, align 4
  %47 = call i32 @X509err(i32 %45, i32 %46)
  br label %64

48:                                               ; preds = %43
  br label %53

49:                                               ; preds = %17, %14
  %50 = load i32, i32* @X509_F_X509_PUBKEY_SET, align 4
  %51 = load i32, i32* @X509_R_UNSUPPORTED_ALGORITHM, align 4
  %52 = call i32 @X509err(i32 %50, i32 %51)
  br label %64

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = call i32 @X509_PUBKEY_free(%struct.TYPE_12__* %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = call i32 @EVP_PKEY_up_ref(%struct.TYPE_13__* %62)
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %49, %44, %39, %13
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = call i32 @X509_PUBKEY_free(%struct.TYPE_12__* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %53, %9
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_12__* @X509_PUBKEY_new(...) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @X509_PUBKEY_free(%struct.TYPE_12__*) #1

declare dso_local i32 @EVP_PKEY_up_ref(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
