; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_find_cert_by_name_str_w.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_find_cert_by_name_str_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@compare_cert_by_name_str = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32, i8*, i32*)* @find_cert_by_name_str_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_cert_by_name_str_w(i32 %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @debugstr_w(i8* %16)
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %62

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @strlenW(i8* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i64* @CryptMemAlloc(i32 %28)
  store i64* %29, i64** %13, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %21
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to i64*
  store i64* %34, i64** %14, align 8
  %35 = load i64*, i64** %13, align 8
  store i64* %35, i64** %15, align 8
  br label %36

36:                                               ; preds = %45, %32
  %37 = load i64*, i64** %14, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i64*, i64** %14, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @tolowerW(i64 %42)
  %44 = load i64*, i64** %15, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %40
  %46 = load i64*, i64** %14, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %14, align 8
  %48 = load i64*, i64** %15, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %15, align 8
  br label %36

50:                                               ; preds = %36
  %51 = load i64*, i64** %15, align 8
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* @compare_cert_by_name_str, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i64*, i64** %13, align 8
  %58 = call i32* @cert_compare_certs_in_store(i32 %52, i32* %53, i32 %54, i32 %55, i32 %56, i64* %57)
  store i32* %58, i32** %11, align 8
  %59 = load i64*, i64** %13, align 8
  %60 = call i32 @CryptMemFree(i64* %59)
  br label %61

61:                                               ; preds = %50, %21
  br label %68

62:                                               ; preds = %5
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32* @find_cert_any(i32 %63, i32 %64, i32 %65, i32* null, i32* %66)
  store i32* %67, i32** %11, align 8
  br label %68

68:                                               ; preds = %62, %61
  %69 = load i32*, i32** %11, align 8
  ret i32* %69
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @strlenW(i8*) #1

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
