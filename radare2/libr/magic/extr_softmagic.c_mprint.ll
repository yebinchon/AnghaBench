; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_mprint.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_mprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %union.VALUETYPE }
%struct.TYPE_10__ = type { i32, i32, i64 }
%union.VALUETYPE = type { i8* }
%struct.r_magic = type { i32, i8, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@R_MAGIC_DESC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@REGEX_OFFSET_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"invalid m->type (%d) in mprint()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.r_magic*)* @mprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mprint(%struct.TYPE_12__* %0, %struct.r_magic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.r_magic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %union.VALUETYPE*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.r_magic* %1, %struct.r_magic** %5, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  store %union.VALUETYPE* %15, %union.VALUETYPE** %11, align 8
  %16 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %17 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %507 [
    i32 155, label %19
    i32 129, label %65
    i32 157, label %65
    i32 141, label %65
    i32 139, label %114
    i32 161, label %114
    i32 145, label %114
    i32 136, label %114
    i32 132, label %160
    i32 158, label %160
    i32 142, label %160
    i32 128, label %180
    i32 135, label %180
    i32 156, label %180
    i32 140, label %180
    i32 154, label %254
    i32 165, label %254
    i32 149, label %254
    i32 138, label %254
    i32 150, label %271
    i32 162, label %271
    i32 146, label %271
    i32 137, label %271
    i32 134, label %288
    i32 160, label %288
    i32 144, label %288
    i32 133, label %305
    i32 159, label %305
    i32 143, label %305
    i32 151, label %322
    i32 163, label %322
    i32 147, label %322
    i32 152, label %366
    i32 164, label %366
    i32 148, label %366
    i32 131, label %408
    i32 130, label %461
    i32 153, label %493
  ]

19:                                               ; preds = %2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %22 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %23 = bitcast %union.VALUETYPE* %22 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @file_signextend(%struct.TYPE_12__* %20, %struct.r_magic* %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %28 = call i32 @check_fmt(%struct.TYPE_12__* %26, %struct.r_magic* %27)
  switch i32 %28, label %50 [
    i32 -1, label %29
    i32 1, label %30
  ]

29:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %517

30:                                               ; preds = %19
  %31 = call i8* @malloc(i32 2)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sitofp i32 %33 to double
  %35 = call i32 @snprintf(i8* %32, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %34)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @free(i8* %38)
  store i32 -1, i32* %3, align 4
  br label %517

40:                                               ; preds = %30
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = load i32, i32* @R_MAGIC_DESC, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %41, i32 %42, i8* %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @free(i8* %47)
  store i32 -1, i32* %3, align 4
  br label %517

49:                                               ; preds = %40
  br label %58

50:                                               ; preds = %19
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = load i32, i32* @R_MAGIC_DESC, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %51, i32 %52, i32 %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %517

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %49
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, 1
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  br label %513

65:                                               ; preds = %2, %2, %2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %68 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %69 = bitcast %union.VALUETYPE* %68 to i32*
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @file_signextend(%struct.TYPE_12__* %66, %struct.r_magic* %67, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %74 = call i32 @check_fmt(%struct.TYPE_12__* %72, %struct.r_magic* %73)
  switch i32 %74, label %97 [
    i32 -1, label %75
    i32 1, label %76
  ]

75:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %517

76:                                               ; preds = %65
  %77 = call i8* @malloc(i32 32)
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %6, align 4
  %80 = trunc i32 %79 to i16
  %81 = uitofp i16 %80 to double
  %82 = call i32 @snprintf(i8* %78, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double %81)
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @free(i8* %85)
  store i32 -1, i32* %3, align 4
  br label %517

87:                                               ; preds = %76
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = load i32, i32* @R_MAGIC_DESC, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %88, i32 %89, i8* %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @free(i8* %94)
  store i32 -1, i32* %3, align 4
  br label %517

96:                                               ; preds = %87
  br label %107

97:                                               ; preds = %65
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = load i32, i32* @R_MAGIC_DESC, align 4
  %100 = load i32, i32* %6, align 4
  %101 = trunc i32 %100 to i16
  %102 = zext i16 %101 to i32
  %103 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %98, i32 %99, i32 %102)
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 -1, i32* %3, align 4
  br label %517

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %96
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, 2
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %9, align 4
  br label %513

114:                                              ; preds = %2, %2, %2, %2
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %116 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %117 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %118 = bitcast %union.VALUETYPE* %117 to i32*
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @file_signextend(%struct.TYPE_12__* %115, %struct.r_magic* %116, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %123 = call i32 @check_fmt(%struct.TYPE_12__* %121, %struct.r_magic* %122)
  switch i32 %123, label %145 [
    i32 -1, label %124
    i32 1, label %125
  ]

124:                                              ; preds = %114
  store i32 -1, i32* %3, align 4
  br label %517

125:                                              ; preds = %114
  %126 = call i8* @malloc(i32 32)
  store i8* %126, i8** %10, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sitofp i32 %128 to double
  %130 = call i32 @snprintf(i8* %127, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %129)
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @free(i8* %133)
  store i32 -1, i32* %3, align 4
  br label %517

135:                                              ; preds = %125
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %137 = load i32, i32* @R_MAGIC_DESC, align 4
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %136, i32 %137, i8* %138)
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @free(i8* %142)
  store i32 -1, i32* %3, align 4
  br label %517

144:                                              ; preds = %135
  br label %153

145:                                              ; preds = %114
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %147 = load i32, i32* @R_MAGIC_DESC, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %146, i32 %147, i32 %148)
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 -1, i32* %3, align 4
  br label %517

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152, %144
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = add i64 %157, 4
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %9, align 4
  br label %513

160:                                              ; preds = %2, %2, %2
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %163 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %164 = bitcast %union.VALUETYPE* %163 to i32*
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @file_signextend(%struct.TYPE_12__* %161, %struct.r_magic* %162, i32 %165)
  store i32 %166, i32* %6, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = load i32, i32* @R_MAGIC_DESC, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %167, i32 %168, i32 %169)
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  store i32 -1, i32* %3, align 4
  br label %517

173:                                              ; preds = %160
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = add i64 %177, 4
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %9, align 4
  br label %513

180:                                              ; preds = %2, %2, %2, %2
  %181 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %182 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %181, i32 0, i32 1
  %183 = load i8, i8* %182, align 4
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 61
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %188 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %187, i32 0, i32 1
  %189 = load i8, i8* %188, align 4
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 33
  br i1 %191, label %192, label %210

192:                                              ; preds = %186, %180
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %194 = load i32, i32* @R_MAGIC_DESC, align 4
  %195 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %196 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %193, i32 %194, i8* %198)
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %202

201:                                              ; preds = %192
  store i32 -1, i32* %3, align 4
  br label %517

202:                                              ; preds = %192
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %207 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %205, %208
  store i32 %209, i32* %9, align 4
  br label %253

210:                                              ; preds = %186
  %211 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %212 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %210
  %219 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %220 = bitcast %union.VALUETYPE* %219 to i8**
  %221 = load i8*, i8** %220, align 8
  %222 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %223 = bitcast %union.VALUETYPE* %222 to i8**
  %224 = load i8*, i8** %223, align 8
  %225 = call i64 @strcspn(i8* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %226 = getelementptr inbounds i8, i8* %221, i64 %225
  store i8 0, i8* %226, align 1
  br label %227

227:                                              ; preds = %218, %210
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %229 = load i32, i32* @R_MAGIC_DESC, align 4
  %230 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %231 = bitcast %union.VALUETYPE* %230 to i8**
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %228, i32 %229, i8* %232)
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  store i32 -1, i32* %3, align 4
  br label %517

236:                                              ; preds = %227
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %241 = bitcast %union.VALUETYPE* %240 to i8**
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @strlen(i8* %242)
  %244 = add nsw i32 %239, %243
  store i32 %244, i32* %9, align 4
  %245 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %246 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 135
  br i1 %248, label %249, label %252

249:                                              ; preds = %236
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %249, %236
  br label %253

253:                                              ; preds = %252, %202
  br label %513

254:                                              ; preds = %2, %2, %2, %2
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %256 = load i32, i32* @R_MAGIC_DESC, align 4
  %257 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %258 = bitcast %union.VALUETYPE* %257 to i32*
  %259 = load i32, i32* %258, align 8
  %260 = call i8* @file_fmttime(i32 %259, i32 1)
  %261 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %255, i32 %256, i8* %260)
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %264

263:                                              ; preds = %254
  store i32 -1, i32* %3, align 4
  br label %517

264:                                              ; preds = %254
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = add i64 %268, 4
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %9, align 4
  br label %513

271:                                              ; preds = %2, %2, %2, %2
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %273 = load i32, i32* @R_MAGIC_DESC, align 4
  %274 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %275 = bitcast %union.VALUETYPE* %274 to i32*
  %276 = load i32, i32* %275, align 8
  %277 = call i8* @file_fmttime(i32 %276, i32 0)
  %278 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %272, i32 %273, i8* %277)
  %279 = icmp eq i32 %278, -1
  br i1 %279, label %280, label %281

280:                                              ; preds = %271
  store i32 -1, i32* %3, align 4
  br label %517

281:                                              ; preds = %271
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = add i64 %285, 4
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %9, align 4
  br label %513

288:                                              ; preds = %2, %2, %2
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %290 = load i32, i32* @R_MAGIC_DESC, align 4
  %291 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %292 = bitcast %union.VALUETYPE* %291 to i32*
  %293 = load i32, i32* %292, align 8
  %294 = call i8* @file_fmttime(i32 %293, i32 1)
  %295 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %289, i32 %290, i8* %294)
  %296 = icmp eq i32 %295, -1
  br i1 %296, label %297, label %298

297:                                              ; preds = %288
  store i32 -1, i32* %3, align 4
  br label %517

298:                                              ; preds = %288
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = add i64 %302, 4
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %9, align 4
  br label %513

305:                                              ; preds = %2, %2, %2
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %307 = load i32, i32* @R_MAGIC_DESC, align 4
  %308 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %309 = bitcast %union.VALUETYPE* %308 to i32*
  %310 = load i32, i32* %309, align 8
  %311 = call i8* @file_fmttime(i32 %310, i32 0)
  %312 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %306, i32 %307, i8* %311)
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %314, label %315

314:                                              ; preds = %305
  store i32 -1, i32* %3, align 4
  br label %517

315:                                              ; preds = %305
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = sext i32 %318 to i64
  %320 = add i64 %319, 4
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %9, align 4
  br label %513

322:                                              ; preds = %2, %2, %2
  %323 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %324 = bitcast %union.VALUETYPE* %323 to float*
  %325 = load float, float* %324, align 8
  store float %325, float* %7, align 4
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %327 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %328 = call i32 @check_fmt(%struct.TYPE_12__* %326, %struct.r_magic* %327)
  switch i32 %328, label %350 [
    i32 -1, label %329
    i32 1, label %330
  ]

329:                                              ; preds = %322
  store i32 -1, i32* %3, align 4
  br label %517

330:                                              ; preds = %322
  %331 = call i8* @malloc(i32 32)
  store i8* %331, i8** %10, align 8
  %332 = load i8*, i8** %10, align 8
  %333 = load float, float* %7, align 4
  %334 = fpext float %333 to double
  %335 = call i32 @snprintf(i8* %332, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), double %334)
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %330
  %338 = load i8*, i8** %10, align 8
  %339 = call i32 @free(i8* %338)
  store i32 -1, i32* %3, align 4
  br label %517

340:                                              ; preds = %330
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %342 = load i32, i32* @R_MAGIC_DESC, align 4
  %343 = load i8*, i8** %10, align 8
  %344 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %341, i32 %342, i8* %343)
  %345 = icmp eq i32 %344, -1
  br i1 %345, label %346, label %349

346:                                              ; preds = %340
  %347 = load i8*, i8** %10, align 8
  %348 = call i32 @free(i8* %347)
  store i32 -1, i32* %3, align 4
  br label %517

349:                                              ; preds = %340
  br label %359

350:                                              ; preds = %322
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %352 = load i32, i32* @R_MAGIC_DESC, align 4
  %353 = load float, float* %7, align 4
  %354 = fpext float %353 to double
  %355 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %351, i32 %352, double %354)
  %356 = icmp eq i32 %355, -1
  br i1 %356, label %357, label %358

357:                                              ; preds = %350
  store i32 -1, i32* %3, align 4
  br label %517

358:                                              ; preds = %350
  br label %359

359:                                              ; preds = %358, %349
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = sext i32 %362 to i64
  %364 = add i64 %363, 4
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %9, align 4
  br label %513

366:                                              ; preds = %2, %2, %2
  %367 = load %union.VALUETYPE*, %union.VALUETYPE** %11, align 8
  %368 = bitcast %union.VALUETYPE* %367 to double*
  %369 = load double, double* %368, align 8
  store double %369, double* %8, align 8
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %371 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %372 = call i32 @check_fmt(%struct.TYPE_12__* %370, %struct.r_magic* %371)
  switch i32 %372, label %393 [
    i32 -1, label %373
    i32 1, label %374
  ]

373:                                              ; preds = %366
  store i32 -1, i32* %3, align 4
  br label %517

374:                                              ; preds = %366
  %375 = call i8* @malloc(i32 32)
  store i8* %375, i8** %10, align 8
  %376 = load i8*, i8** %10, align 8
  %377 = load double, double* %8, align 8
  %378 = call i32 @snprintf(i8* %376, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), double %377)
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %374
  %381 = load i8*, i8** %10, align 8
  %382 = call i32 @free(i8* %381)
  store i32 -1, i32* %3, align 4
  br label %517

383:                                              ; preds = %374
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %385 = load i32, i32* @R_MAGIC_DESC, align 4
  %386 = load i8*, i8** %10, align 8
  %387 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %384, i32 %385, i8* %386)
  %388 = icmp eq i32 %387, -1
  br i1 %388, label %389, label %392

389:                                              ; preds = %383
  %390 = load i8*, i8** %10, align 8
  %391 = call i32 @free(i8* %390)
  store i32 -1, i32* %3, align 4
  br label %517

392:                                              ; preds = %383
  br label %401

393:                                              ; preds = %366
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %395 = load i32, i32* @R_MAGIC_DESC, align 4
  %396 = load double, double* %8, align 8
  %397 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %394, i32 %395, double %396)
  %398 = icmp eq i32 %397, -1
  br i1 %398, label %399, label %400

399:                                              ; preds = %393
  store i32 -1, i32* %3, align 4
  br label %517

400:                                              ; preds = %393
  br label %401

401:                                              ; preds = %400, %392
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = sext i32 %404 to i64
  %406 = add i64 %405, 8
  %407 = trunc i64 %406 to i32
  store i32 %407, i32* %9, align 4
  br label %513

408:                                              ; preds = %2
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 2
  %412 = load i64, i64* %411, align 8
  %413 = inttoptr i64 %412 to i8*
  %414 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i8* @strdupn(i8* %413, i32 %417)
  store i8* %418, i8** %12, align 8
  %419 = load i8*, i8** %12, align 8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %428, label %421

421:                                              ; preds = %408
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %423 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @file_oomem(%struct.TYPE_12__* %422, i32 %426)
  store i32 -1, i32* %3, align 4
  br label %517

428:                                              ; preds = %408
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %430 = load i32, i32* @R_MAGIC_DESC, align 4
  %431 = load i8*, i8** %12, align 8
  %432 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %429, i32 %430, i8* %431)
  store i32 %432, i32* %13, align 4
  %433 = load i8*, i8** %12, align 8
  %434 = call i32 @free(i8* %433)
  %435 = load i32, i32* %13, align 4
  %436 = icmp eq i32 %435, -1
  br i1 %436, label %437, label %438

437:                                              ; preds = %428
  store i32 -1, i32* %3, align 4
  br label %517

438:                                              ; preds = %428
  %439 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %440 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @REGEX_OFFSET_START, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %450

445:                                              ; preds = %438
  %446 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  store i32 %449, i32* %9, align 4
  br label %460

450:                                              ; preds = %438
  %451 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = add nsw i32 %454, %458
  store i32 %459, i32* %9, align 4
  br label %460

460:                                              ; preds = %450, %445
  br label %513

461:                                              ; preds = %2
  %462 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %463 = load i32, i32* @R_MAGIC_DESC, align 4
  %464 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %465 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %464, i32 0, i32 4
  %466 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i32 0, i32 0
  %467 = load i8*, i8** %466, align 8
  %468 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %462, i32 %463, i8* %467)
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %470, label %471

470:                                              ; preds = %461
  store i32 -1, i32* %3, align 4
  br label %517

471:                                              ; preds = %461
  %472 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %473 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* @REGEX_OFFSET_START, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %471
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 1
  %481 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  store i32 %482, i32* %9, align 4
  br label %492

483:                                              ; preds = %471
  %484 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %489 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %488, i32 0, i32 2
  %490 = load i32, i32* %489, align 8
  %491 = add nsw i32 %487, %490
  store i32 %491, i32* %9, align 4
  br label %492

492:                                              ; preds = %483, %478
  br label %513

493:                                              ; preds = %2
  %494 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %495 = load i32, i32* @R_MAGIC_DESC, align 4
  %496 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %497 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %496, i32 0, i32 4
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i32 0, i32 0
  %499 = load i8*, i8** %498, align 8
  %500 = call i32 (%struct.TYPE_12__*, i32, ...) @file_printf(%struct.TYPE_12__* %494, i32 %495, i8* %499)
  %501 = icmp eq i32 %500, -1
  br i1 %501, label %502, label %503

502:                                              ; preds = %493
  store i32 -1, i32* %3, align 4
  br label %517

503:                                              ; preds = %493
  %504 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  store i32 %506, i32* %9, align 4
  br label %513

507:                                              ; preds = %2
  %508 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %509 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %510 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = call i32 @file_magerror(%struct.TYPE_12__* %508, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %511)
  store i32 -1, i32* %3, align 4
  br label %517

513:                                              ; preds = %503, %492, %460, %401, %359, %315, %298, %281, %264, %253, %173, %153, %107, %58
  %514 = load i8*, i8** %10, align 8
  %515 = call i32 @free(i8* %514)
  %516 = load i32, i32* %9, align 4
  store i32 %516, i32* %3, align 4
  br label %517

517:                                              ; preds = %513, %507, %502, %470, %437, %421, %399, %389, %380, %373, %357, %346, %337, %329, %314, %297, %280, %263, %235, %201, %172, %151, %141, %132, %124, %105, %93, %84, %75, %56, %46, %37, %29
  %518 = load i32, i32* %3, align 4
  ret i32 %518
}

declare dso_local i32 @file_signextend(%struct.TYPE_12__*, %struct.r_magic*, i32) #1

declare dso_local i32 @check_fmt(%struct.TYPE_12__*, %struct.r_magic*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @file_printf(%struct.TYPE_12__*, i32, ...) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @file_fmttime(i32, i32) #1

declare dso_local i8* @strdupn(i8*, i32) #1

declare dso_local i32 @file_oomem(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @file_magerror(%struct.TYPE_12__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
