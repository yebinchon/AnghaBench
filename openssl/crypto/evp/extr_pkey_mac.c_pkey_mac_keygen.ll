; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_keygen.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_keygen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @pkey_mac_keygen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_mac_keygen(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = call %struct.TYPE_11__* @EVP_PKEY_CTX_get_data(%struct.TYPE_12__* %10)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %62 [
    i32 128, label %20
    i32 129, label %41
  ]

20:                                               ; preds = %2
  store i32* null, i32** %8, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %64

28:                                               ; preds = %20
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = call i32* @ASN1_OCTET_STRING_dup(%struct.TYPE_13__* %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @EVP_PKEY_assign(i32* %37, i32 %38, i32* %39)
  br label %63

41:                                               ; preds = %2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @EVP_MAC_CTX_dup(i32 %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %64

49:                                               ; preds = %41
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @EVP_MAC_CTX_mac(i32 %52)
  %54 = call i32 @EVP_MAC_up_ref(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %64

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @EVP_PKEY_assign(i32* %58, i32 %59, i32* %60)
  br label %63

62:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

63:                                               ; preds = %57, %36
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %56, %48, %35, %27
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_11__* @EVP_PKEY_CTX_get_data(%struct.TYPE_12__*) #1

declare dso_local i32* @ASN1_OCTET_STRING_dup(%struct.TYPE_13__*) #1

declare dso_local i32 @EVP_PKEY_assign(i32*, i32, i32*) #1

declare dso_local i32* @EVP_MAC_CTX_dup(i32) #1

declare dso_local i32 @EVP_MAC_up_ref(i32) #1

declare dso_local i32 @EVP_MAC_CTX_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
