; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb1_parse_negotiate1.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb1_parse_negotiate1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMBSTUFF = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i8 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.BannerOutput = type { i32 }

@PROTO_SMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c" domain=\00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" name=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.SMBSTUFF*, i8*, i64, i64, %struct.BannerOutput*)* @smb1_parse_negotiate1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb1_parse_negotiate1(%struct.SMBSTUFF* %0, i8* %1, i64 %2, i64 %3, %struct.BannerOutput* %4) #0 {
  %6 = alloca %struct.SMBSTUFF*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.BannerOutput*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.SMBSTUFF* %0, %struct.SMBSTUFF** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.BannerOutput* %4, %struct.BannerOutput** %10, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %15 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %22 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %27 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %25, %30
  %32 = add i64 %20, %31
  %33 = icmp ugt i64 %19, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %5
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %37 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %42 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %40, %45
  %47 = add i64 %35, %46
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %34, %5
  br label %49

49:                                               ; preds = %283, %48
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %286

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  switch i32 %54, label %281 [
    i32 0, label %55
    i32 6, label %83
    i32 10, label %83
    i32 7, label %94
    i32 11, label %133
    i32 8, label %172
    i32 12, label %172
    i32 9, label %183
    i32 13, label %183
    i32 1, label %220
    i32 2, label %241
    i32 3, label %262
    i32 4, label %262
  ]

55:                                               ; preds = %53
  %56 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %57 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %64 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 32768
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 6, i32* %12, align 4
  br label %72

71:                                               ; preds = %62
  store i32 1, i32* %12, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %8, align 8
  br label %82

75:                                               ; preds = %55
  %76 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %77 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %75, %72
  br label %282

83:                                               ; preds = %53, %53
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %89 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  store i8 %87, i8* %91, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %282

94:                                               ; preds = %53
  %95 = load i8*, i8** %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 8
  %101 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %102 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 4
  %105 = load i8, i8* %104, align 4
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, %100
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %104, align 4
  %109 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %110 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 4
  %113 = load i8, i8* %112, align 4
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %94
  store i32 10, i32* %12, align 4
  br label %132

117:                                              ; preds = %94
  %118 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %119 = load i32, i32* @PROTO_SMB, align 4
  %120 = load i32, i32* @AUTO_LEN, align 4
  %121 = call i32 @banout_append(%struct.BannerOutput* %118, i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %123 = load i32, i32* @PROTO_SMB, align 4
  %124 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %125 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  %128 = load i8, i8* %127, align 4
  %129 = call i32 @banout_append_unicode(%struct.BannerOutput* %122, i32 %123, i8 zeroext %128)
  %130 = load i32, i32* %12, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %117, %116
  br label %282

133:                                              ; preds = %53
  %134 = load i8*, i8** %7, align 8
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = shl i32 %138, 8
  %140 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %141 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = load i8, i8* %143, align 4
  %145 = zext i8 %144 to i32
  %146 = or i32 %145, %139
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 4
  %148 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %149 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 4
  %152 = load i8, i8* %151, align 4
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %133
  store i32 14, i32* %12, align 4
  br label %171

156:                                              ; preds = %133
  %157 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %158 = load i32, i32* @PROTO_SMB, align 4
  %159 = load i32, i32* @AUTO_LEN, align 4
  %160 = call i32 @banout_append(%struct.BannerOutput* %157, i32 %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  %161 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %162 = load i32, i32* @PROTO_SMB, align 4
  %163 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %164 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 4
  %167 = load i8, i8* %166, align 4
  %168 = call i32 @banout_append_unicode(%struct.BannerOutput* %161, i32 %162, i8 zeroext %167)
  %169 = load i32, i32* %12, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %156, %155
  br label %282

172:                                              ; preds = %53, %53
  %173 = load i8*, i8** %7, align 8
  %174 = load i64, i64* %8, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %178 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 4
  store i8 %176, i8* %180, align 4
  %181 = load i32, i32* %12, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %282

183:                                              ; preds = %53, %53
  %184 = load i8*, i8** %7, align 8
  %185 = load i64, i64* %8, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl i32 %188, 8
  %190 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %191 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 4
  %194 = load i8, i8* %193, align 4
  %195 = zext i8 %194 to i32
  %196 = or i32 %195, %189
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %193, align 4
  %198 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %199 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 4
  %202 = load i8, i8* %201, align 4
  %203 = zext i8 %202 to i32
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %183
  %206 = load i32, i32* %12, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %219

208:                                              ; preds = %183
  %209 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %210 = load i32, i32* @PROTO_SMB, align 4
  %211 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %212 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 4
  %215 = load i8, i8* %214, align 4
  %216 = call i32 @banout_append_unicode(%struct.BannerOutput* %209, i32 %210, i8 zeroext %215)
  %217 = load i32, i32* %12, align 4
  %218 = add i32 %217, -1
  store i32 %218, i32* %12, align 4
  br label %219

219:                                              ; preds = %208, %205
  br label %282

220:                                              ; preds = %53
  %221 = load i8*, i8** %7, align 8
  %222 = load i64, i64* %8, align 8
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  store i32 2, i32* %12, align 4
  br label %240

228:                                              ; preds = %220
  %229 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %230 = load i32, i32* @PROTO_SMB, align 4
  %231 = load i32, i32* @AUTO_LEN, align 4
  %232 = call i32 @banout_append(%struct.BannerOutput* %229, i32 %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %231)
  %233 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %234 = load i32, i32* @PROTO_SMB, align 4
  %235 = load i8*, i8** %7, align 8
  %236 = load i64, i64* %8, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = call i32 @banout_append_char(%struct.BannerOutput* %233, i32 %234, i8 zeroext %238)
  store i32 3, i32* %12, align 4
  br label %240

240:                                              ; preds = %228, %227
  br label %282

241:                                              ; preds = %53
  %242 = load i8*, i8** %7, align 8
  %243 = load i64, i64* %8, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %241
  store i32 14, i32* %12, align 4
  br label %261

249:                                              ; preds = %241
  %250 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %251 = load i32, i32* @PROTO_SMB, align 4
  %252 = load i32, i32* @AUTO_LEN, align 4
  %253 = call i32 @banout_append(%struct.BannerOutput* %250, i32 %251, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %252)
  %254 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %255 = load i32, i32* @PROTO_SMB, align 4
  %256 = load i8*, i8** %7, align 8
  %257 = load i64, i64* %8, align 8
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = call i32 @banout_append_char(%struct.BannerOutput* %254, i32 %255, i8 zeroext %259)
  store i32 4, i32* %12, align 4
  br label %261

261:                                              ; preds = %249, %248
  br label %282

262:                                              ; preds = %53, %53
  %263 = load i8*, i8** %7, align 8
  %264 = load i64, i64* %8, align 8
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = load i32, i32* %12, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %12, align 4
  br label %280

272:                                              ; preds = %262
  %273 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %274 = load i32, i32* @PROTO_SMB, align 4
  %275 = load i8*, i8** %7, align 8
  %276 = load i64, i64* %8, align 8
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = call i32 @banout_append_char(%struct.BannerOutput* %273, i32 %274, i8 zeroext %278)
  br label %280

280:                                              ; preds = %272, %269
  br label %282

281:                                              ; preds = %53
  br label %282

282:                                              ; preds = %281, %280, %261, %240, %219, %172, %171, %132, %83, %82
  br label %283

283:                                              ; preds = %282
  %284 = load i64, i64* %8, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %8, align 8
  br label %49

286:                                              ; preds = %49
  %287 = load i32, i32* %12, align 4
  %288 = trunc i32 %287 to i16
  %289 = zext i16 %288 to i32
  %290 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %291 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  store i32 %289, i32* %293, align 8
  %294 = load i64, i64* %8, align 8
  %295 = load i64, i64* %11, align 8
  %296 = sub i64 %294, %295
  %297 = trunc i64 %296 to i16
  %298 = zext i16 %297 to i64
  %299 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %300 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = add i64 %303, %298
  store i64 %304, i64* %302, align 8
  %305 = load i64, i64* %8, align 8
  %306 = load i64, i64* %11, align 8
  %307 = sub i64 %305, %306
  ret i64 %307
}

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @banout_append_unicode(%struct.BannerOutput*, i32, i8 zeroext) #1

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
