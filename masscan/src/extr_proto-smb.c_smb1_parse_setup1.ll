; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb1_parse_setup1.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb1_parse_setup1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMBSTUFF = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i8 }
%struct.BannerOutput = type { i32 }

@PROTO_SMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" os=\00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" ver=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" domain=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.SMBSTUFF*, i8*, i64, i64, %struct.BannerOutput*)* @smb1_parse_setup1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb1_parse_setup1(%struct.SMBSTUFF* %0, i8* %1, i64 %2, i64 %3, %struct.BannerOutput* %4) #0 {
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
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %22 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %27 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %25, %30
  %32 = add i64 %20, %31
  %33 = icmp ugt i64 %19, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %5
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %37 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %42 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %40, %45
  %47 = add i64 %35, %46
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %34, %5
  br label %49

49:                                               ; preds = %409, %48
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %412

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  switch i32 %54, label %407 [
    i32 0, label %55
    i32 1, label %66
    i32 2, label %87
    i32 3, label %104
    i32 4, label %125
    i32 5, label %142
    i32 6, label %163
    i32 8, label %180
    i32 10, label %180
    i32 12, label %180
    i32 14, label %180
    i32 16, label %180
    i32 18, label %180
    i32 9, label %191
    i32 11, label %228
    i32 13, label %263
    i32 15, label %300
    i32 17, label %335
    i32 19, label %372
  ]

55:                                               ; preds = %53
  %56 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %57 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 32768
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 8, i32* %12, align 4
  br label %65

64:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %63
  br label %408

66:                                               ; preds = %53
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 3, i32* %12, align 4
  br label %86

74:                                               ; preds = %66
  %75 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %76 = load i32, i32* @PROTO_SMB, align 4
  %77 = load i32, i32* @AUTO_LEN, align 4
  %78 = call i32 @banout_append(%struct.BannerOutput* %75, i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %80 = load i32, i32* @PROTO_SMB, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @banout_append_char(%struct.BannerOutput* %79, i32 %80, i8 zeroext %84)
  store i32 2, i32* %12, align 4
  br label %86

86:                                               ; preds = %74, %73
  br label %408

87:                                               ; preds = %53
  %88 = load i8*, i8** %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 3, i32* %12, align 4
  br label %103

95:                                               ; preds = %87
  %96 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %97 = load i32, i32* @PROTO_SMB, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @banout_append_char(%struct.BannerOutput* %96, i32 %97, i8 zeroext %101)
  br label %103

103:                                              ; preds = %95, %94
  br label %408

104:                                              ; preds = %53
  %105 = load i8*, i8** %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 5, i32* %12, align 4
  br label %124

112:                                              ; preds = %104
  %113 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %114 = load i32, i32* @PROTO_SMB, align 4
  %115 = load i32, i32* @AUTO_LEN, align 4
  %116 = call i32 @banout_append(%struct.BannerOutput* %113, i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %118 = load i32, i32* @PROTO_SMB, align 4
  %119 = load i8*, i8** %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = call i32 @banout_append_char(%struct.BannerOutput* %117, i32 %118, i8 zeroext %122)
  store i32 4, i32* %12, align 4
  br label %124

124:                                              ; preds = %112, %111
  br label %408

125:                                              ; preds = %53
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 5, i32* %12, align 4
  br label %141

133:                                              ; preds = %125
  %134 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %135 = load i32, i32* @PROTO_SMB, align 4
  %136 = load i8*, i8** %7, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = call i32 @banout_append_char(%struct.BannerOutput* %134, i32 %135, i8 zeroext %139)
  br label %141

141:                                              ; preds = %133, %132
  br label %408

142:                                              ; preds = %53
  %143 = load i8*, i8** %7, align 8
  %144 = load i64, i64* %8, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 20, i32* %12, align 4
  br label %162

150:                                              ; preds = %142
  %151 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %152 = load i32, i32* @PROTO_SMB, align 4
  %153 = load i32, i32* @AUTO_LEN, align 4
  %154 = call i32 @banout_append(%struct.BannerOutput* %151, i32 %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %156 = load i32, i32* @PROTO_SMB, align 4
  %157 = load i8*, i8** %7, align 8
  %158 = load i64, i64* %8, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = call i32 @banout_append_char(%struct.BannerOutput* %155, i32 %156, i8 zeroext %160)
  store i32 6, i32* %12, align 4
  br label %162

162:                                              ; preds = %150, %149
  br label %408

163:                                              ; preds = %53
  %164 = load i8*, i8** %7, align 8
  %165 = load i64, i64* %8, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 20, i32* %12, align 4
  br label %179

171:                                              ; preds = %163
  %172 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %173 = load i32, i32* @PROTO_SMB, align 4
  %174 = load i8*, i8** %7, align 8
  %175 = load i64, i64* %8, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = call i32 @banout_append_char(%struct.BannerOutput* %172, i32 %173, i8 zeroext %177)
  br label %179

179:                                              ; preds = %171, %170
  br label %408

180:                                              ; preds = %53, %53, %53, %53, %53, %53
  %181 = load i8*, i8** %7, align 8
  %182 = load i64, i64* %8, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %186 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 4
  store i8 %184, i8* %188, align 4
  %189 = load i32, i32* %12, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %408

191:                                              ; preds = %53
  %192 = load i8*, i8** %7, align 8
  %193 = load i64, i64* %8, align 8
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = shl i32 %196, 8
  %198 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %199 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 4
  %202 = load i8, i8* %201, align 4
  %203 = zext i8 %202 to i32
  %204 = or i32 %203, %197
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %201, align 4
  %206 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %207 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 4
  %210 = load i8, i8* %209, align 4
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %191
  store i32 12, i32* %12, align 4
  br label %227

214:                                              ; preds = %191
  %215 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %216 = load i32, i32* @PROTO_SMB, align 4
  %217 = load i32, i32* @AUTO_LEN, align 4
  %218 = call i32 @banout_append(%struct.BannerOutput* %215, i32 %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %217)
  %219 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %220 = load i32, i32* @PROTO_SMB, align 4
  %221 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %222 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 4
  %225 = load i8, i8* %224, align 4
  %226 = call i32 @banout_append_unicode(%struct.BannerOutput* %219, i32 %220, i8 zeroext %225)
  store i32 10, i32* %12, align 4
  br label %227

227:                                              ; preds = %214, %213
  br label %408

228:                                              ; preds = %53
  %229 = load i8*, i8** %7, align 8
  %230 = load i64, i64* %8, align 8
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = shl i32 %233, 8
  %235 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %236 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 4
  %239 = load i8, i8* %238, align 4
  %240 = zext i8 %239 to i32
  %241 = or i32 %240, %234
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %238, align 4
  %243 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %244 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 4
  %247 = load i8, i8* %246, align 4
  %248 = zext i8 %247 to i32
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %228
  store i32 12, i32* %12, align 4
  br label %262

251:                                              ; preds = %228
  %252 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %253 = load i32, i32* @PROTO_SMB, align 4
  %254 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %255 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 4
  %258 = load i8, i8* %257, align 4
  %259 = call i32 @banout_append_unicode(%struct.BannerOutput* %252, i32 %253, i8 zeroext %258)
  %260 = load i32, i32* %12, align 4
  %261 = add i32 %260, -1
  store i32 %261, i32* %12, align 4
  br label %262

262:                                              ; preds = %251, %250
  br label %408

263:                                              ; preds = %53
  %264 = load i8*, i8** %7, align 8
  %265 = load i64, i64* %8, align 8
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = shl i32 %268, 8
  %270 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %271 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 4
  %274 = load i8, i8* %273, align 4
  %275 = zext i8 %274 to i32
  %276 = or i32 %275, %269
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %273, align 4
  %278 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %279 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 4
  %282 = load i8, i8* %281, align 4
  %283 = zext i8 %282 to i32
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %263
  store i32 16, i32* %12, align 4
  br label %299

286:                                              ; preds = %263
  %287 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %288 = load i32, i32* @PROTO_SMB, align 4
  %289 = load i32, i32* @AUTO_LEN, align 4
  %290 = call i32 @banout_append(%struct.BannerOutput* %287, i32 %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %289)
  %291 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %292 = load i32, i32* @PROTO_SMB, align 4
  %293 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %294 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 4
  %297 = load i8, i8* %296, align 4
  %298 = call i32 @banout_append_unicode(%struct.BannerOutput* %291, i32 %292, i8 zeroext %297)
  store i32 14, i32* %12, align 4
  br label %299

299:                                              ; preds = %286, %285
  br label %408

300:                                              ; preds = %53
  %301 = load i8*, i8** %7, align 8
  %302 = load i64, i64* %8, align 8
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = shl i32 %305, 8
  %307 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %308 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 4
  %311 = load i8, i8* %310, align 4
  %312 = zext i8 %311 to i32
  %313 = or i32 %312, %306
  %314 = trunc i32 %313 to i8
  store i8 %314, i8* %310, align 4
  %315 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %316 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 4
  %319 = load i8, i8* %318, align 4
  %320 = zext i8 %319 to i32
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %300
  store i32 16, i32* %12, align 4
  br label %334

323:                                              ; preds = %300
  %324 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %325 = load i32, i32* @PROTO_SMB, align 4
  %326 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %327 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 4
  %330 = load i8, i8* %329, align 4
  %331 = call i32 @banout_append_unicode(%struct.BannerOutput* %324, i32 %325, i8 zeroext %330)
  %332 = load i32, i32* %12, align 4
  %333 = add i32 %332, -1
  store i32 %333, i32* %12, align 4
  br label %334

334:                                              ; preds = %323, %322
  br label %408

335:                                              ; preds = %53
  %336 = load i8*, i8** %7, align 8
  %337 = load i64, i64* %8, align 8
  %338 = getelementptr inbounds i8, i8* %336, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = shl i32 %340, 8
  %342 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %343 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 4
  %346 = load i8, i8* %345, align 4
  %347 = zext i8 %346 to i32
  %348 = or i32 %347, %341
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %345, align 4
  %350 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %351 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 4
  %354 = load i8, i8* %353, align 4
  %355 = zext i8 %354 to i32
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %335
  store i32 20, i32* %12, align 4
  br label %371

358:                                              ; preds = %335
  %359 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %360 = load i32, i32* @PROTO_SMB, align 4
  %361 = load i32, i32* @AUTO_LEN, align 4
  %362 = call i32 @banout_append(%struct.BannerOutput* %359, i32 %360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %361)
  %363 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %364 = load i32, i32* @PROTO_SMB, align 4
  %365 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %366 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 4
  %369 = load i8, i8* %368, align 4
  %370 = call i32 @banout_append_unicode(%struct.BannerOutput* %363, i32 %364, i8 zeroext %369)
  store i32 18, i32* %12, align 4
  br label %371

371:                                              ; preds = %358, %357
  br label %408

372:                                              ; preds = %53
  %373 = load i8*, i8** %7, align 8
  %374 = load i64, i64* %8, align 8
  %375 = getelementptr inbounds i8, i8* %373, i64 %374
  %376 = load i8, i8* %375, align 1
  %377 = zext i8 %376 to i32
  %378 = shl i32 %377, 8
  %379 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %380 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 4
  %383 = load i8, i8* %382, align 4
  %384 = zext i8 %383 to i32
  %385 = or i32 %384, %378
  %386 = trunc i32 %385 to i8
  store i8 %386, i8* %382, align 4
  %387 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %388 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 4
  %391 = load i8, i8* %390, align 4
  %392 = zext i8 %391 to i32
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %372
  store i32 20, i32* %12, align 4
  br label %406

395:                                              ; preds = %372
  %396 = load %struct.BannerOutput*, %struct.BannerOutput** %10, align 8
  %397 = load i32, i32* @PROTO_SMB, align 4
  %398 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %399 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 4
  %402 = load i8, i8* %401, align 4
  %403 = call i32 @banout_append_unicode(%struct.BannerOutput* %396, i32 %397, i8 zeroext %402)
  %404 = load i32, i32* %12, align 4
  %405 = add i32 %404, -1
  store i32 %405, i32* %12, align 4
  br label %406

406:                                              ; preds = %395, %394
  br label %408

407:                                              ; preds = %53
  br label %408

408:                                              ; preds = %407, %406, %371, %334, %299, %262, %227, %180, %179, %162, %141, %124, %103, %86, %65
  br label %409

409:                                              ; preds = %408
  %410 = load i64, i64* %8, align 8
  %411 = add i64 %410, 1
  store i64 %411, i64* %8, align 8
  br label %49

412:                                              ; preds = %49
  %413 = load i32, i32* %12, align 4
  %414 = trunc i32 %413 to i16
  %415 = zext i16 %414 to i32
  %416 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %417 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 0
  store i32 %415, i32* %419, align 8
  %420 = load i64, i64* %8, align 8
  %421 = load i64, i64* %11, align 8
  %422 = sub i64 %420, %421
  %423 = trunc i64 %422 to i16
  %424 = zext i16 %423 to i64
  %425 = load %struct.SMBSTUFF*, %struct.SMBSTUFF** %6, align 8
  %426 = getelementptr inbounds %struct.SMBSTUFF, %struct.SMBSTUFF* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = add i64 %429, %424
  store i64 %430, i64* %428, align 8
  %431 = load i64, i64* %8, align 8
  %432 = load i64, i64* %11, align 8
  %433 = sub i64 %431, %432
  ret i64 %433
}

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 zeroext) #1

declare dso_local i32 @banout_append_unicode(%struct.BannerOutput*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
