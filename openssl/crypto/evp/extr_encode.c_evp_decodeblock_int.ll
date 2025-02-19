; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_encode.c_evp_decodeblock_int.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_encode.c_evp_decodeblock_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EVP_ENCODE_CTX_USE_SRP_ALPHABET = common dso_local global i32 0, align 4
@srpdata_ascii2bin = common dso_local global i8* null, align 8
@data_ascii2bin = common dso_local global i8* null, align 8
@B64_WS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i32)* @evp_decodeblock_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evp_decodeblock_int(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EVP_ENCODE_CTX_USE_SRP_ALPHABET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i8*, i8** @srpdata_ascii2bin, align 8
  store i8* %28, i8** %17, align 8
  br label %31

29:                                               ; preds = %20, %4
  %30 = load i8*, i8** @data_ascii2bin, align 8
  store i8* %30, i8** %17, align 8
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %17, align 8
  %36 = call i32 @conv_ascii2bin(i8 zeroext %34, i8* %35)
  %37 = load i32, i32* @B64_WS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 0
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi i1 [ false, %32 ], [ %41, %39 ]
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %9, align 4
  br label %32

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 3
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %17, align 8
  %61 = call i32 @conv_ascii2bin(i8 zeroext %59, i8* %60)
  %62 = call i64 @B64_NOT_BASE64(i32 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %53, %50
  %65 = phi i1 [ false, %50 ], [ %63, %53 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %9, align 4
  br label %50

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = srem i32 %70, 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 -1, i32* %5, align 4
  br label %161

74:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %156, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %159

79:                                               ; preds = %75
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  %82 = load i8, i8* %80, align 1
  %83 = load i8*, i8** %17, align 8
  %84 = call i32 @conv_ascii2bin(i8 zeroext %82, i8* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  %87 = load i8, i8* %85, align 1
  %88 = load i8*, i8** %17, align 8
  %89 = call i32 @conv_ascii2bin(i8 zeroext %87, i8* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  %92 = load i8, i8* %90, align 1
  %93 = load i8*, i8** %17, align 8
  %94 = call i32 @conv_ascii2bin(i8 zeroext %92, i8* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  %97 = load i8, i8* %95, align 1
  %98 = load i8*, i8** %17, align 8
  %99 = call i32 @conv_ascii2bin(i8 zeroext %97, i8* %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, 128
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %79
  %104 = load i32, i32* %13, align 4
  %105 = and i32 %104, 128
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %14, align 4
  %109 = and i32 %108, 128
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %15, align 4
  %113 = and i32 %112, 128
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %107, %103, %79
  store i32 -1, i32* %5, align 4
  br label %161

116:                                              ; preds = %111
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = shl i64 %118, 18
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = shl i64 %121, 12
  %123 = or i64 %119, %122
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = shl i64 %125, 6
  %127 = or i64 %123, %126
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = or i64 %127, %129
  store i64 %130, i64* %16, align 8
  %131 = load i64, i64* %16, align 8
  %132 = lshr i64 %131, 16
  %133 = trunc i64 %132 to i8
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 255
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %7, align 8
  store i8 %136, i8* %137, align 1
  %139 = load i64, i64* %16, align 8
  %140 = lshr i64 %139, 8
  %141 = trunc i64 %140 to i8
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 255
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %7, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i64, i64* %16, align 8
  %148 = trunc i64 %147 to i8
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, 255
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %7, align 8
  store i8 %151, i8* %152, align 1
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 3
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %116
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 4
  store i32 %158, i32* %10, align 4
  br label %75

159:                                              ; preds = %75
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %159, %115, %73
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @conv_ascii2bin(i8 zeroext, i8*) #1

declare dso_local i64 @B64_NOT_BASE64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
