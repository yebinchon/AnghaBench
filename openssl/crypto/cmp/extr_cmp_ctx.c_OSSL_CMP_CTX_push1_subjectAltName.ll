; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_OSSL_CMP_CTX_push1_subjectAltName.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_OSSL_CMP_CTX_push1_subjectAltName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@CMP_R_NULL_ARGUMENT = common dso_local global i32 0, align 4
@CMP_R_MULTIPLE_SAN_SOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_CMP_CTX_push1_subjectAltName(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @CMP_R_NULL_ARGUMENT, align 4
  %14 = call i32 @CMPerr(i32 0, i32 %13)
  store i32 0, i32* %3, align 4
  br label %49

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = call i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.TYPE_4__* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @CMP_R_MULTIPLE_SAN_SOURCES, align 4
  %21 = call i32 @CMPerr(i32 0, i32 %20)
  store i32 0, i32* %3, align 4
  br label %49

22:                                               ; preds = %15
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = call i32* (...) @sk_GENERAL_NAME_new_null()
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = icmp eq i32* %28, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %49

33:                                               ; preds = %27, %22
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @GENERAL_NAME_dup(i32* %34)
  store i32* %35, i32** %6, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %49

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @sk_GENERAL_NAME_push(i32* %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @GENERAL_NAME_free(i32* %46)
  store i32 0, i32* %3, align 4
  br label %49

48:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %37, %32, %19, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @CMPerr(i32, i32) #1

declare dso_local i32 @OSSL_CMP_CTX_reqExtensions_have_SAN(%struct.TYPE_4__*) #1

declare dso_local i32* @sk_GENERAL_NAME_new_null(...) #1

declare dso_local i32* @GENERAL_NAME_dup(i32*) #1

declare dso_local i32 @sk_GENERAL_NAME_push(i32*, i32*) #1

declare dso_local i32 @GENERAL_NAME_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
