; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_process_sigalgs.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_process_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__**, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@SSL_PKEY_NUM = common dso_local global i64 0, align 8
@EVP_PKEY_RSA = common dso_local global i64 0, align 8
@CERT_PKEY_EXPLICIT_SIGN = common dso_local global i32 0, align 4
@CERT_PKEY_SIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_process_sigalgs(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i32 @tls1_set_shared_sigalgs(%struct.TYPE_10__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %26, %17
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @SSL_PKEY_NUM, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %18

29:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %76, %29
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %39, i64 %40
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %6, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = call i64 @SSL_IS_TLS13(%struct.TYPE_10__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EVP_PKEY_RSA, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %76

56:                                               ; preds = %49, %36
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ssl_cert_is_disabled(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @CERT_PKEY_EXPLICIT_SIGN, align 4
  %69 = load i32, i32* @CERT_PKEY_SIGN, align 4
  %70 = or i32 %68, %69
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %63, %56
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i64, i64* %4, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %4, align 8
  br label %30

79:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @tls1_set_shared_sigalgs(%struct.TYPE_10__*) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_10__*) #1

declare dso_local i32 @ssl_cert_is_disabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
