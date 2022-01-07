; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_kmac_prov.c_kmac_final.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_kmac_prov.c_kmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmac_data_st = type { i32, i64, i32* }

@KMAC_MAX_ENCODED_HEADER_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64*, i64)* @kmac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmac_final(i8* %0, i8* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kmac_data_st*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.kmac_data_st*
  store %struct.kmac_data_st* %17, %struct.kmac_data_st** %9, align 8
  %18 = load %struct.kmac_data_st*, %struct.kmac_data_st** %9, align 8
  %19 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32, i32* @KMAC_MAX_ENCODED_HEADER_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load %struct.kmac_data_st*, %struct.kmac_data_st** %9, align 8
  %26 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %35

30:                                               ; preds = %4
  %31 = load %struct.kmac_data_st*, %struct.kmac_data_st** %9, align 8
  %32 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 8
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi i32 [ 0, %29 ], [ %34, %30 ]
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @right_encode(i8* %24, i32* %12, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @EVP_DigestUpdate(i32* %41, i8* %24, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32*, i32** %10, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.kmac_data_st*, %struct.kmac_data_st** %9, align 8
  %49 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @EVP_DigestFinalXOF(i32* %46, i8* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %45, %40, %35
  %54 = phi i1 [ false, %40 ], [ false, %35 ], [ %52, %45 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i64*, i64** %7, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.kmac_data_st*, %struct.kmac_data_st** %9, align 8
  %63 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %7, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %58, %53
  %68 = load i32, i32* %15, align 4
  %69 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %69)
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @right_encode(i8*, i32*, i32) #2

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i32) #2

declare dso_local i64 @EVP_DigestFinalXOF(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
