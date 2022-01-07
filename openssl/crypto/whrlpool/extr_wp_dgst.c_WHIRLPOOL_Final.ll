; ModuleID = '/home/carl/AnghaBench/openssl/crypto/whrlpool/extr_wp_dgst.c_WHIRLPOOL_Final.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/whrlpool/extr_wp_dgst.c_WHIRLPOOL_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@WHIRLPOOL_BBLOCK = common dso_local global i32 0, align 4
@WHIRLPOOL_COUNTER = common dso_local global i32 0, align 4
@WHIRLPOOL_DIGEST_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WHIRLPOOL_Final(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = udiv i32 %15, 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = urem i32 %17, 8
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 128, %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %23
  store i32 %31, i32* %29, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 128, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %21
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @WHIRLPOOL_BBLOCK, align 4
  %44 = sdiv i32 %43, 8
  %45 = load i32, i32* @WHIRLPOOL_COUNTER, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp ugt i32 %42, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @WHIRLPOOL_BBLOCK, align 4
  %51 = sdiv i32 %50, 8
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* @WHIRLPOOL_BBLOCK, align 4
  %61 = sdiv i32 %60, 8
  %62 = load i32, i32* %7, align 4
  %63 = sub i32 %61, %62
  %64 = call i32 @memset(i32* %59, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %53, %48
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @whirlpool_block(%struct.TYPE_7__* %66, i32* %69, i32 1)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %65, %39
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @WHIRLPOOL_BBLOCK, align 4
  %74 = sdiv i32 %73, 8
  %75 = load i32, i32* @WHIRLPOOL_COUNTER, align 4
  %76 = sub nsw i32 %74, %75
  %77 = icmp ult i32 %72, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %71
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* @WHIRLPOOL_BBLOCK, align 4
  %86 = sdiv i32 %85, 8
  %87 = load i32, i32* @WHIRLPOOL_COUNTER, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = sub i32 %88, %89
  %91 = call i32 @memset(i32* %84, i32 0, i32 %90)
  br label %92

92:                                               ; preds = %78, %71
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @WHIRLPOOL_BBLOCK, align 4
  %97 = sdiv i32 %96, 8
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = bitcast i32* %100 to i8*
  store i8* %101, i8** %11, align 8
  store i64 0, i64* %8, align 8
  br label %102

102:                                              ; preds = %130, %92
  %103 = load i64, i64* %8, align 8
  %104 = load i32, i32* @WHIRLPOOL_COUNTER, align 4
  %105 = sext i32 %104 to i64
  %106 = udiv i64 %105, 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %102
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %115

115:                                              ; preds = %124, %108
  %116 = load i64, i64* %9, align 8
  %117 = icmp ult i64 %116, 8
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load i64, i64* %10, align 8
  %120 = and i64 %119, 255
  %121 = trunc i64 %120 to i8
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 -1
  store i8* %123, i8** %11, align 8
  store i8 %121, i8* %122, align 1
  br label %124

124:                                              ; preds = %118
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %9, align 8
  %127 = load i64, i64* %10, align 8
  %128 = lshr i64 %127, 8
  store i64 %128, i64* %10, align 8
  br label %115

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %8, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %8, align 8
  br label %102

133:                                              ; preds = %102
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @whirlpool_block(%struct.TYPE_7__* %134, i32* %137, i32 1)
  %139 = load i8*, i8** %4, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %151

141:                                              ; preds = %133
  %142 = load i8*, i8** %4, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @WHIRLPOOL_DIGEST_LENGTH, align 4
  %148 = call i32 @memcpy(i8* %142, i32 %146, i32 %147)
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = call i32 @OPENSSL_cleanse(%struct.TYPE_7__* %149, i32 32)
  store i32 1, i32* %3, align 4
  br label %152

151:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %141
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @whirlpool_block(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @OPENSSL_cleanse(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
