; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20_hw.c_chacha20_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20_hw.c_chacha20_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CHACHA_BLK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @chacha20_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha20_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %86

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %32, %22
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %29 = icmp ult i32 %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %51

32:                                               ; preds = %30
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %8, align 8
  %35 = load i8, i8* %33, align 1
  %36 = zext i8 %35 to i32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %36, %44
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %9, align 8
  br label %23

51:                                               ; preds = %30
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %226

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %62
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %62
  br label %85

85:                                               ; preds = %84, %58
  br label %86

86:                                               ; preds = %85, %4
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %89 = zext i32 %88 to i64
  %90 = urem i64 %87, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %9, align 8
  %95 = sub i64 %94, %93
  store i64 %95, i64* %9, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %168, %86
  %102 = load i64, i64* %9, align 8
  %103 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %104 = zext i32 %103 to i64
  %105 = icmp uge i64 %102, %104
  br i1 %105, label %106, label %169

106:                                              ; preds = %101
  %107 = load i64, i64* %9, align 8
  %108 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %109 = zext i32 %108 to i64
  %110 = udiv i64 %107, %109
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %14, align 8
  %112 = icmp ugt i64 %111, 268435456
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i64 268435456, i64* %14, align 8
  br label %114

114:                                              ; preds = %113, %106
  %115 = load i64, i64* %14, align 8
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* %13, align 4
  %118 = add i32 %117, %116
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %14, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load i32, i32* %13, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %14, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %123, %114
  %129 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %14, align 8
  %132 = mul i64 %131, %130
  store i64 %132, i64* %14, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i64, i64* %14, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @ChaCha20_ctr32(i8* %133, i8* %134, i32 %136, i32 %140, i32* %143)
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* %9, align 8
  %147 = sub i64 %146, %145
  store i64 %147, i64* %9, align 8
  %148 = load i64, i64* %14, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 %148
  store i8* %150, i8** %8, align 8
  %151 = load i64, i64* %14, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 %151
  store i8* %153, i8** %7, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 %154, i32* %158, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %128
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %161, %128
  br label %101

169:                                              ; preds = %101
  %170 = load i32, i32* %12, align 4
  %171 = icmp ugt i32 %170, 0
  br i1 %171, label %172, label %225

172:                                              ; preds = %169
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @memset(i32* %175, i32 0, i32 8)
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = bitcast i32* %179 to i8*
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = bitcast i32* %183 to i8*
  %185 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @ChaCha20_ctr32(i8* %180, i8* %184, i32 %185, i32 %189, i32* %192)
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %218, %172
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %198, label %221

198:                                              ; preds = %194
  %199 = load i8*, i8** %8, align 8
  %200 = load i32, i32* %11, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = xor i32 %204, %211
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %7, align 8
  %215 = load i32, i32* %11, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  store i8 %213, i8* %217, align 1
  br label %218

218:                                              ; preds = %198
  %219 = load i32, i32* %11, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %194

221:                                              ; preds = %194
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  br label %225

225:                                              ; preds = %221, %169
  store i32 1, i32* %5, align 4
  br label %226

226:                                              ; preds = %225, %57
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @ChaCha20_ctr32(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
