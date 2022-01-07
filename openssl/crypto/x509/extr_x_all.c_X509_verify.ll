; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x_all.c_X509_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x_all.c_X509_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@X509_F_X509_VERIFY = common dso_local global i32 0, align 4
@ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM = common dso_local global i32 0, align 4
@NID_sm2 = common dso_local global i32 0, align 4
@X509_CINF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_verify(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = call i64 @X509_ALGOR_cmp(%struct.TYPE_8__* %9, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @OBJ_obj2nid(i32 %20)
  %22 = call i32 @OBJ_find_sigid_algs(i32 %21, i32* %6, i32* %7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @X509_F_X509_VERIFY, align 4
  %26 = load i32, i32* @ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM, align 4
  %27 = call i32 @X509err(i32 %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %49

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NID_sm2, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @x509_verify_sm2(%struct.TYPE_7__* %33, i32* %34, i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %28
  %39 = load i32, i32* @X509_CINF, align 4
  %40 = call i32 @ASN1_ITEM_rptr(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @ASN1_item_verify(i32 %40, %struct.TYPE_8__* %42, i32* %44, %struct.TYPE_9__* %46, i32* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %38, %32, %24, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @X509_ALGOR_cmp(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @OBJ_find_sigid_algs(i32, i32*, i32*) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @x509_verify_sm2(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @ASN1_item_verify(i32, %struct.TYPE_8__*, i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ASN1_ITEM_rptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
