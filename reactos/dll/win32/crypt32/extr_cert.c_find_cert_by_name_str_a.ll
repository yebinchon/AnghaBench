; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_find_cert_by_name_str_a.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_find_cert_by_name_str_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@compare_cert_by_name_str = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32, i8*, i32*)* @find_cert_by_name_str_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_cert_by_name_str_a(i32 %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @debugstr_a(i8* %15)
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %5
  %21 = load i32, i32* @CP_ACP, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @MultiByteToWideChar(i32 %21, i32 0, i8* %22, i32 -1, i64* null, i32 0)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i64* @CryptMemAlloc(i32 %27)
  store i64* %28, i64** %13, align 8
  %29 = load i64*, i64** %13, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %20
  %32 = load i32, i32* @CP_ACP, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i64*, i64** %13, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @MultiByteToWideChar(i32 %32, i32 0, i8* %33, i32 -1, i64* %34, i32 %35)
  %37 = load i64*, i64** %13, align 8
  store i64* %37, i64** %14, align 8
  br label %38

38:                                               ; preds = %47, %31
  %39 = load i64*, i64** %14, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i64*, i64** %14, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @tolowerW(i64 %44)
  %46 = load i64*, i64** %14, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i64*, i64** %14, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %14, align 8
  br label %38

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* @compare_cert_by_name_str, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i64*, i64** %13, align 8
  %57 = call i32* @cert_compare_certs_in_store(i32 %51, i32* %52, i32 %53, i32 %54, i32 %55, i64* %56)
  store i32* %57, i32** %11, align 8
  %58 = load i64*, i64** %13, align 8
  %59 = call i32 @CryptMemFree(i64* %58)
  br label %60

60:                                               ; preds = %50, %20
  br label %67

61:                                               ; preds = %5
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = call i32* @find_cert_any(i32 %62, i32 %63, i32 %64, i32* null, i32* %65)
  store i32* %66, i32** %11, align 8
  br label %67

67:                                               ; preds = %61, %60
  %68 = load i32*, i32** %11, align 8
  ret i32* %68
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i64*, i32) #1

declare dso_local i64* @CryptMemAlloc(i32) #1

declare dso_local i64 @tolowerW(i64) #1

declare dso_local i32* @cert_compare_certs_in_store(i32, i32*, i32, i32, i32, i64*) #1

declare dso_local i32 @CryptMemFree(i64*) #1

declare dso_local i32* @find_cert_any(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
