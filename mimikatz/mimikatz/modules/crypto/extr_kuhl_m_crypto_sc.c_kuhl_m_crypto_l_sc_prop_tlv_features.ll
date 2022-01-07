; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_sc.c_kuhl_m_crypto_l_sc_prop_tlv_features.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_sc.c_kuhl_m_crypto_l_sc_prop_tlv_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i32] [i32 32, i32 32, i32 32, i32 32, i32 92, i32 32, i32 37, i32 48, i32 50, i32 120, i32 32, i32 45, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i32] [i32 76, i32 67, i32 68, i32 32, i32 76, i32 97, i32 121, i32 111, i32 117, i32 116, i32 58, i32 32, i32 37, i32 104, i32 104, i32 117, i32 120, i32 37, i32 104, i32 104, i32 117, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [36 x i32] [i32 69, i32 110, i32 116, i32 114, i32 121, i32 32, i32 86, i32 97, i32 108, i32 105, i32 100, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 67, i32 111, i32 110, i32 100, i32 105, i32 116, i32 105, i32 111, i32 110, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i32] [i32 84, i32 105, i32 109, i32 101, i32 79, i32 117, i32 116, i32 50, i32 58, i32 32, i32 37, i32 104, i32 104, i32 117, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [25 x i32] [i32 76, i32 67, i32 68, i32 32, i32 77, i32 97, i32 120, i32 32, i32 67, i32 104, i32 97, i32 114, i32 97, i32 99, i32 116, i32 101, i32 114, i32 115, i32 58, i32 32, i32 37, i32 104, i32 117, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [20 x i32] [i32 76, i32 67, i32 68, i32 32, i32 77, i32 97, i32 120, i32 32, i32 76, i32 105, i32 110, i32 101, i32 115, i32 58, i32 32, i32 37, i32 104, i32 117, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [20 x i32] [i32 77, i32 105, i32 110, i32 32, i32 80, i32 105, i32 110, i32 32, i32 83, i32 105, i32 122, i32 101, i32 58, i32 32, i32 37, i32 104, i32 104, i32 117, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [20 x i32] [i32 77, i32 97, i32 120, i32 32, i32 80, i32 105, i32 110, i32 32, i32 83, i32 105, i32 122, i32 101, i32 58, i32 32, i32 37, i32 104, i32 104, i32 117, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [18 x i32] [i32 70, i32 105, i32 114, i32 109, i32 119, i32 97, i32 114, i32 101, i32 73, i32 68, i32 58, i32 32, i32 37, i32 46, i32 42, i32 83, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [17 x i32] [i32 80, i32 80, i32 68, i32 85, i32 32, i32 83, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 58, i32 32, i32 37, i32 115, i32 0], align 4
@.str.10 = private unnamed_addr constant [4 x i32] [i32 89, i32 69, i32 83, i32 0], align 4
@.str.11 = private unnamed_addr constant [3 x i32] [i32 78, i32 79, i32 0], align 4
@.str.12 = private unnamed_addr constant [42 x i32] [i32 32, i32 45, i32 32, i32 83, i32 67, i32 97, i32 114, i32 100, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 40, i32 70, i32 69, i32 65, i32 84, i32 85, i32 82, i32 69, i32 95, i32 67, i32 67, i32 73, i32 68, i32 95, i32 69, i32 83, i32 67, i32 95, i32 67, i32 79, i32 77, i32 77, i32 65, i32 78, i32 68, i32 41, i32 0], align 4
@.str.13 = private unnamed_addr constant [17 x i32] [i32 32, i32 45, i32 32, i32 83, i32 67, i32 97, i32 114, i32 100, i32 84, i32 114, i32 97, i32 110, i32 115, i32 109, i32 105, i32 116, i32 0], align 4
@.str.14 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [31 x i32] [i32 77, i32 97, i32 120, i32 32, i32 65, i32 80, i32 68, i32 85, i32 32, i32 68, i32 97, i32 116, i32 97, i32 32, i32 83, i32 105, i32 122, i32 101, i32 58, i32 32, i32 37, i32 117, i32 32, i32 45, i32 32, i32 48, i32 120, i32 37, i32 120, i32 10, i32 0], align 4
@.str.16 = private unnamed_addr constant [21 x i32] [i32 85, i32 83, i32 66, i32 32, i32 86, i32 101, i32 110, i32 100, i32 111, i32 114, i32 73, i32 68, i32 32, i32 58, i32 32, i32 37, i32 48, i32 52, i32 120, i32 10, i32 0], align 4
@.str.17 = private unnamed_addr constant [21 x i32] [i32 85, i32 83, i32 66, i32 32, i32 80, i32 114, i32 111, i32 100, i32 117, i32 99, i32 116, i32 73, i32 68, i32 58, i32 32, i32 37, i32 48, i32 52, i32 120, i32 10, i32 0], align 4
@.str.18 = private unnamed_addr constant [57 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 40, i32 33, i32 70, i32 69, i32 65, i32 84, i32 85, i32 82, i32 69, i32 95, i32 71, i32 69, i32 84, i32 95, i32 84, i32 76, i32 86, i32 95, i32 80, i32 82, i32 79, i32 80, i32 69, i32 82, i32 84, i32 73, i32 69, i32 83, i32 33, i32 41, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_crypto_l_sc_prop_tlv_features(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %12 = call i64 @SCardControl(i32 %9, i32 %10, i32* null, i32 0, i32* %11, i32 1024, i32* %5)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %219

16:                                               ; preds = %2
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  store i32* %17, i32** %7, align 8
  br label %18

18:                                               ; preds = %210, %16
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = icmp ult i32* %19, %23
  br i1 %24, label %25, label %218

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @kprintf(i8* bitcast ([14 x i32]* @.str to i8*), i32 %28, i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %201 [
    i32 1, label %36
    i32 2, label %51
    i32 3, label %63
    i32 4, label %75
    i32 5, label %87
    i32 6, label %99
    i32 7, label %111
    i32 8, label %123
    i32 9, label %130
    i32 10, label %162
    i32 11, label %177
    i32 12, label %189
  ]

36:                                               ; preds = %25
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 4
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str.1 to i8*), i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %42, %36
  br label %209

51:                                               ; preds = %25
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @kprintf(i8* bitcast ([36 x i32]* @.str.2 to i8*), i32 %60)
  br label %62

62:                                               ; preds = %57, %51
  br label %209

63:                                               ; preds = %25
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %67, 4
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.3 to i8*), i32 %72)
  br label %74

74:                                               ; preds = %69, %63
  br label %209

75:                                               ; preds = %25
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %79, 4
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @kprintf(i8* bitcast ([25 x i32]* @.str.4 to i8*), i32 %84)
  br label %86

86:                                               ; preds = %81, %75
  br label %209

87:                                               ; preds = %25
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %91, 4
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.5 to i8*), i32 %96)
  br label %98

98:                                               ; preds = %93, %87
  br label %209

99:                                               ; preds = %25
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp eq i64 %103, 4
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.6 to i8*), i32 %108)
  br label %110

110:                                              ; preds = %105, %99
  br label %209

111:                                              ; preds = %25
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.7 to i8*), i32 %120)
  br label %122

122:                                              ; preds = %117, %111
  br label %209

123:                                              ; preds = %25
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.8 to i8*), i32 %126, i32* %128)
  br label %209

130:                                              ; preds = %25
  %131 = load i32*, i32** %7, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp eq i64 %134, 4
  br i1 %135, label %136, label %161

136:                                              ; preds = %130
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str.10, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.11, i64 0, i64 0)
  %143 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.9 to i8*), i32* %142)
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %136
  %150 = call i32 (i8*, ...) @kprintf(i8* bitcast ([42 x i32]* @.str.12 to i8*))
  br label %151

151:                                              ; preds = %149, %136
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 2
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.13 to i8*))
  br label %159

159:                                              ; preds = %157, %151
  %160 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.14 to i8*))
  br label %161

161:                                              ; preds = %159, %130
  br label %209

162:                                              ; preds = %25
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp eq i64 %166, 4
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load i32*, i32** %7, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %7, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.15 to i8*), i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %168, %162
  br label %209

177:                                              ; preds = %25
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp eq i64 %181, 4
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load i32*, i32** %7, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i8*, ...) @kprintf(i8* bitcast ([21 x i32]* @.str.16 to i8*), i32 %186)
  br label %188

188:                                              ; preds = %183, %177
  br label %209

189:                                              ; preds = %25
  %190 = load i32*, i32** %7, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp eq i64 %193, 4
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, ...) @kprintf(i8* bitcast ([21 x i32]* @.str.17 to i8*), i32 %198)
  br label %200

200:                                              ; preds = %195, %189
  br label %209

201:                                              ; preds = %25
  %202 = load i32*, i32** %7, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load i32*, i32** %7, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @kull_m_string_wprintf_hex(i32* %203, i32 %206, i32 1)
  %208 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.14 to i8*))
  br label %209

209:                                              ; preds = %201, %200, %188, %176, %161, %123, %122, %110, %98, %86, %74, %62, %50
  br label %210

210:                                              ; preds = %209
  %211 = load i32*, i32** %7, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 2
  %215 = load i32*, i32** %7, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %7, align 8
  br label %18

218:                                              ; preds = %18
  br label %223

219:                                              ; preds = %2
  %220 = load i64, i64* %8, align 8
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @PRINT_ERROR(i8* bitcast ([57 x i32]* @.str.18 to i8*), i64 %220, i32 %221)
  br label %223

223:                                              ; preds = %219, %218
  %224 = load i32, i32* @FALSE, align 4
  ret i32 %224
}

declare dso_local i64 @SCardControl(i32, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
