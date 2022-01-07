; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_trs.c_X509_check_trust.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_trs.c_X509_check_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*, i32)* }

@X509_TRUST_DEFAULT = common dso_local global i32 0, align 4
@NID_anyExtendedKeyUsage = common dso_local global i32 0, align 4
@X509_TRUST_DO_SS_COMPAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_check_trust(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @X509_TRUST_DEFAULT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* @NID_anyExtendedKeyUsage, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @X509_TRUST_DO_SS_COMPAT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @obj_trust(i32 %14, i32* %15, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @X509_TRUST_get_by_id(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @default_trust(i32 %26, i32* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %40

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.TYPE_4__* @X509_TRUST_get0(i32 %31)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %8, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_4__*, i32*, i32)*, i32 (%struct.TYPE_4__*, i32*, i32)** %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 %35(%struct.TYPE_4__* %36, i32* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %30, %25, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @obj_trust(i32, i32*, i32) #1

declare dso_local i32 @X509_TRUST_get_by_id(i32) #1

declare dso_local i32 @default_trust(i32, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @X509_TRUST_get0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
