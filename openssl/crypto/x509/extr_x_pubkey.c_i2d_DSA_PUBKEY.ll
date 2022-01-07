; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x_pubkey.c_i2d_DSA_PUBKEY.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x_pubkey.c_i2d_DSA_PUBKEY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ASN1_F_I2D_DSA_PUBKEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2d_DSA_PUBKEY(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

11:                                               ; preds = %2
  %12 = call %struct.TYPE_8__* (...) @EVP_PKEY_new()
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @ASN1_F_I2D_DSA_PUBKEY, align 4
  %17 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %18 = call i32 @ASN1err(i32 %16, i32 %17)
  store i32 -1, i32* %3, align 4
  br label %32

19:                                               ; preds = %11
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @EVP_PKEY_assign_DSA(%struct.TYPE_8__* %20, i32* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @i2d_PUBKEY(%struct.TYPE_8__* %23, i8** %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = call i32 @EVP_PKEY_free(%struct.TYPE_8__* %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %19, %15, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_8__* @EVP_PKEY_new(...) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @EVP_PKEY_assign_DSA(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @i2d_PUBKEY(%struct.TYPE_8__*, i8**) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
