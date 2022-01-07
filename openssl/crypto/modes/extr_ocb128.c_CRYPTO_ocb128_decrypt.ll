; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_ocb128.c_CRYPTO_ocb128_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_ocb128.c_CRYPTO_ocb128_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, i32 (i32*, i8*, i32)*, %struct.TYPE_11__, i32, i32 (i8*, i8*, i32)*, i64, i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_ocb128_decrypt(%struct.TYPE_12__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = udiv i64 %19, 16
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %21, %25
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %4
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 7
  %36 = load i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)*, i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)** %35, align 8
  %37 = icmp ne i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)* %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %33
  store i64 0, i64* %14, align 8
  %39 = load i64, i64* %11, align 8
  store i64 %39, i64* %15, align 8
  br label %40

40:                                               ; preds = %44, %38
  %41 = load i64, i64* %15, align 8
  %42 = lshr i64 %41, 1
  store i64 %42, i64* %15, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %14, align 8
  br label %40

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call %struct.TYPE_11__* @ocb_lookup_l(%struct.TYPE_12__* %48, i64 %49)
  %51 = icmp eq %struct.TYPE_11__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %220

53:                                               ; preds = %47
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 7
  %56 = load i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)*, i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)** %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to [16 x i8]*
  %77 = bitcast [16 x i8]* %76 to i8**
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 %56(i8* %57, i8* %58, i64 %59, i32 %62, i64 %67, i32* %72, i8** %77, i32* %82)
  br label %157

84:                                               ; preds = %33, %29, %4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %153, %84
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ule i64 %91, %92
  br i1 %93, label %94, label %156

94:                                               ; preds = %90
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @ocb_ntz(i64 %96)
  %98 = call %struct.TYPE_11__* @ocb_lookup_l(%struct.TYPE_12__* %95, i64 %97)
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %17, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %100 = icmp eq %struct.TYPE_11__* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %220

102:                                              ; preds = %94
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %105, %struct.TYPE_11__* %106, %struct.TYPE_11__* %109)
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = bitcast i32* %112 to i8*
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @memcpy(i8* %113, i8* %114, i64 16)
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 16
  store i8* %117, i8** %7, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %120, %struct.TYPE_11__* %16, %struct.TYPE_11__* %16)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 5
  %124 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = bitcast i32* %126 to i8*
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = bitcast i32* %129 to i8*
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %124(i8* %127, i8* %130, i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %137, %struct.TYPE_11__* %16, %struct.TYPE_11__* %16)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %16, %struct.TYPE_11__* %141, %struct.TYPE_11__* %144)
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = bitcast i32* %148 to i8*
  %150 = call i32 @memcpy(i8* %146, i8* %149, i64 16)
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 16
  store i8* %152, i8** %8, align 8
  br label %153

153:                                              ; preds = %102
  %154 = load i64, i64* %10, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %10, align 8
  br label %90

156:                                              ; preds = %90
  br label %157

157:                                              ; preds = %156, %53
  %158 = load i64, i64* %9, align 8
  %159 = urem i64 %158, 16
  store i64 %159, i64* %13, align 8
  %160 = load i64, i64* %13, align 8
  %161 = icmp ugt i64 %160, 0
  br i1 %161, label %162, label %215

162:                                              ; preds = %157
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %165, %struct.TYPE_11__* %167, %struct.TYPE_11__* %170)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %173, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = bitcast i32* %181 to i8*
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 %174(i32* %179, i8* %182, i32 %185)
  %187 = load i8*, i8** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = bitcast i32* %189 to i8*
  %191 = load i64, i64* %13, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = call i32 @ocb_block_xor(i8* %187, i8* %190, i64 %191, i8* %192)
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = bitcast i32* %195 to i8*
  %197 = call i32 @memset(i8* %196, i32 0, i32 16)
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = bitcast i32* %199 to i8*
  %201 = load i8*, i8** %8, align 8
  %202 = load i64, i64* %13, align 8
  %203 = call i32 @memcpy(i8* %200, i8* %201, i64 %202)
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* %13, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32 128, i32* %207, align 4
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %18, %struct.TYPE_11__* %210, %struct.TYPE_11__* %213)
  br label %215

215:                                              ; preds = %162, %157
  %216 = load i64, i64* %11, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  store i64 %216, i64* %219, align 8
  store i32 1, i32* %5, align 4
  br label %220

220:                                              ; preds = %215, %101, %52
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local %struct.TYPE_11__* @ocb_lookup_l(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @ocb_ntz(i64) #1

declare dso_local i32 @ocb_block16_xor(%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ocb_block_xor(i8*, i8*, i64, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
