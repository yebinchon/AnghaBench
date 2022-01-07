; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x_x509a.c_X509_add1_reject_object.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x_x509a.c_X509_add1_reject_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_add1_reject_object(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32* @OBJ_dup(i32* %8)
  store i32* %9, i32** %7, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_3__* @aux_get(i32* %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %34

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = call i32* (...) @sk_ASN1_OBJECT_new_null()
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = icmp eq i32* %23, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %34

28:                                               ; preds = %22, %17
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @sk_ASN1_OBJECT_push(i32* %31, i32* %32)
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %27, %16
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @ASN1_OBJECT_free(i32* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %28, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32* @OBJ_dup(i32*) #1

declare dso_local %struct.TYPE_3__* @aux_get(i32*) #1

declare dso_local i32* @sk_ASN1_OBJECT_new_null(...) #1

declare dso_local i32 @sk_ASN1_OBJECT_push(i32*, i32*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
