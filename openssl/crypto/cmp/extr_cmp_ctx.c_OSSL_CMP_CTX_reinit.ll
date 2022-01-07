; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_OSSL_CMP_CTX_reinit.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_OSSL_CMP_CTX_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@CMP_R_NULL_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_CMP_CTX_reinit(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %5 = icmp eq %struct.TYPE_11__* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @CMP_R_NULL_ARGUMENT, align 4
  %8 = call i32 @CMPerr(i32 0, i32 %7)
  store i32 0, i32* %2, align 4
  br label %48

9:                                                ; preds = %1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i32 -1, i32* %13, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i64 @ossl_cmp_ctx_set0_statusString(%struct.TYPE_11__* %14, i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %9
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = call i64 @ossl_cmp_ctx_set0_newCert(%struct.TYPE_11__* %18, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = call i64 @ossl_cmp_ctx_set1_caPubs(%struct.TYPE_11__* %22, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = call i64 @ossl_cmp_ctx_set1_extraCertsIn(%struct.TYPE_11__* %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = call i64 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.TYPE_11__* %30, i32* null)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = call i64 @OSSL_CMP_CTX_set1_transactionID(%struct.TYPE_11__* %34, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = call i64 @OSSL_CMP_CTX_set1_senderNonce(%struct.TYPE_11__* %38, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = call i64 @ossl_cmp_ctx_set1_recipNonce(%struct.TYPE_11__* %42, i32* null)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %41, %37, %33, %29, %25, %21, %17, %9
  %46 = phi i1 [ false, %37 ], [ false, %33 ], [ false, %29 ], [ false, %25 ], [ false, %21 ], [ false, %17 ], [ false, %9 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %6
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @CMPerr(i32, i32) #1

declare dso_local i64 @ossl_cmp_ctx_set0_statusString(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @ossl_cmp_ctx_set0_newCert(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @ossl_cmp_ctx_set1_caPubs(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @ossl_cmp_ctx_set1_extraCertsIn(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @ossl_cmp_ctx_set0_validatedSrvCert(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @OSSL_CMP_CTX_set1_transactionID(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @OSSL_CMP_CTX_set1_senderNonce(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @ossl_cmp_ctx_set1_recipNonce(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
