; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_tls_srp.c_SSL_CTX_SRP_CTX_free.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_tls_srp.c_SSL_CTX_SRP_CTX_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_ctx_st = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SRP_MINIMAL_N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_CTX_SRP_CTX_free(%struct.ssl_ctx_st* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssl_ctx_st*, align 8
  store %struct.ssl_ctx_st* %0, %struct.ssl_ctx_st** %3, align 8
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %5 = icmp eq %struct.ssl_ctx_st* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

7:                                                ; preds = %1
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %9 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @OPENSSL_free(i32 %11)
  %13 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %14 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @OPENSSL_free(i32 %16)
  %18 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %19 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BN_free(i32 %21)
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %24 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BN_free(i32 %26)
  %28 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %29 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BN_free(i32 %31)
  %33 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %34 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BN_free(i32 %36)
  %38 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %39 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @BN_free(i32 %41)
  %43 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %44 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @BN_free(i32 %46)
  %48 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %49 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @BN_free(i32 %51)
  %53 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %54 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @BN_free(i32 %56)
  %58 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %59 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %58, i32 0, i32 0
  %60 = call i32 @memset(%struct.TYPE_2__* %59, i32 0, i32 44)
  %61 = load i32, i32* @SRP_MINIMAL_N, align 4
  %62 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %3, align 8
  %63 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %7, %6
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @OPENSSL_free(i32) #1

declare dso_local i32 @BN_free(i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
