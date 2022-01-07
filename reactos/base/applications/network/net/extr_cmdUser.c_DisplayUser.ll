; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUser.c_DisplayUser.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUser.c_DisplayUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32* }

@NERR_Success = common dso_local global i64 0, align 8
@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [12 x i32] [i32 37, i32 48, i32 51, i32 108, i32 100, i32 32, i32 40, i32 37, i32 115, i32 41, i32 10, i32 0], align 4
@UF_ACCOUNTDISABLE = common dso_local global i32 0, align 4
@UF_LOCKOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@TIMEQ_FOREVER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i32] [i32 10, i32 10, i32 0], align 4
@UF_DONT_EXPIRE_PASSWD = common dso_local global i32 0, align 4
@UF_PASSWD_NOTREQD = common dso_local global i32 0, align 4
@UF_PASSWD_CANT_CHANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.5 = private unnamed_addr constant [5 x i32] [i32 42, i32 37, i32 115, i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @DisplayUser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DisplayUser(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [40 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store i32 36, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = bitcast %struct.TYPE_6__** %5 to i32*
  %19 = call i64 @NetUserGetInfo(i32* null, i32 %17, i32 4, i32* %18)
  store i64 %19, i64* %16, align 8
  %20 = load i64, i64* %16, align 8
  %21 = load i64, i64* @NERR_Success, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* %16, align 8
  store i64 %24, i64* %2, align 8
  br label %387

25:                                               ; preds = %1
  %26 = bitcast %struct.TYPE_6__** %4 to i32*
  %27 = call i64 @NetUserModalsGet(i32* null, i32 0, i32* %26)
  store i64 %27, i64* %16, align 8
  %28 = load i64, i64* %16, align 8
  %29 = load i64, i64* @NERR_Success, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %361

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = bitcast %struct.TYPE_6__** %6 to i32*
  %35 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %36 = call i64 @NetUserGetLocalGroups(i32* null, i32 %33, i32 0, i32 0, i32* %34, i32 %35, i64* %8, i64* %9)
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* @NERR_Success, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %361

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = bitcast %struct.TYPE_6__** %7 to i32*
  %44 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %45 = call i64 @NetUserGetGroups(i32* null, i32 %42, i32 0, i32* %43, i32 %44, i64* %10, i64* %11)
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* @NERR_Success, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %361

50:                                               ; preds = %41
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @PrintPaddedMessageString(i32 4411, i32 %51)
  %53 = load i32, i32* @StdOut, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 18
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %53, i8* bitcast ([4 x i32]* @.str to i8*), i32* %56)
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @PrintPaddedMessageString(i32 4412, i32 %58)
  %60 = load i32, i32* @StdOut, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 17
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %60, i8* bitcast ([4 x i32]* @.str to i8*), i32* %63)
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @PrintPaddedMessageString(i32 4413, i32 %65)
  %67 = load i32, i32* @StdOut, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 16
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %67, i8* bitcast ([4 x i32]* @.str to i8*), i32* %70)
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @PrintPaddedMessageString(i32 4414, i32 %72)
  %74 = load i32, i32* @StdOut, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 15
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %74, i8* bitcast ([4 x i32]* @.str to i8*), i32* %77)
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @PrintPaddedMessageString(i32 4416, i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 14
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds [40 x i32], [40 x i32]* %14, i64 0, i64 0
  %85 = call i32 @ARRAYSIZE(i32* %84)
  %86 = getelementptr inbounds [40 x i32], [40 x i32]* %14, i64 0, i64 0
  %87 = call i32 @GetCountryFromCountryCode(i32 %83, i32 %85, i32* %86)
  %88 = load i32, i32* @StdOut, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 14
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i32*
  %94 = getelementptr inbounds [40 x i32], [40 x i32]* %14, i64 0, i64 0
  %95 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %88, i8* bitcast ([12 x i32]* @.str.1 to i8*), i32* %93, i32* %94)
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @PrintPaddedMessageString(i32 4419, i32 %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @UF_ACCOUNTDISABLE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %50
  %105 = call i32 @PrintMessageString(i32 4301)
  br label %118

106:                                              ; preds = %50
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @UF_LOCKOUT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = call i32 @PrintMessageString(i32 4440)
  br label %117

115:                                              ; preds = %106
  %116 = call i32 @PrintMessageString(i32 4300)
  br label %117

117:                                              ; preds = %115, %113
  br label %118

118:                                              ; preds = %117, %104
  %119 = load i32, i32* @StdOut, align 4
  %120 = call i32 @ConPuts(i32 %119, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @PrintPaddedMessageString(i32 4420, i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TIMEQ_FOREVER, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = call i32 @PrintMessageString(i32 4305)
  br label %135

130:                                              ; preds = %118
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @PrintDateTime(i64 %133)
  br label %135

135:                                              ; preds = %130, %128
  %136 = load i32, i32* @StdOut, align 4
  %137 = call i32 @ConPuts(i32 %136, i8* bitcast ([3 x i32]* @.str.3 to i8*))
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @PrintPaddedMessageString(i32 4421, i32 %138)
  %140 = call i64 (...) @GetTimeInSeconds()
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %140, %143
  store i64 %144, i64* %12, align 8
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @PrintDateTime(i64 %145)
  %147 = load i32, i32* @StdOut, align 4
  %148 = call i32 @ConPuts(i32 %147, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @PrintPaddedMessageString(i32 4422, i32 %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @UF_DONT_EXPIRE_PASSWD, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %135
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TIMEQ_FOREVER, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %157, %135
  %164 = call i32 @PrintMessageString(i32 4305)
  br label %172

165:                                              ; preds = %157
  %166 = load i64, i64* %12, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %166, %169
  %171 = call i32 @PrintDateTime(i64 %170)
  br label %172

172:                                              ; preds = %165, %163
  %173 = load i32, i32* @StdOut, align 4
  %174 = call i32 @ConPuts(i32 %173, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @PrintPaddedMessageString(i32 4423, i32 %175)
  %177 = load i64, i64* %12, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = call i32 @PrintDateTime(i64 %181)
  %183 = load i32, i32* @StdOut, align 4
  %184 = call i32 @ConPuts(i32 %183, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @PrintPaddedMessageString(i32 4437, i32 %185)
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @UF_PASSWD_NOTREQD, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 4301, i32 4300
  %195 = call i32 @PrintMessageString(i32 %194)
  %196 = load i32, i32* @StdOut, align 4
  %197 = call i32 @ConPuts(i32 %196, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %198 = load i32, i32* %15, align 4
  %199 = call i32 @PrintPaddedMessageString(i32 4438, i32 %198)
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @UF_PASSWD_CANT_CHANGE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 4301, i32 4300
  %208 = call i32 @PrintMessageString(i32 %207)
  %209 = load i32, i32* @StdOut, align 4
  %210 = call i32 @ConPuts(i32 %209, i8* bitcast ([3 x i32]* @.str.3 to i8*))
  %211 = load i32, i32* %15, align 4
  %212 = call i32 @PrintPaddedMessageString(i32 4424, i32 %211)
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 13
  %215 = load i32*, i32** %214, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %223, label %217

217:                                              ; preds = %172
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 13
  %220 = load i32*, i32** %219, align 8
  %221 = call i64 @wcslen(i32* %220)
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %217, %172
  %224 = call i32 @PrintMessageString(i32 4302)
  br label %231

225:                                              ; preds = %217
  %226 = load i32, i32* @StdOut, align 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 13
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %226, i8* bitcast ([3 x i32]* @.str.4 to i8*), i32* %229)
  br label %231

231:                                              ; preds = %225, %223
  %232 = load i32, i32* @StdOut, align 4
  %233 = call i32 @ConPuts(i32 %232, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @PrintPaddedMessageString(i32 4429, i32 %234)
  %236 = load i32, i32* @StdOut, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 12
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %236, i8* bitcast ([4 x i32]* @.str to i8*), i32* %239)
  %241 = load i32, i32* %15, align 4
  %242 = call i32 @PrintPaddedMessageString(i32 4439, i32 %241)
  %243 = load i32, i32* @StdOut, align 4
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 11
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %243, i8* bitcast ([4 x i32]* @.str to i8*), i32* %246)
  %248 = load i32, i32* %15, align 4
  %249 = call i32 @PrintPaddedMessageString(i32 4436, i32 %248)
  %250 = load i32, i32* @StdOut, align 4
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 10
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %250, i8* bitcast ([4 x i32]* @.str to i8*), i32* %253)
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @PrintPaddedMessageString(i32 4430, i32 %255)
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %231
  %262 = call i32 @PrintMessageString(i32 4305)
  br label %268

263:                                              ; preds = %231
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 5
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @PrintDateTime(i64 %266)
  br label %268

268:                                              ; preds = %263, %261
  %269 = load i32, i32* @StdOut, align 4
  %270 = call i32 @ConPuts(i32 %269, i8* bitcast ([3 x i32]* @.str.3 to i8*))
  %271 = load i32, i32* %15, align 4
  %272 = call i32 @PrintPaddedMessageString(i32 4432, i32 %271)
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 8
  %275 = load i32*, i32** %274, align 8
  %276 = icmp eq i32* %275, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %268
  %278 = call i32 @PrintMessageString(i32 4302)
  %279 = load i32, i32* @StdOut, align 4
  %280 = call i32 @ConPuts(i32 %279, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  br label %290

281:                                              ; preds = %268
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 9
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 8
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %15, align 4
  %289 = call i32 @PrintLogonHours(i32 %284, i32* %287, i32 %288)
  br label %290

290:                                              ; preds = %281, %277
  %291 = load i32, i32* @StdOut, align 4
  %292 = call i32 @ConPuts(i32 %291, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %293 = load i32, i32* %15, align 4
  %294 = call i32 @PrintPaddedMessageString(i32 4427, i32 %293)
  %295 = load i64, i64* %9, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %323

297:                                              ; preds = %290
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %299 = icmp ne %struct.TYPE_6__* %298, null
  br i1 %299, label %300, label %323

300:                                              ; preds = %297
  store i64 0, i64* %13, align 8
  br label %301

301:                                              ; preds = %319, %300
  %302 = load i64, i64* %13, align 8
  %303 = load i64, i64* %9, align 8
  %304 = icmp slt i64 %302, %303
  br i1 %304, label %305, label %322

305:                                              ; preds = %301
  %306 = load i64, i64* %13, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i32, i32* %15, align 4
  %310 = call i32 @PrintPadding(i32 32, i32 %309)
  br label %311

311:                                              ; preds = %308, %305
  %312 = load i32, i32* @StdOut, align 4
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %314 = load i64, i64* %13, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 7
  %317 = load i32*, i32** %316, align 8
  %318 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %312, i8* bitcast ([5 x i32]* @.str.5 to i8*), i32* %317)
  br label %319

319:                                              ; preds = %311
  %320 = load i64, i64* %13, align 8
  %321 = add nsw i64 %320, 1
  store i64 %321, i64* %13, align 8
  br label %301

322:                                              ; preds = %301
  br label %326

323:                                              ; preds = %297, %290
  %324 = load i32, i32* @StdOut, align 4
  %325 = call i32 @ConPuts(i32 %324, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  br label %326

326:                                              ; preds = %323, %322
  %327 = load i32, i32* %15, align 4
  %328 = call i32 @PrintPaddedMessageString(i32 4431, i32 %327)
  %329 = load i64, i64* %11, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %357

331:                                              ; preds = %326
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %333 = icmp ne %struct.TYPE_6__* %332, null
  br i1 %333, label %334, label %357

334:                                              ; preds = %331
  store i64 0, i64* %13, align 8
  br label %335

335:                                              ; preds = %353, %334
  %336 = load i64, i64* %13, align 8
  %337 = load i64, i64* %11, align 8
  %338 = icmp slt i64 %336, %337
  br i1 %338, label %339, label %356

339:                                              ; preds = %335
  %340 = load i64, i64* %13, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load i32, i32* %15, align 4
  %344 = call i32 @PrintPadding(i32 32, i32 %343)
  br label %345

345:                                              ; preds = %342, %339
  %346 = load i32, i32* @StdOut, align 4
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %348 = load i64, i64* %13, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 6
  %351 = load i32*, i32** %350, align 8
  %352 = call i32 (i32, i8*, i32*, ...) @ConPrintf(i32 %346, i8* bitcast ([5 x i32]* @.str.5 to i8*), i32* %351)
  br label %353

353:                                              ; preds = %345
  %354 = load i64, i64* %13, align 8
  %355 = add nsw i64 %354, 1
  store i64 %355, i64* %13, align 8
  br label %335

356:                                              ; preds = %335
  br label %360

357:                                              ; preds = %331, %326
  %358 = load i32, i32* @StdOut, align 4
  %359 = call i32 @ConPuts(i32 %358, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  br label %360

360:                                              ; preds = %357, %356
  br label %361

361:                                              ; preds = %360, %49, %40, %31
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %363 = icmp ne %struct.TYPE_6__* %362, null
  br i1 %363, label %364, label %367

364:                                              ; preds = %361
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %366 = call i32 @NetApiBufferFree(%struct.TYPE_6__* %365)
  br label %367

367:                                              ; preds = %364, %361
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %369 = icmp ne %struct.TYPE_6__* %368, null
  br i1 %369, label %370, label %373

370:                                              ; preds = %367
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %372 = call i32 @NetApiBufferFree(%struct.TYPE_6__* %371)
  br label %373

373:                                              ; preds = %370, %367
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %375 = icmp ne %struct.TYPE_6__* %374, null
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %378 = call i32 @NetApiBufferFree(%struct.TYPE_6__* %377)
  br label %379

379:                                              ; preds = %376, %373
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %381 = icmp ne %struct.TYPE_6__* %380, null
  br i1 %381, label %382, label %385

382:                                              ; preds = %379
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %384 = call i32 @NetApiBufferFree(%struct.TYPE_6__* %383)
  br label %385

385:                                              ; preds = %382, %379
  %386 = load i64, i64* @NERR_Success, align 8
  store i64 %386, i64* %2, align 8
  br label %387

387:                                              ; preds = %385, %23
  %388 = load i64, i64* %2, align 8
  ret i64 %388
}

declare dso_local i64 @NetUserGetInfo(i32*, i32, i32, i32*) #1

declare dso_local i64 @NetUserModalsGet(i32*, i32, i32*) #1

declare dso_local i64 @NetUserGetLocalGroups(i32*, i32, i32, i32, i32*, i32, i64*, i64*) #1

declare dso_local i64 @NetUserGetGroups(i32*, i32, i32, i32*, i32, i64*, i64*) #1

declare dso_local i32 @PrintPaddedMessageString(i32, i32) #1

declare dso_local i32 @ConPrintf(i32, i8*, i32*, ...) #1

declare dso_local i32 @GetCountryFromCountryCode(i32, i32, i32*) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintDateTime(i64) #1

declare dso_local i64 @GetTimeInSeconds(...) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @PrintLogonHours(i32, i32*, i32) #1

declare dso_local i32 @PrintPadding(i32, i32) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
