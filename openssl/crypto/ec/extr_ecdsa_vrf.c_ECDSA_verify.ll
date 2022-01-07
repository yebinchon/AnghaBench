; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_vrf.c_ECDSA_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_vrf.c_ECDSA_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@EC_F_ECDSA_VERIFY = common dso_local global i32 0, align 4
@EC_R_OPERATION_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECDSA_verify(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (i32, i8*, i32, i8*, i32, %struct.TYPE_6__*)**
  %19 = load i32 (i32, i8*, i32, i8*, i32, %struct.TYPE_6__*)*, i32 (i32, i8*, i32, i8*, i32, %struct.TYPE_6__*)** %18, align 8
  %20 = icmp ne i32 (i32, i8*, i32, i8*, i32, %struct.TYPE_6__*)* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %6
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (i32, i8*, i32, i8*, i32, %struct.TYPE_6__*)**
  %27 = load i32 (i32, i8*, i32, i8*, i32, %struct.TYPE_6__*)*, i32 (i32, i8*, i32, i8*, i32, %struct.TYPE_6__*)** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = call i32 %27(i32 %28, i8* %29, i32 %30, i8* %31, i32 %32, %struct.TYPE_6__* %33)
  store i32 %34, i32* %7, align 4
  br label %39

35:                                               ; preds = %6
  %36 = load i32, i32* @EC_F_ECDSA_VERIFY, align 4
  %37 = load i32, i32* @EC_R_OPERATION_NOT_SUPPORTED, align 4
  %38 = call i32 @ECerr(i32 %36, i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %21
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @ECerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
