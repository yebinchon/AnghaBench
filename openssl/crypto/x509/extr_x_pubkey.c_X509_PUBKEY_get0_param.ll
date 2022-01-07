; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x_pubkey.c_X509_PUBKEY_get0_param.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x_pubkey.c_X509_PUBKEY_get0_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_PUBKEY_get0_param(i32** %0, i8** %1, i32* %2, %struct.TYPE_8__** %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32** %0, i32*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %10, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32**, i32*** %6, align 8
  store i32* %18, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %5
  %21 = load i8**, i8*** %7, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %7, align 8
  store i8* %28, i8** %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %23, %20
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %38 = icmp ne %struct.TYPE_8__** %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %43, align 8
  br label %44

44:                                               ; preds = %39, %36
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
