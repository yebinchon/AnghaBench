; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_compare_cert_by_name_str.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_compare_cert_by_name_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@CERT_INFO_SUBJECT_FLAG = common dso_local global i32 0, align 4
@CERT_SIMPLE_NAME_STR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i8*)* @compare_cert_by_name_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_cert_by_name_str(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CERT_INFO_SUBJECT_FLAG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32* %23, i32** %9, align 8
  br label %29

24:                                               ; preds = %4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* %28, i32** %9, align 8
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @CERT_SIMPLE_NAME_STR, align 4
  %35 = call i32 @CertNameToStrW(i32 %32, i32* %33, i32 %34, i64* null, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64* @CryptMemAlloc(i32 %42)
  store i64* %43, i64** %12, align 8
  %44 = load i64*, i64** %12, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %78

46:                                               ; preds = %38
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* @CERT_SIMPLE_NAME_STR, align 4
  %52 = load i64*, i64** %12, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @CertNameToStrW(i32 %49, i32* %50, i32 %51, i64* %52, i32 %53)
  %55 = load i64*, i64** %12, align 8
  store i64* %55, i64** %13, align 8
  br label %56

56:                                               ; preds = %65, %46
  %57 = load i64*, i64** %13, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i64*, i64** %13, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @tolowerW(i64 %62)
  %64 = load i64*, i64** %13, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %60
  %66 = load i64*, i64** %13, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %13, align 8
  br label %56

68:                                               ; preds = %56
  %69 = load i64*, i64** %12, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @strstrW(i64* %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i64*, i64** %12, align 8
  %77 = call i32 @CryptMemFree(i64* %76)
  br label %78

78:                                               ; preds = %75, %38
  br label %79

79:                                               ; preds = %78, %29
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i32 @CertNameToStrW(i32, i32*, i32, i64*, i32) #1

declare dso_local i64* @CryptMemAlloc(i32) #1

declare dso_local i64 @tolowerW(i64) #1

declare dso_local i64 @strstrW(i64*, i8*) #1

declare dso_local i32 @CryptMemFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
