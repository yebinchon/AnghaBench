; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rdrand_sanitytest.c_sanity_check_bytes.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rdrand_sanitytest.c_sanity_check_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64 (i8*, i64)*, i32, i32, i32, i32)* @sanity_check_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanity_check_bytes(i64 (i8*, i64)* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64 (i8*, i64)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [31 x i8], align 16
  %13 = alloca [31 x i8], align 16
  %14 = alloca [7 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store i64 (i8*, i64)* %0, i64 (i8*, i64)** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = bitcast [31 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 31, i1 false)
  %23 = bitcast [31 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 31, i1 false)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %105, %5
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %108

28:                                               ; preds = %24
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64 (i8*, i64)*, i64 (i8*, i64)** %6, align 8
  %35 = getelementptr inbounds [31 x i8], [31 x i8]* %13, i64 0, i64 0
  %36 = call i64 %34(i8* %35, i64 31)
  store i64 %36, i64* %18, align 8
  %37 = load i64, i64* %18, align 8
  %38 = icmp eq i64 %37, 31
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %46

40:                                               ; preds = %33
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %19, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %19, align 4
  br label %29

46:                                               ; preds = %39, %29
  store i64 0, i64* %20, align 8
  br label %47

47:                                               ; preds = %67, %46
  %48 = load i64, i64* %20, align 8
  %49 = icmp ult i64 %48, 30
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load i64, i64* %20, align 8
  %52 = getelementptr inbounds [31 x i8], [31 x i8]* %13, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load i64, i64* %20, align 8
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds [31 x i8], [31 x i8]* %13, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %63, %56, %50
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %20, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %20, align 8
  br label %47

70:                                               ; preds = %47
  %71 = load i64, i64* %18, align 8
  %72 = call i32 @TEST_int_eq(i64 %71, i32 31)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %121

75:                                               ; preds = %70
  %76 = getelementptr inbounds [31 x i8], [31 x i8]* %12, i64 0, i64 0
  %77 = getelementptr inbounds [31 x i8], [31 x i8]* %13, i64 0, i64 0
  %78 = call i32 @memcmp(i8* %76, i8* %77, i32 31)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @TEST_false(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %121

85:                                               ; preds = %75
  %86 = getelementptr inbounds [31 x i8], [31 x i8]* %13, i64 0, i64 24
  store i8* %86, i8** %21, align 8
  %87 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  %88 = load i8*, i8** %21, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @memset(i8* %87, i8 zeroext %90, i32 7)
  %92 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  %93 = load i8*, i8** %21, align 8
  %94 = call i32 @memcmp(i8* %92, i8* %93, i32 7)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @TEST_false(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %85
  br label %121

101:                                              ; preds = %85
  %102 = getelementptr inbounds [31 x i8], [31 x i8]* %12, i64 0, i64 0
  %103 = getelementptr inbounds [31 x i8], [31 x i8]* %13, i64 0, i64 0
  %104 = call i32 @memcpy(i8* %102, i8* %103, i32 31)
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %17, align 4
  br label %24

108:                                              ; preds = %24
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @TEST_int_le(i32 %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %121

114:                                              ; preds = %108
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @TEST_int_ge(i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  br label %121

120:                                              ; preds = %114
  store i32 1, i32* %11, align 4
  br label %121

121:                                              ; preds = %120, %119, %113, %100, %84, %74
  %122 = load i32, i32* %11, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TEST_int_eq(i64, i32) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i8 zeroext, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @TEST_int_le(i32, i32) #2

declare dso_local i32 @TEST_int_ge(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
