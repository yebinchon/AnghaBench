; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_add_ms_root_certs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_add_ms_root_certs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@msRootCerts = common dso_local global %struct.TYPE_3__* null, align 8
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_STORE_ADD_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"adding root cert %d failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @add_ms_root_certs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ms_root_certs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msRootCerts, align 8
  %8 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %5
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @X509_ASN_ENCODING, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msRootCerts, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msRootCerts, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CERT_STORE_ADD_NEW, align 4
  %24 = call i32 @CertAddEncodedCertificateToStore(i32 %11, i32 %12, i32 %17, i32 %22, i32 %23, i32* null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %10
  %27 = load i64, i64* %3, align 8
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %10
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %5

34:                                               ; preds = %5
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @CertAddEncodedCertificateToStore(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i64, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
