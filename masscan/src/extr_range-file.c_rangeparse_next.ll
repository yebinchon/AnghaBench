; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangeparse_next.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangeparse_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeParser = type { i32, i8, i32, i32, i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RangeParser*, i8*, i64*, i64, i32*, i32*)* @rangeparse_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rangeparse_next(%struct.RangeParser* %0, i8* %1, i64* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.RangeParser*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.RangeParser* %0, %struct.RangeParser** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %22 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %601, %447, %319, %50, %43, %42, %6
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %602

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %13, align 8
  %32 = getelementptr inbounds i8, i8* %29, i64 %30
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %16, align 1
  %34 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %35 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load i32, i32* %14, align 4
  switch i32 %38, label %598 [
    i32 0, label %39
    i32 1, label %39
    i32 17, label %93
    i32 16, label %119
    i32 2, label %272
    i32 13, label %285
    i32 14, label %366
    i32 15, label %374
    i32 3, label %386
    i32 4, label %386
    i32 5, label %386
    i32 6, label %386
    i32 8, label %386
    i32 9, label %386
    i32 10, label %386
    i32 11, label %386
    i32 20, label %599
    i32 7, label %599
    i32 12, label %599
  ]

39:                                               ; preds = %28, %28
  %40 = load i8, i8* %16, align 1
  %41 = zext i8 %40 to i32
  switch i32 %41, label %90 [
    i32 32, label %42
    i32 9, label %42
    i32 13, label %42
    i32 10, label %43
    i32 35, label %50
    i32 59, label %50
    i32 47, label %50
    i32 45, label %50
    i32 48, label %51
    i32 49, label %51
    i32 50, label %51
    i32 51, label %51
    i32 52, label %51
    i32 53, label %51
    i32 54, label %51
    i32 55, label %51
    i32 56, label %51
    i32 57, label %51
    i32 97, label %60
    i32 98, label %60
    i32 99, label %60
    i32 100, label %60
    i32 101, label %60
    i32 102, label %60
    i32 65, label %72
    i32 66, label %72
    i32 67, label %72
    i32 68, label %72
    i32 69, label %72
    i32 70, label %72
    i32 91, label %84
  ]

42:                                               ; preds = %39, %39, %39
  br label %24

43:                                               ; preds = %39
  %44 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %45 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %49 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  br label %24

50:                                               ; preds = %39, %39, %39, %39
  store i32 2, i32* %14, align 4
  br label %24

51:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39, %39, %39
  %52 = load i8, i8* %16, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %53, 48
  %55 = trunc i32 %54 to i8
  %56 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %57 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %56, i32 0, i32 1
  store i8 %55, i8* %57, align 4
  %58 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %59 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  store i32 3, i32* %14, align 4
  br label %92

60:                                               ; preds = %39, %39, %39, %39, %39, %39
  %61 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %62 = call i32 @ipv6_init(%struct.RangeParser* %61)
  %63 = load i8, i8* %16, align 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %64, 97
  %66 = add nsw i32 %65, 10
  %67 = trunc i32 %66 to i8
  %68 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %69 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %68, i32 0, i32 1
  store i8 %67, i8* %69, align 4
  %70 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %71 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  store i32 16, i32* %14, align 4
  br label %92

72:                                               ; preds = %39, %39, %39, %39, %39, %39
  %73 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %74 = call i32 @ipv6_init(%struct.RangeParser* %73)
  %75 = load i8, i8* %16, align 1
  %76 = zext i8 %75 to i32
  %77 = sub nsw i32 %76, 65
  %78 = add nsw i32 %77, 10
  %79 = trunc i32 %78 to i8
  %80 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %81 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %80, i32 0, i32 1
  store i8 %79, i8* %81, align 4
  %82 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %83 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  store i32 16, i32* %14, align 4
  br label %92

84:                                               ; preds = %39
  %85 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %86 = call i32 @ipv6_init(%struct.RangeParser* %85)
  %87 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %88 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  store i32 16, i32* %14, align 4
  br label %92

90:                                               ; preds = %39
  store i32 20, i32* %14, align 4
  %91 = load i64, i64* %13, align 8
  store i64 %91, i64* %10, align 8
  br label %92

92:                                               ; preds = %90, %84, %72, %60, %51
  br label %601

93:                                               ; preds = %28
  %94 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %95 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %94, i32 0, i32 2
  store i32 0, i32* %95, align 8
  %96 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %97 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %96, i32 0, i32 1
  store i8 0, i8* %97, align 4
  %98 = load i8, i8* %16, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 58
  br i1 %100, label %101, label %118

101:                                              ; preds = %93
  %102 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %103 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 8
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  store i32 20, i32* %14, align 4
  %108 = load i64, i64* %13, align 8
  store i64 %108, i64* %10, align 8
  br label %117

109:                                              ; preds = %101
  %110 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %111 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %115 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  store i32 17, i32* %14, align 4
  br label %117

117:                                              ; preds = %109, %107
  br label %601

118:                                              ; preds = %93
  br label %119

119:                                              ; preds = %28, %118
  %120 = load i8, i8* %16, align 1
  %121 = zext i8 %120 to i32
  switch i32 %121, label %269 [
    i32 48, label %122
    i32 49, label %122
    i32 50, label %122
    i32 51, label %122
    i32 52, label %122
    i32 53, label %122
    i32 54, label %122
    i32 55, label %122
    i32 56, label %122
    i32 57, label %122
    i32 97, label %147
    i32 98, label %147
    i32 99, label %147
    i32 100, label %147
    i32 101, label %147
    i32 102, label %147
    i32 65, label %173
    i32 66, label %173
    i32 67, label %173
    i32 68, label %173
    i32 69, label %173
    i32 70, label %173
    i32 58, label %199
    i32 47, label %224
    i32 93, label %224
    i32 32, label %224
    i32 9, label %224
    i32 13, label %224
    i32 10, label %224
    i32 44, label %224
    i32 45, label %224
  ]

122:                                              ; preds = %119, %119, %119, %119, %119, %119, %119, %119, %119, %119
  %123 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %124 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %125, 4
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  store i32 20, i32* %14, align 4
  %128 = load i64, i64* %13, align 8
  store i64 %128, i64* %10, align 8
  br label %146

129:                                              ; preds = %122
  %130 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %131 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %130, i32 0, i32 1
  %132 = load i8, i8* %131, align 4
  %133 = zext i8 %132 to i32
  %134 = mul nsw i32 %133, 16
  %135 = load i8, i8* %16, align 1
  %136 = zext i8 %135 to i32
  %137 = sub nsw i32 %136, 48
  %138 = add nsw i32 %134, %137
  %139 = trunc i32 %138 to i8
  %140 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %141 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %140, i32 0, i32 1
  store i8 %139, i8* %141, align 4
  %142 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %143 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %129, %127
  br label %271

147:                                              ; preds = %119, %119, %119, %119, %119, %119
  %148 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %149 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp sge i32 %150, 4
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  store i32 20, i32* %14, align 4
  %153 = load i64, i64* %13, align 8
  store i64 %153, i64* %10, align 8
  br label %172

154:                                              ; preds = %147
  %155 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %156 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %155, i32 0, i32 1
  %157 = load i8, i8* %156, align 4
  %158 = zext i8 %157 to i32
  %159 = mul nsw i32 %158, 16
  %160 = load i8, i8* %16, align 1
  %161 = zext i8 %160 to i32
  %162 = sub nsw i32 %161, 97
  %163 = add nsw i32 %162, 10
  %164 = add nsw i32 %159, %163
  %165 = trunc i32 %164 to i8
  %166 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %167 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %166, i32 0, i32 1
  store i8 %165, i8* %167, align 4
  %168 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %169 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %154, %152
  br label %271

173:                                              ; preds = %119, %119, %119, %119, %119, %119
  %174 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %175 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp sge i32 %176, 4
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  store i32 20, i32* %14, align 4
  %179 = load i64, i64* %13, align 8
  store i64 %179, i64* %10, align 8
  br label %198

180:                                              ; preds = %173
  %181 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %182 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %181, i32 0, i32 1
  %183 = load i8, i8* %182, align 4
  %184 = zext i8 %183 to i32
  %185 = mul nsw i32 %184, 16
  %186 = load i8, i8* %16, align 1
  %187 = zext i8 %186 to i32
  %188 = sub nsw i32 %187, 65
  %189 = add nsw i32 %188, 10
  %190 = add nsw i32 %185, %189
  %191 = trunc i32 %190 to i8
  %192 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %193 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %192, i32 0, i32 1
  store i8 %191, i8* %193, align 4
  %194 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %195 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %180, %178
  br label %271

199:                                              ; preds = %119
  %200 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %201 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %200, i32 0, i32 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp sge i32 %203, 8
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  store i32 20, i32* %14, align 4
  %206 = load i64, i64* %13, align 8
  store i64 %206, i64* %10, align 8
  br label %223

207:                                              ; preds = %199
  %208 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %209 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %208, i32 0, i32 1
  %210 = load i8, i8* %209, align 4
  %211 = zext i8 %210 to i32
  %212 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %213 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %212, i32 0, i32 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %217 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %216, i32 0, i32 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %215, i64 %221
  store i32 %211, i32* %222, align 4
  store i32 17, i32* %14, align 4
  br label %223

223:                                              ; preds = %207, %205
  br label %271

224:                                              ; preds = %119, %119, %119, %119, %119, %119, %119, %119
  %225 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %226 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %225, i32 0, i32 1
  %227 = load i8, i8* %226, align 4
  %228 = zext i8 %227 to i32
  %229 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %230 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %229, i32 0, i32 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %234 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %233, i32 0, i32 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %232, i64 %238
  store i32 %228, i32* %239, align 4
  %240 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %241 = load i8, i8* %16, align 1
  %242 = call i32 @ipv6_finish_number(%struct.RangeParser* %240, i8 zeroext %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %224
  store i32 20, i32* %14, align 4
  %245 = load i64, i64* %13, align 8
  store i64 %245, i64* %10, align 8
  br label %271

246:                                              ; preds = %224
  %247 = load i8, i8* %16, align 1
  %248 = zext i8 %247 to i32
  switch i32 %248, label %268 [
    i32 47, label %249
    i32 93, label %250
    i32 10, label %260
    i32 32, label %267
    i32 9, label %267
    i32 13, label %267
    i32 44, label %267
    i32 45, label %267
  ]

249:                                              ; preds = %246
  store i32 18, i32* %14, align 4
  br label %268

250:                                              ; preds = %246
  %251 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %252 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %251, i32 0, i32 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %250
  store i32 20, i32* %14, align 4
  %257 = load i64, i64* %13, align 8
  store i64 %257, i64* %10, align 8
  br label %259

258:                                              ; preds = %250
  store i32 19, i32* %14, align 4
  br label %259

259:                                              ; preds = %258, %256
  br label %268

260:                                              ; preds = %246
  %261 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %262 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 8
  %265 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %266 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %265, i32 0, i32 6
  store i64 0, i64* %266, align 8
  br label %267

267:                                              ; preds = %246, %246, %246, %246, %246, %260
  br label %268

268:                                              ; preds = %246, %267, %259, %249
  br label %271

269:                                              ; preds = %119
  store i32 20, i32* %14, align 4
  %270 = load i64, i64* %13, align 8
  store i64 %270, i64* %10, align 8
  br label %271

271:                                              ; preds = %269, %268, %244, %223, %198, %172, %146
  br label %601

272:                                              ; preds = %28
  %273 = load i8, i8* %16, align 1
  %274 = zext i8 %273 to i32
  %275 = icmp eq i32 %274, 10
  br i1 %275, label %276, label %283

276:                                              ; preds = %272
  store i32 0, i32* %14, align 4
  %277 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %278 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 8
  %281 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %282 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %281, i32 0, i32 6
  store i64 0, i64* %282, align 8
  br label %284

283:                                              ; preds = %272
  store i32 2, i32* %14, align 4
  br label %284

284:                                              ; preds = %283, %276
  br label %601

285:                                              ; preds = %28
  %286 = load i8, i8* %16, align 1
  %287 = zext i8 %286 to i32
  switch i32 %287, label %363 [
    i32 48, label %288
    i32 49, label %288
    i32 50, label %288
    i32 51, label %288
    i32 52, label %288
    i32 53, label %288
    i32 54, label %288
    i32 55, label %288
    i32 56, label %288
    i32 57, label %288
    i32 58, label %321
    i32 44, label %321
    i32 32, label %321
    i32 9, label %321
    i32 13, label %321
    i32 10, label %321
  ]

288:                                              ; preds = %285, %285, %285, %285, %285, %285, %285, %285, %285, %285
  %289 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %290 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = icmp eq i32 %291, 3
  br i1 %292, label %293, label %295

293:                                              ; preds = %288
  store i32 20, i32* %14, align 4
  %294 = load i64, i64* %13, align 8
  store i64 %294, i64* %10, align 8
  br label %320

295:                                              ; preds = %288
  %296 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %297 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %297, align 8
  %300 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %301 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %300, i32 0, i32 1
  %302 = load i8, i8* %301, align 4
  %303 = zext i8 %302 to i32
  %304 = mul nsw i32 %303, 10
  %305 = load i8, i8* %16, align 1
  %306 = zext i8 %305 to i32
  %307 = sub nsw i32 %306, 48
  %308 = add nsw i32 %304, %307
  %309 = trunc i32 %308 to i8
  %310 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %311 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %310, i32 0, i32 1
  store i8 %309, i8* %311, align 4
  %312 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %313 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %312, i32 0, i32 1
  %314 = load i8, i8* %313, align 4
  %315 = zext i8 %314 to i32
  %316 = icmp sgt i32 %315, 32
  br i1 %316, label %317, label %319

317:                                              ; preds = %295
  store i32 20, i32* %14, align 4
  %318 = load i64, i64* %13, align 8
  store i64 %318, i64* %10, align 8
  br label %319

319:                                              ; preds = %317, %295
  br label %24

320:                                              ; preds = %293
  br label %365

321:                                              ; preds = %285, %285, %285, %285, %285, %285
  %322 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %323 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %322, i32 0, i32 1
  %324 = load i8, i8* %323, align 4
  %325 = zext i8 %324 to i64
  store i64 %325, i64* %17, align 8
  %326 = load i64, i64* %17, align 8
  %327 = lshr i64 -4294967296, %326
  store i64 %327, i64* %18, align 8
  %328 = load i64, i64* %18, align 8
  %329 = trunc i64 %328 to i32
  %330 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %331 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, %329
  store i32 %333, i32* %331, align 4
  %334 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %335 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load i64, i64* %18, align 8
  %338 = xor i64 %337, -1
  %339 = trunc i64 %338 to i32
  %340 = or i32 %336, %339
  %341 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %342 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %341, i32 0, i32 4
  store i32 %340, i32* %342, align 8
  store i32 1, i32* %14, align 4
  %343 = load i64, i64* %13, align 8
  store i64 %343, i64* %10, align 8
  %344 = load i8, i8* %16, align 1
  %345 = zext i8 %344 to i32
  %346 = icmp eq i32 %345, 10
  br i1 %346, label %347, label %354

347:                                              ; preds = %321
  %348 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %349 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %348, i32 0, i32 7
  %350 = load i32, i32* %349, align 8
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %349, align 8
  %352 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %353 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %352, i32 0, i32 6
  store i64 0, i64* %353, align 8
  br label %354

354:                                              ; preds = %347, %321
  %355 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %356 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = load i32*, i32** %11, align 8
  store i32 %357, i32* %358, align 4
  %359 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %360 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = load i32*, i32** %12, align 8
  store i32 %361, i32* %362, align 4
  store i32 1, i32* %15, align 4
  br label %365

363:                                              ; preds = %285
  store i32 20, i32* %14, align 4
  %364 = load i64, i64* %13, align 8
  store i64 %364, i64* %10, align 8
  br label %365

365:                                              ; preds = %363, %354, %320
  br label %601

366:                                              ; preds = %28
  %367 = load i8, i8* %16, align 1
  %368 = zext i8 %367 to i32
  %369 = icmp eq i32 %368, 128
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  store i32 15, i32* %14, align 4
  br label %373

371:                                              ; preds = %366
  store i32 20, i32* %14, align 4
  %372 = load i64, i64* %13, align 8
  store i64 %372, i64* %10, align 8
  br label %373

373:                                              ; preds = %371, %370
  br label %601

374:                                              ; preds = %28
  %375 = load i8, i8* %16, align 1
  %376 = zext i8 %375 to i32
  %377 = icmp slt i32 %376, 144
  br i1 %377, label %382, label %378

378:                                              ; preds = %374
  %379 = load i8, i8* %16, align 1
  %380 = zext i8 %379 to i32
  %381 = icmp slt i32 149, %380
  br i1 %381, label %382, label %384

382:                                              ; preds = %378, %374
  store i32 20, i32* %14, align 4
  %383 = load i64, i64* %13, align 8
  store i64 %383, i64* %10, align 8
  br label %385

384:                                              ; preds = %378
  store i8 45, i8* %16, align 1
  store i32 6, i32* %14, align 4
  br label %385

385:                                              ; preds = %384, %382
  br label %386

386:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %385
  %387 = load i8, i8* %16, align 1
  %388 = zext i8 %387 to i32
  switch i32 %388, label %595 [
    i32 46, label %389
    i32 48, label %416
    i32 49, label %416
    i32 50, label %416
    i32 51, label %416
    i32 52, label %416
    i32 53, label %416
    i32 54, label %416
    i32 55, label %416
    i32 56, label %416
    i32 57, label %416
    i32 226, label %449
    i32 45, label %456
    i32 150, label %456
    i32 47, label %480
    i32 58, label %504
    i32 44, label %504
    i32 32, label %504
    i32 9, label %504
    i32 13, label %504
    i32 10, label %504
  ]

389:                                              ; preds = %386
  %390 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %391 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 4
  %393 = shl i32 %392, 8
  %394 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %395 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %394, i32 0, i32 1
  %396 = load i8, i8* %395, align 4
  %397 = zext i8 %396 to i32
  %398 = or i32 %393, %397
  %399 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %400 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %399, i32 0, i32 5
  store i32 %398, i32* %400, align 4
  %401 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %402 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %401, i32 0, i32 1
  store i8 0, i8* %402, align 4
  %403 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %404 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %403, i32 0, i32 2
  store i32 0, i32* %404, align 8
  %405 = load i32, i32* %14, align 4
  %406 = icmp eq i32 %405, 6
  br i1 %406, label %410, label %407

407:                                              ; preds = %389
  %408 = load i32, i32* %14, align 4
  %409 = icmp eq i32 %408, 11
  br i1 %409, label %410, label %412

410:                                              ; preds = %407, %389
  %411 = load i64, i64* %13, align 8
  store i64 %411, i64* %10, align 8
  store i32 20, i32* %14, align 4
  br label %415

412:                                              ; preds = %407
  %413 = load i32, i32* %14, align 4
  %414 = add i32 %413, 1
  store i32 %414, i32* %14, align 4
  br label %415

415:                                              ; preds = %412, %410
  br label %597

416:                                              ; preds = %386, %386, %386, %386, %386, %386, %386, %386, %386, %386
  %417 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %418 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = icmp eq i32 %419, 3
  br i1 %420, label %421, label %423

421:                                              ; preds = %416
  store i32 20, i32* %14, align 4
  %422 = load i64, i64* %13, align 8
  store i64 %422, i64* %10, align 8
  br label %448

423:                                              ; preds = %416
  %424 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %425 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %425, align 8
  %428 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %429 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %428, i32 0, i32 1
  %430 = load i8, i8* %429, align 4
  %431 = zext i8 %430 to i32
  %432 = mul nsw i32 %431, 10
  %433 = load i8, i8* %16, align 1
  %434 = zext i8 %433 to i32
  %435 = sub nsw i32 %434, 48
  %436 = add nsw i32 %432, %435
  %437 = trunc i32 %436 to i8
  %438 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %439 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %438, i32 0, i32 1
  store i8 %437, i8* %439, align 4
  %440 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %441 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %440, i32 0, i32 1
  %442 = load i8, i8* %441, align 4
  %443 = zext i8 %442 to i32
  %444 = icmp sgt i32 %443, 255
  br i1 %444, label %445, label %447

445:                                              ; preds = %423
  store i32 20, i32* %14, align 4
  %446 = load i64, i64* %13, align 8
  store i64 %446, i64* %10, align 8
  br label %447

447:                                              ; preds = %445, %423
  br label %24

448:                                              ; preds = %421
  br label %597

449:                                              ; preds = %386
  %450 = load i32, i32* %14, align 4
  %451 = icmp eq i32 %450, 6
  br i1 %451, label %452, label %453

452:                                              ; preds = %449
  store i32 14, i32* %14, align 4
  br label %455

453:                                              ; preds = %449
  store i32 20, i32* %14, align 4
  %454 = load i64, i64* %13, align 8
  store i64 %454, i64* %10, align 8
  br label %455

455:                                              ; preds = %453, %452
  br label %597

456:                                              ; preds = %386, %386
  %457 = load i32, i32* %14, align 4
  %458 = icmp eq i32 %457, 6
  br i1 %458, label %459, label %477

459:                                              ; preds = %456
  %460 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %461 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %460, i32 0, i32 5
  %462 = load i32, i32* %461, align 4
  %463 = shl i32 %462, 8
  %464 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %465 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %464, i32 0, i32 1
  %466 = load i8, i8* %465, align 4
  %467 = zext i8 %466 to i32
  %468 = or i32 %463, %467
  %469 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %470 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %469, i32 0, i32 3
  store i32 %468, i32* %470, align 4
  %471 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %472 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %471, i32 0, i32 1
  store i8 0, i8* %472, align 4
  %473 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %474 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %473, i32 0, i32 2
  store i32 0, i32* %474, align 8
  %475 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %476 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %475, i32 0, i32 5
  store i32 0, i32* %476, align 4
  store i32 8, i32* %14, align 4
  br label %479

477:                                              ; preds = %456
  store i32 7, i32* %14, align 4
  %478 = load i64, i64* %13, align 8
  store i64 %478, i64* %10, align 8
  br label %479

479:                                              ; preds = %477, %459
  br label %597

480:                                              ; preds = %386
  %481 = load i32, i32* %14, align 4
  %482 = icmp eq i32 %481, 6
  br i1 %482, label %483, label %501

483:                                              ; preds = %480
  %484 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %485 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %484, i32 0, i32 5
  %486 = load i32, i32* %485, align 4
  %487 = shl i32 %486, 8
  %488 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %489 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %488, i32 0, i32 1
  %490 = load i8, i8* %489, align 4
  %491 = zext i8 %490 to i32
  %492 = or i32 %487, %491
  %493 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %494 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %493, i32 0, i32 3
  store i32 %492, i32* %494, align 4
  %495 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %496 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %495, i32 0, i32 1
  store i8 0, i8* %496, align 4
  %497 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %498 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %497, i32 0, i32 2
  store i32 0, i32* %498, align 8
  %499 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %500 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %499, i32 0, i32 5
  store i32 0, i32* %500, align 4
  store i32 13, i32* %14, align 4
  br label %503

501:                                              ; preds = %480
  store i32 7, i32* %14, align 4
  %502 = load i64, i64* %13, align 8
  store i64 %502, i64* %10, align 8
  br label %503

503:                                              ; preds = %501, %483
  br label %597

504:                                              ; preds = %386, %386, %386, %386, %386, %386
  %505 = load i32, i32* %14, align 4
  %506 = icmp eq i32 %505, 6
  br i1 %506, label %507, label %550

507:                                              ; preds = %504
  %508 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %509 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %508, i32 0, i32 5
  %510 = load i32, i32* %509, align 4
  %511 = shl i32 %510, 8
  %512 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %513 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %512, i32 0, i32 1
  %514 = load i8, i8* %513, align 4
  %515 = zext i8 %514 to i32
  %516 = or i32 %511, %515
  %517 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %518 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %517, i32 0, i32 3
  store i32 %516, i32* %518, align 4
  %519 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %520 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %519, i32 0, i32 3
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %523 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %522, i32 0, i32 4
  store i32 %521, i32* %523, align 8
  %524 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %525 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %524, i32 0, i32 1
  store i8 0, i8* %525, align 4
  %526 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %527 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %526, i32 0, i32 2
  store i32 0, i32* %527, align 8
  %528 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %529 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %528, i32 0, i32 5
  store i32 0, i32* %529, align 4
  store i32 1, i32* %14, align 4
  %530 = load i64, i64* %13, align 8
  store i64 %530, i64* %10, align 8
  %531 = load i8, i8* %16, align 1
  %532 = zext i8 %531 to i32
  %533 = icmp eq i32 %532, 10
  br i1 %533, label %534, label %541

534:                                              ; preds = %507
  %535 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %536 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %535, i32 0, i32 7
  %537 = load i32, i32* %536, align 8
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %536, align 8
  %539 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %540 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %539, i32 0, i32 6
  store i64 0, i64* %540, align 8
  br label %541

541:                                              ; preds = %534, %507
  %542 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %543 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %542, i32 0, i32 3
  %544 = load i32, i32* %543, align 4
  %545 = load i32*, i32** %11, align 8
  store i32 %544, i32* %545, align 4
  %546 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %547 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %546, i32 0, i32 4
  %548 = load i32, i32* %547, align 8
  %549 = load i32*, i32** %12, align 8
  store i32 %548, i32* %549, align 4
  store i32 1, i32* %15, align 4
  br label %594

550:                                              ; preds = %504
  %551 = load i32, i32* %14, align 4
  %552 = icmp eq i32 %551, 11
  br i1 %552, label %553, label %591

553:                                              ; preds = %550
  %554 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %555 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %554, i32 0, i32 5
  %556 = load i32, i32* %555, align 4
  %557 = shl i32 %556, 8
  %558 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %559 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %558, i32 0, i32 1
  %560 = load i8, i8* %559, align 4
  %561 = zext i8 %560 to i32
  %562 = or i32 %557, %561
  %563 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %564 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %563, i32 0, i32 4
  store i32 %562, i32* %564, align 8
  %565 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %566 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %565, i32 0, i32 1
  store i8 0, i8* %566, align 4
  %567 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %568 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %567, i32 0, i32 2
  store i32 0, i32* %568, align 8
  %569 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %570 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %569, i32 0, i32 5
  store i32 0, i32* %570, align 4
  store i32 1, i32* %14, align 4
  %571 = load i64, i64* %13, align 8
  store i64 %571, i64* %10, align 8
  %572 = load i8, i8* %16, align 1
  %573 = zext i8 %572 to i32
  %574 = icmp eq i32 %573, 10
  br i1 %574, label %575, label %582

575:                                              ; preds = %553
  %576 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %577 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %576, i32 0, i32 7
  %578 = load i32, i32* %577, align 8
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %577, align 8
  %580 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %581 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %580, i32 0, i32 6
  store i64 0, i64* %581, align 8
  br label %582

582:                                              ; preds = %575, %553
  %583 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %584 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %583, i32 0, i32 3
  %585 = load i32, i32* %584, align 4
  %586 = load i32*, i32** %11, align 8
  store i32 %585, i32* %586, align 4
  %587 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %588 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %587, i32 0, i32 4
  %589 = load i32, i32* %588, align 8
  %590 = load i32*, i32** %12, align 8
  store i32 %589, i32* %590, align 4
  store i32 1, i32* %15, align 4
  br label %593

591:                                              ; preds = %550
  store i32 7, i32* %14, align 4
  %592 = load i64, i64* %13, align 8
  store i64 %592, i64* %10, align 8
  br label %593

593:                                              ; preds = %591, %582
  br label %594

594:                                              ; preds = %593, %541
  br label %597

595:                                              ; preds = %386
  store i32 20, i32* %14, align 4
  %596 = load i64, i64* %13, align 8
  store i64 %596, i64* %10, align 8
  br label %597

597:                                              ; preds = %595, %594, %503, %479, %455, %448, %415
  br label %601

598:                                              ; preds = %28
  br label %599

599:                                              ; preds = %28, %28, %28, %598
  store i32 20, i32* %14, align 4
  %600 = load i64, i64* %13, align 8
  store i64 %600, i64* %10, align 8
  br label %601

601:                                              ; preds = %599, %597, %373, %365, %284, %271, %117, %92
  br label %24

602:                                              ; preds = %24
  %603 = load i64, i64* %13, align 8
  %604 = load i64*, i64** %9, align 8
  store i64 %603, i64* %604, align 8
  %605 = load i32, i32* %14, align 4
  %606 = load %struct.RangeParser*, %struct.RangeParser** %7, align 8
  %607 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %606, i32 0, i32 0
  store i32 %605, i32* %607, align 8
  %608 = load i32, i32* %14, align 4
  %609 = icmp eq i32 %608, 20
  br i1 %609, label %616, label %610

610:                                              ; preds = %602
  %611 = load i32, i32* %14, align 4
  %612 = icmp eq i32 %611, 7
  br i1 %612, label %616, label %613

613:                                              ; preds = %610
  %614 = load i32, i32* %14, align 4
  %615 = icmp eq i32 %614, 12
  br i1 %615, label %616, label %617

616:                                              ; preds = %613, %610, %602
  store i32 -1, i32* %15, align 4
  br label %617

617:                                              ; preds = %616, %613
  %618 = load i32, i32* %15, align 4
  ret i32 %618
}

declare dso_local i32 @ipv6_init(%struct.RangeParser*) #1

declare dso_local i32 @ipv6_finish_number(%struct.RangeParser*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
