; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getICMPStats.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getICMPStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"/proc/net/snmp\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__const.getICMPStats.hdr = private unnamed_addr constant [6 x i8] c"Icmp:\00", align 1
@NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getICMPStats(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [6 x i8], align 1
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %12, i32* %2, align 4
  br label %443

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i32 @memset(%struct.TYPE_10__* %14, i32 0, i32 192)
  %16 = call i32* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %441

19:                                               ; preds = %13
  %20 = bitcast [6 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.getICMPStats.hdr, i32 0, i32 0), i64 6, i1 false)
  %21 = bitcast [512 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 512, i1 false)
  br label %22

22:                                               ; preds = %34, %19
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @fgets(i8* %23, i32 512, i32* %24)
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %32 = call i64 @strncasecmp(i8* %30, i8* %31, i32 5)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i1 [ false, %26 ], [ %33, %29 ]
  br i1 %35, label %22, label %36

36:                                               ; preds = %34
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %438

39:                                               ; preds = %36
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @fgets(i8* %40, i32 512, i32* %41)
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %437

45:                                               ; preds = %39
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %48 = call i64 @strncasecmp(i8* %46, i8* %47, i32 5)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %437

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = call i8* @strtoul(i8* %61, i8** %8, i32 10)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 11
  store i8* %62, i8** %66, align 8
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %60, %55, %50
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = call i8* @strtoul(i8* %77, i8** %8, i32 10)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 10
  store i8* %78, i8** %82, align 8
  %83 = load i8*, i8** %8, align 8
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %76, %71, %68
  %85 = load i8*, i8** %7, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i8*, i8** %7, align 8
  %94 = call i8* @strtoul(i8* %93, i8** %8, i32 10)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 9
  store i8* %94, i8** %98, align 8
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %92, %87, %84
  %101 = load i8*, i8** %7, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load i8*, i8** %7, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load i8*, i8** %7, align 8
  %110 = call i8* @strtoul(i8* %109, i8** %8, i32 10)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 8
  store i8* %110, i8** %114, align 8
  %115 = load i8*, i8** %8, align 8
  store i8* %115, i8** %7, align 8
  br label %116

116:                                              ; preds = %108, %103, %100
  %117 = load i8*, i8** %7, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load i8*, i8** %7, align 8
  %126 = call i8* @strtoul(i8* %125, i8** %8, i32 10)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 7
  store i8* %126, i8** %130, align 8
  %131 = load i8*, i8** %8, align 8
  store i8* %131, i8** %7, align 8
  br label %132

132:                                              ; preds = %124, %119, %116
  %133 = load i8*, i8** %7, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load i8*, i8** %7, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load i8*, i8** %7, align 8
  %142 = call i8* @strtoul(i8* %141, i8** %8, i32 10)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 6
  store i8* %142, i8** %146, align 8
  %147 = load i8*, i8** %8, align 8
  store i8* %147, i8** %7, align 8
  br label %148

148:                                              ; preds = %140, %135, %132
  %149 = load i8*, i8** %7, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = load i8*, i8** %7, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load i8*, i8** %7, align 8
  %158 = call i8* @strtoul(i8* %157, i8** %8, i32 10)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 5
  store i8* %158, i8** %162, align 8
  %163 = load i8*, i8** %8, align 8
  store i8* %163, i8** %7, align 8
  br label %164

164:                                              ; preds = %156, %151, %148
  %165 = load i8*, i8** %7, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %180

167:                                              ; preds = %164
  %168 = load i8*, i8** %7, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = load i8*, i8** %7, align 8
  %174 = call i8* @strtoul(i8* %173, i8** %8, i32 10)
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 4
  store i8* %174, i8** %178, align 8
  %179 = load i8*, i8** %8, align 8
  store i8* %179, i8** %7, align 8
  br label %180

180:                                              ; preds = %172, %167, %164
  %181 = load i8*, i8** %7, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %196

183:                                              ; preds = %180
  %184 = load i8*, i8** %7, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load i8*, i8** %7, align 8
  %190 = call i8* @strtoul(i8* %189, i8** %8, i32 10)
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  store i8* %190, i8** %194, align 8
  %195 = load i8*, i8** %8, align 8
  store i8* %195, i8** %7, align 8
  br label %196

196:                                              ; preds = %188, %183, %180
  %197 = load i8*, i8** %7, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %212

199:                                              ; preds = %196
  %200 = load i8*, i8** %7, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load i8*, i8** %7, align 8
  %206 = call i8* @strtoul(i8* %205, i8** %8, i32 10)
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  store i8* %206, i8** %210, align 8
  %211 = load i8*, i8** %8, align 8
  store i8* %211, i8** %7, align 8
  br label %212

212:                                              ; preds = %204, %199, %196
  %213 = load i8*, i8** %7, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %228

215:                                              ; preds = %212
  %216 = load i8*, i8** %7, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %215
  %221 = load i8*, i8** %7, align 8
  %222 = call i8* @strtoul(i8* %221, i8** %8, i32 10)
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  store i8* %222, i8** %226, align 8
  %227 = load i8*, i8** %8, align 8
  store i8* %227, i8** %7, align 8
  br label %228

228:                                              ; preds = %220, %215, %212
  %229 = load i8*, i8** %7, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %244

231:                                              ; preds = %228
  %232 = load i8*, i8** %7, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = load i8*, i8** %7, align 8
  %238 = call i8* @strtoul(i8* %237, i8** %8, i32 10)
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  store i8* %238, i8** %242, align 8
  %243 = load i8*, i8** %8, align 8
  store i8* %243, i8** %7, align 8
  br label %244

244:                                              ; preds = %236, %231, %228
  %245 = load i8*, i8** %7, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %260

247:                                              ; preds = %244
  %248 = load i8*, i8** %7, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %247
  %253 = load i8*, i8** %7, align 8
  %254 = call i8* @strtoul(i8* %253, i8** %8, i32 10)
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 11
  store i8* %254, i8** %258, align 8
  %259 = load i8*, i8** %8, align 8
  store i8* %259, i8** %7, align 8
  br label %260

260:                                              ; preds = %252, %247, %244
  %261 = load i8*, i8** %7, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %276

263:                                              ; preds = %260
  %264 = load i8*, i8** %7, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %263
  %269 = load i8*, i8** %7, align 8
  %270 = call i8* @strtoul(i8* %269, i8** %8, i32 10)
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 10
  store i8* %270, i8** %274, align 8
  %275 = load i8*, i8** %8, align 8
  store i8* %275, i8** %7, align 8
  br label %276

276:                                              ; preds = %268, %263, %260
  %277 = load i8*, i8** %7, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %292

279:                                              ; preds = %276
  %280 = load i8*, i8** %7, align 8
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %279
  %285 = load i8*, i8** %7, align 8
  %286 = call i8* @strtoul(i8* %285, i8** %8, i32 10)
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 9
  store i8* %286, i8** %290, align 8
  %291 = load i8*, i8** %8, align 8
  store i8* %291, i8** %7, align 8
  br label %292

292:                                              ; preds = %284, %279, %276
  %293 = load i8*, i8** %7, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %308

295:                                              ; preds = %292
  %296 = load i8*, i8** %7, align 8
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %295
  %301 = load i8*, i8** %7, align 8
  %302 = call i8* @strtoul(i8* %301, i8** %8, i32 10)
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 8
  store i8* %302, i8** %306, align 8
  %307 = load i8*, i8** %8, align 8
  store i8* %307, i8** %7, align 8
  br label %308

308:                                              ; preds = %300, %295, %292
  %309 = load i8*, i8** %7, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %324

311:                                              ; preds = %308
  %312 = load i8*, i8** %7, align 8
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %311
  %317 = load i8*, i8** %7, align 8
  %318 = call i8* @strtoul(i8* %317, i8** %8, i32 10)
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 7
  store i8* %318, i8** %322, align 8
  %323 = load i8*, i8** %8, align 8
  store i8* %323, i8** %7, align 8
  br label %324

324:                                              ; preds = %316, %311, %308
  %325 = load i8*, i8** %7, align 8
  %326 = icmp ne i8* %325, null
  br i1 %326, label %327, label %340

327:                                              ; preds = %324
  %328 = load i8*, i8** %7, align 8
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %327
  %333 = load i8*, i8** %7, align 8
  %334 = call i8* @strtoul(i8* %333, i8** %8, i32 10)
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 6
  store i8* %334, i8** %338, align 8
  %339 = load i8*, i8** %8, align 8
  store i8* %339, i8** %7, align 8
  br label %340

340:                                              ; preds = %332, %327, %324
  %341 = load i8*, i8** %7, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %356

343:                                              ; preds = %340
  %344 = load i8*, i8** %7, align 8
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %343
  %349 = load i8*, i8** %7, align 8
  %350 = call i8* @strtoul(i8* %349, i8** %8, i32 10)
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 5
  store i8* %350, i8** %354, align 8
  %355 = load i8*, i8** %8, align 8
  store i8* %355, i8** %7, align 8
  br label %356

356:                                              ; preds = %348, %343, %340
  %357 = load i8*, i8** %7, align 8
  %358 = icmp ne i8* %357, null
  br i1 %358, label %359, label %372

359:                                              ; preds = %356
  %360 = load i8*, i8** %7, align 8
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %372

364:                                              ; preds = %359
  %365 = load i8*, i8** %7, align 8
  %366 = call i8* @strtoul(i8* %365, i8** %8, i32 10)
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 4
  store i8* %366, i8** %370, align 8
  %371 = load i8*, i8** %8, align 8
  store i8* %371, i8** %7, align 8
  br label %372

372:                                              ; preds = %364, %359, %356
  %373 = load i8*, i8** %7, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %375, label %388

375:                                              ; preds = %372
  %376 = load i8*, i8** %7, align 8
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %375
  %381 = load i8*, i8** %7, align 8
  %382 = call i8* @strtoul(i8* %381, i8** %8, i32 10)
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 3
  store i8* %382, i8** %386, align 8
  %387 = load i8*, i8** %8, align 8
  store i8* %387, i8** %7, align 8
  br label %388

388:                                              ; preds = %380, %375, %372
  %389 = load i8*, i8** %7, align 8
  %390 = icmp ne i8* %389, null
  br i1 %390, label %391, label %404

391:                                              ; preds = %388
  %392 = load i8*, i8** %7, align 8
  %393 = load i8, i8* %392, align 1
  %394 = sext i8 %393 to i32
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %404

396:                                              ; preds = %391
  %397 = load i8*, i8** %7, align 8
  %398 = call i8* @strtoul(i8* %397, i8** %8, i32 10)
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 2
  store i8* %398, i8** %402, align 8
  %403 = load i8*, i8** %8, align 8
  store i8* %403, i8** %7, align 8
  br label %404

404:                                              ; preds = %396, %391, %388
  %405 = load i8*, i8** %7, align 8
  %406 = icmp ne i8* %405, null
  br i1 %406, label %407, label %420

407:                                              ; preds = %404
  %408 = load i8*, i8** %7, align 8
  %409 = load i8, i8* %408, align 1
  %410 = sext i8 %409 to i32
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %420

412:                                              ; preds = %407
  %413 = load i8*, i8** %7, align 8
  %414 = call i8* @strtoul(i8* %413, i8** %8, i32 10)
  %415 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 1
  store i8* %414, i8** %418, align 8
  %419 = load i8*, i8** %8, align 8
  store i8* %419, i8** %7, align 8
  br label %420

420:                                              ; preds = %412, %407, %404
  %421 = load i8*, i8** %7, align 8
  %422 = icmp ne i8* %421, null
  br i1 %422, label %423, label %436

423:                                              ; preds = %420
  %424 = load i8*, i8** %7, align 8
  %425 = load i8, i8* %424, align 1
  %426 = sext i8 %425 to i32
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %436

428:                                              ; preds = %423
  %429 = load i8*, i8** %7, align 8
  %430 = call i8* @strtoul(i8* %429, i8** %8, i32 10)
  %431 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 0
  store i8* %430, i8** %434, align 8
  %435 = load i8*, i8** %8, align 8
  store i8* %435, i8** %7, align 8
  br label %436

436:                                              ; preds = %428, %423, %420
  br label %437

437:                                              ; preds = %436, %45, %39
  br label %438

438:                                              ; preds = %437, %36
  %439 = load i32*, i32** %4, align 8
  %440 = call i32 @fclose(i32* %439)
  br label %441

441:                                              ; preds = %438, %13
  %442 = load i32, i32* @NO_ERROR, align 4
  store i32 %442, i32* %2, align 4
  br label %443

443:                                              ; preds = %441, %11
  %444 = load i32, i32* %2, align 4
  ret i32 %444
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
