; ModuleID = '/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_OSSL_CRMF_MSG_push0_regCtrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_OSSL_CRMF_MSG_push0_regCtrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@CRMF_F_OSSL_CRMF_MSG_PUSH0_REGCTRL = common dso_local global i32 0, align 4
@CRMF_R_NULL_ARGUMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @OSSL_CRMF_MSG_push0_regCtrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OSSL_CRMF_MSG_push0_regCtrl(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %9, %2
  %18 = load i32, i32* @CRMF_F_OSSL_CRMF_MSG_PUSH0_REGCTRL, align 4
  %19 = load i32, i32* @CRMF_R_NULL_ARGUMENT, align 4
  %20 = call i32 @CRMFerr(i32 %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %68

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = call i32* (...) @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null()
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32* %29, i32** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %53

41:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push(i32* %47, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %53

52:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %68

53:                                               ; preds = %51, %40
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %56, %53
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %52, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @CRMFerr(i32, i32) #1

declare dso_local i32* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null(...) #1

declare dso_local i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push(i32*, i32*) #1

declare dso_local i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
