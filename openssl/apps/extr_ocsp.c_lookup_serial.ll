; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ocsp.c_lookup_serial.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ocsp.c_lookup_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@DB_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"00\00", align 1
@DB_serial = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.TYPE_3__*, i32*)* @lookup_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @lookup_serial(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  %11 = load i32, i32* @DB_NUMBER, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8*, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %23, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DB_NUMBER, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %14, i64 %21
  store i8* null, i8** %22, align 8
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @ASN1_INTEGER_to_BN(i32* %27, i32* null)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @OPENSSL_assert(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @BN_is_zero(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i8* @OPENSSL_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %7, align 8
  br label %39

36:                                               ; preds = %26
  %37 = load i32*, i32** %6, align 8
  %38 = call i8* @BN_bn2hex(i32* %37)
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %36, %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* @DB_serial, align 8
  %42 = getelementptr inbounds i8*, i8** %14, i64 %41
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @BN_free(i32* %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @DB_serial, align 8
  %49 = call i8** @TXT_DB_get_by_index(i32 %47, i64 %48, i8** %14)
  store i8** %49, i8*** %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @OPENSSL_free(i8* %50)
  %52 = load i8**, i8*** %10, align 8
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  ret i8** %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ASN1_INTEGER_to_BN(i32*, i32*) #2

declare dso_local i32 @OPENSSL_assert(i32*) #2

declare dso_local i64 @BN_is_zero(i32*) #2

declare dso_local i8* @OPENSSL_strdup(i8*) #2

declare dso_local i8* @BN_bn2hex(i32*) #2

declare dso_local i32 @BN_free(i32*) #2

declare dso_local i8** @TXT_DB_get_by_index(i32, i64, i8**) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
