; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bftest.c_print_test_data.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bftest.c_print_test_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"ecb test data\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"key bytes\09\09clear bytes\09\09cipher bytes\0A\00", align 1
@NUM_TESTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@ecb_data = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@plain_data = common dso_local global i32** null, align 8
@cipher_data = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"set_key test data\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"data[8]= \00", align 1
@key_data = common dso_local global i32* null, align 8
@KEY_TEST_NUM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"c=\00", align 1
@key_out = common dso_local global i32** null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c" k[%2u]=\00", align 1
@key_test = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"\0Achaining mode test data\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"key[16]   = \00", align 1
@cbc_key = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"\0Aiv[8]     = \00", align 1
@cbc_iv = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"\0Adata[%d]  = '%s'\00", align 1
@cbc_data = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"\0Adata[%d]  = \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"cbc cipher text\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"cipher[%d]= \00", align 1
@cbc_ok = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"cfb64 cipher text\0A\00", align 1
@cfb64_ok = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"ofb64 cipher text\0A\00", align 1
@ofb64_ok = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @print_test_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_test_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %67, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NUM_TESTS, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %70

9:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %24, %9
  %11 = load i32, i32* %2, align 4
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i32**, i32*** @ecb_data, align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %2, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %10

27:                                               ; preds = %10
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %43, %27
  %30 = load i32, i32* %2, align 4
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i32**, i32*** @plain_data, align 8
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %2, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %2, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %29

46:                                               ; preds = %29
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %62, %46
  %49 = load i32, i32* %2, align 4
  %50 = icmp ult i32 %49, 8
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load i32**, i32*** @cipher_data, align 8
  %53 = load i32, i32* %1, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %2, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %2, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %48

65:                                               ; preds = %48
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %1, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %5

70:                                               ; preds = %5
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %83, %70
  %74 = load i32, i32* %2, align 4
  %75 = icmp ult i32 %74, 8
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32*, i32** @key_data, align 8
  %78 = load i32, i32* %2, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %2, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %2, align 4
  br label %73

86:                                               ; preds = %73
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %88

88:                                               ; preds = %133, %86
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* @KEY_TEST_NUM, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %136

93:                                               ; preds = %88
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %109, %93
  %96 = load i32, i32* %2, align 4
  %97 = icmp ult i32 %96, 8
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i32**, i32*** @key_out, align 8
  %100 = load i32, i32* %1, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %2, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %2, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %2, align 4
  br label %95

112:                                              ; preds = %95
  %113 = load i32, i32* %1, align 4
  %114 = add i32 %113, 1
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %128, %112
  %117 = load i32, i32* %2, align 4
  %118 = load i32, i32* %1, align 4
  %119 = add i32 %118, 1
  %120 = icmp ult i32 %117, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load i32*, i32** @key_test, align 8
  %123 = load i32, i32* %2, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %2, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %2, align 4
  br label %116

131:                                              ; preds = %116
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131
  %134 = load i32, i32* %1, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %1, align 4
  br label %88

136:                                              ; preds = %88
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %149, %136
  %140 = load i32, i32* %2, align 4
  %141 = icmp ult i32 %140, 16
  br i1 %141, label %142, label %152

142:                                              ; preds = %139
  %143 = load i32*, i32** @cbc_key, align 8
  %144 = load i32, i32* %2, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %2, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %2, align 4
  br label %139

152:                                              ; preds = %139
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %164, %152
  %155 = load i32, i32* %2, align 4
  %156 = icmp ult i32 %155, 8
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load i32*, i32** @cbc_iv, align 8
  %159 = load i32, i32* %2, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %2, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %2, align 4
  br label %154

167:                                              ; preds = %154
  %168 = load i8*, i8** @cbc_data, align 8
  %169 = call i32 @strlen(i8* %168)
  %170 = add nsw i32 %169, 1
  %171 = load i8*, i8** @cbc_data, align 8
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %170, i8* %171)
  %173 = load i8*, i8** @cbc_data, align 8
  %174 = call i32 @strlen(i8* %173)
  %175 = add nsw i32 %174, 1
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %175)
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %191, %167
  %178 = load i32, i32* %2, align 4
  %179 = load i8*, i8** @cbc_data, align 8
  %180 = call i32 @strlen(i8* %179)
  %181 = add nsw i32 %180, 1
  %182 = icmp ult i32 %178, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  %184 = load i8*, i8** @cbc_data, align 8
  %185 = load i32, i32* %2, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %183
  %192 = load i32, i32* %2, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %2, align 4
  br label %177

194:                                              ; preds = %177
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 32)
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %208, %194
  %199 = load i32, i32* %2, align 4
  %200 = icmp ult i32 %199, 32
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load i32*, i32** @cbc_ok, align 8
  %203 = load i32, i32* %2, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %2, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %2, align 4
  br label %198

211:                                              ; preds = %198
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %214 = load i8*, i8** @cbc_data, align 8
  %215 = call i32 @strlen(i8* %214)
  %216 = add nsw i32 %215, 1
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %216)
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %231, %211
  %219 = load i32, i32* %2, align 4
  %220 = load i8*, i8** @cbc_data, align 8
  %221 = call i32 @strlen(i8* %220)
  %222 = add nsw i32 %221, 1
  %223 = icmp ult i32 %219, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %218
  %225 = load i32*, i32** @cfb64_ok, align 8
  %226 = load i32, i32* %2, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %224
  %232 = load i32, i32* %2, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %2, align 4
  br label %218

234:                                              ; preds = %218
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %237 = load i8*, i8** @cbc_data, align 8
  %238 = call i32 @strlen(i8* %237)
  %239 = add nsw i32 %238, 1
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %239)
  store i32 0, i32* %2, align 4
  br label %241

241:                                              ; preds = %254, %234
  %242 = load i32, i32* %2, align 4
  %243 = load i8*, i8** @cbc_data, align 8
  %244 = call i32 @strlen(i8* %243)
  %245 = add nsw i32 %244, 1
  %246 = icmp ult i32 %242, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %241
  %248 = load i32*, i32** @ofb64_ok, align 8
  %249 = load i32, i32* %2, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %247
  %255 = load i32, i32* %2, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %2, align 4
  br label %241

257:                                              ; preds = %241
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
