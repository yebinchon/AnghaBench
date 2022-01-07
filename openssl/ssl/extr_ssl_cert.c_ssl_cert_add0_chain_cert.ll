; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_cert.c_ssl_cert_add0_chain_cert.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_cert.c_ssl_cert_add0_chain_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }

@SSL_F_SSL_CERT_ADD0_CHAIN_CERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_cert_add0_chain_cert(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi %struct.TYPE_14__* [ %17, %12 ], [ %23, %18 ]
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %9, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %63

29:                                               ; preds = %24
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @ssl_security_cert(%struct.TYPE_13__* %30, %struct.TYPE_12__* %31, i32* %32, i32 0, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @SSL_F_SSL_CERT_ADD0_CHAIN_CERT, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @SSLerr(i32 %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %63

40:                                               ; preds = %29
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = call i64 (...) @sk_X509_new_null()
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @sk_X509_push(i64 %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54, %49
  store i32 0, i32* %4, align 4
  br label %63

62:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %36, %28
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @ssl_security_cert(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i64 @sk_X509_new_null(...) #1

declare dso_local i32 @sk_X509_push(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
