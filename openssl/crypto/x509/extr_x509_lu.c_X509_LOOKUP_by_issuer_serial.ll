; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_lu.c_X509_LOOKUP_by_issuer_serial.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_lu.c_X509_LOOKUP_by_issuer_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_LOOKUP_by_issuer_serial(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*)**
  %22 = load i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*)** %21, align 8
  %23 = icmp eq i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*)* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %5
  store i32 0, i32* %6, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*)**
  %31 = load i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*)** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 %31(%struct.TYPE_6__* %32, i32 %33, i32* %34, i32* %35, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %25, %24
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
