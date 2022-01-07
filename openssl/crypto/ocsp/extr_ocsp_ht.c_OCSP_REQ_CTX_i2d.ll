; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ht.c_OCSP_REQ_CTX_i2d.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ht.c_OCSP_REQ_CTX_i2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@OCSP_REQ_CTX_i2d.req_hdr = internal constant [63 x i8] c"Content-Type: application/ocsp-request\0D\0AContent-Length: %d\0D\0A\0D\0A\00", align 16
@OHS_ASN1_WRITE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_REQ_CTX_i2d(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @ASN1_item_i2d(i32* %9, i32* null, i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @BIO_printf(i32 %14, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @OCSP_REQ_CTX_i2d.req_hdr, i64 0, i64 0), i32 %15)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @ASN1_item_i2d_bio(i32* %20, i32 %23, i32* %24)
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @OHS_ASN1_WRITE_INIT, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %27, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @ASN1_item_i2d(i32*, i32*, i32*) #1

declare dso_local i64 @BIO_printf(i32, i8*, i32) #1

declare dso_local i64 @ASN1_item_i2d_bio(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
