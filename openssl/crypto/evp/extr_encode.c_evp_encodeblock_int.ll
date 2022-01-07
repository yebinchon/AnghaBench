; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_encode.c_evp_encodeblock_int.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_encode.c_evp_encodeblock_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EVP_ENCODE_CTX_USE_SRP_ALPHABET = common dso_local global i32 0, align 4
@srpdata_bin2ascii = common dso_local global i8* null, align 8
@data_bin2ascii = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i32)* @evp_encodeblock_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evp_encodeblock_int(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EVP_ENCODE_CTX_USE_SRP_ALPHABET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i8*, i8** @srpdata_bin2ascii, align 8
  store i8* %23, i8** %12, align 8
  br label %26

24:                                               ; preds = %15, %4
  %25 = load i8*, i8** @data_bin2ascii, align 8
  store i8* %25, i8** %12, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %124, %26
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %127

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 3
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  %39 = shl i64 %38, 16
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i64
  %44 = shl i64 %43, 8
  %45 = or i64 %39, %44
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = or i64 %45, %49
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = lshr i64 %51, 18
  %53 = load i8*, i8** %12, align 8
  %54 = call signext i8 @conv_bin2ascii(i64 %52, i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 %54, i8* %55, align 1
  %57 = load i64, i64* %11, align 8
  %58 = lshr i64 %57, 12
  %59 = load i8*, i8** %12, align 8
  %60 = call signext i8 @conv_bin2ascii(i64 %58, i8* %59)
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i64, i64* %11, align 8
  %64 = lshr i64 %63, 6
  %65 = load i8*, i8** %12, align 8
  %66 = call signext i8 @conv_bin2ascii(i64 %64, i8* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i64, i64* %11, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call signext i8 @conv_bin2ascii(i64 %69, i8* %70)
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  store i8 %71, i8* %72, align 1
  br label %119

74:                                               ; preds = %31
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = shl i64 %78, 16
  store i64 %79, i64* %11, align 8
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i64
  %87 = shl i64 %86, 8
  %88 = load i64, i64* %11, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %82, %74
  %91 = load i64, i64* %11, align 8
  %92 = lshr i64 %91, 18
  %93 = load i8*, i8** %12, align 8
  %94 = call signext i8 @conv_bin2ascii(i64 %92, i8* %93)
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  store i8 %94, i8* %95, align 1
  %97 = load i64, i64* %11, align 8
  %98 = lshr i64 %97, 12
  %99 = load i8*, i8** %12, align 8
  %100 = call signext i8 @conv_bin2ascii(i64 %98, i8* %99)
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  store i8 %100, i8* %101, align 1
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  br label %112

106:                                              ; preds = %90
  %107 = load i64, i64* %11, align 8
  %108 = lshr i64 %107, 6
  %109 = load i8*, i8** %12, align 8
  %110 = call signext i8 @conv_bin2ascii(i64 %108, i8* %109)
  %111 = sext i8 %110 to i32
  br label %112

112:                                              ; preds = %106, %105
  %113 = phi i32 [ 61, %105 ], [ %111, %106 ]
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %6, align 8
  store i8 %114, i8* %115, align 1
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  store i8 61, i8* %117, align 1
  br label %119

119:                                              ; preds = %112, %34
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 4
  store i32 %121, i32* %10, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 3
  store i8* %123, i8** %7, align 8
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, 3
  store i32 %126, i32* %9, align 4
  br label %28

127:                                              ; preds = %28
  %128 = load i8*, i8** %6, align 8
  store i8 0, i8* %128, align 1
  %129 = load i32, i32* %10, align 4
  ret i32 %129
}

declare dso_local signext i8 @conv_bin2ascii(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
