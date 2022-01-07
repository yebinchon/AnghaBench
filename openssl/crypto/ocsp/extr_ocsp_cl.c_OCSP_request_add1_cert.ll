; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_cl.c_OCSP_request_add1_cert.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_cl.c_OCSP_request_add1_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_request_add1_cert(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call %struct.TYPE_5__* (...) @OCSP_SIGNATURE_new()
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %14, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %48

22:                                               ; preds = %15
  %23 = load i32*, i32** %5, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %48

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = call i32* (...) @sk_X509_new_null()
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = icmp eq i32* %32, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %48

37:                                               ; preds = %31, %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @sk_X509_push(i32* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @X509_up_ref(i32* %46)
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %44, %36, %25, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_5__* @OCSP_SIGNATURE_new(...) #1

declare dso_local i32* @sk_X509_new_null(...) #1

declare dso_local i32 @sk_X509_push(i32*, i32*) #1

declare dso_local i32 @X509_up_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
