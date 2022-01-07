; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vpm.c_X509_VERIFY_PARAM_add0_table.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vpm.c_X509_VERIFY_PARAM_add0_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@param_table = common dso_local global i32* null, align 8
@param_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_VERIFY_PARAM_add0_table(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** @param_table, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @param_cmp, align 4
  %10 = call i32* @sk_X509_VERIFY_PARAM_new(i32 %9)
  store i32* %10, i32** @param_table, align 8
  %11 = load i32*, i32** @param_table, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %35

14:                                               ; preds = %8
  br label %28

15:                                               ; preds = %1
  %16 = load i32*, i32** @param_table, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @sk_X509_VERIFY_PARAM_find(i32* %16, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32*, i32** @param_table, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32* @sk_X509_VERIFY_PARAM_delete(i32* %22, i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @X509_VERIFY_PARAM_free(i32* %25)
  br label %27

27:                                               ; preds = %21, %15
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32*, i32** @param_table, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @sk_X509_VERIFY_PARAM_push(i32* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %35

34:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32* @sk_X509_VERIFY_PARAM_new(i32) #1

declare dso_local i32 @sk_X509_VERIFY_PARAM_find(i32*, i32*) #1

declare dso_local i32* @sk_X509_VERIFY_PARAM_delete(i32*, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_free(i32*) #1

declare dso_local i32 @sk_X509_VERIFY_PARAM_push(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
