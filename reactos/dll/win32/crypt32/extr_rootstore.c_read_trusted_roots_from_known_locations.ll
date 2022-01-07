; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_read_trusted_roots_from_known_locations.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_read_trusted_roots_from_known_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@CRYPT_knownLocations = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@CERT_STORE_ADD_NEW = common dso_local global i32 0, align 4
@kSecFormatX509Cert = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @read_trusted_roots_from_known_locations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_trusted_roots_from_known_locations(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %7 = load i32, i32* @X509_ASN_ENCODING, align 4
  %8 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %9 = call i64 @CertOpenStore(i32 %6, i32 %7, i32 0, i32 %8, i32* null)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %32, %12
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = load i32*, i32** @CRYPT_knownLocations, align 8
  %20 = call i64 @ARRAY_SIZE(i32* %19)
  %21 = icmp ult i64 %18, %20
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = load i32*, i32** @CRYPT_knownLocations, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @TRUE, align 8
  %31 = call i64 @import_certs_from_path(i32 %28, i64 %29, i64 %30)
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %14

35:                                               ; preds = %22
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @check_and_store_certs(i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %1
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @CertCloseStore(i64 %40, i32 0)
  ret void
}

declare dso_local i64 @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @import_certs_from_path(i32, i64, i64) #1

declare dso_local i32 @check_and_store_certs(i64, i64) #1

declare dso_local i32 @CertCloseStore(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
