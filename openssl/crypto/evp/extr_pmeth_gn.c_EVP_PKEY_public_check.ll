; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_gn.c_EVP_PKEY_public_check.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_gn.c_EVP_PKEY_public_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { {}* }

@EVP_F_EVP_PKEY_PUBLIC_CHECK = common dso_local global i32 0, align 4
@EVP_R_NO_KEY_SET = common dso_local global i32 0, align 4
@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_public_check(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = icmp eq %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @EVP_F_EVP_PKEY_PUBLIC_CHECK, align 4
  %12 = load i32, i32* @EVP_R_NO_KEY_SET, align 4
  %13 = call i32 @EVPerr(i32 %11, i32 %12)
  store i32 0, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %18, align 8
  %20 = icmp ne i32 (%struct.TYPE_11__*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = call i32 %26(%struct.TYPE_11__* %27)
  store i32 %28, i32* %2, align 4
  br label %55

29:                                               ; preds = %14
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = icmp eq %struct.TYPE_9__* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.TYPE_11__*)**
  %40 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %39, align 8
  %41 = icmp eq i32 (%struct.TYPE_11__*)* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %34, %29
  %43 = load i32, i32* @EVP_F_EVP_PKEY_PUBLIC_CHECK, align 4
  %44 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %45 = call i32 @EVPerr(i32 %43, i32 %44)
  store i32 -2, i32* %2, align 4
  br label %55

46:                                               ; preds = %34
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = bitcast {}** %50 to i32 (%struct.TYPE_11__*)**
  %52 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = call i32 %52(%struct.TYPE_11__* %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %46, %42, %21, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @EVPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
