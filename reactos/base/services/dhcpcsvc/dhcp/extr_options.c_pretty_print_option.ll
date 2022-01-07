; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_options.c_pretty_print_option.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_options.c_pretty_print_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.in_addr = type { i32 }

@pretty_print_option.optbuf = internal global [32768 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [33 x i8] c"pretty_print_option: bad code %d\00", align 1
@dhcp_options = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: Excess information in format string: %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: garbage in format string: %s\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s: expecting at least %d bytes; got %d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"<error>\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: %d extra bytes\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%s: %d extra bytes at end of array\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@ANSI_NULL = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Unexpected format code %c\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"dhcp option too large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pretty_print_option(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.in_addr, align 4
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8* getelementptr inbounds ([32768 x i8], [32768 x i8]* @pretty_print_option.optbuf, i64 0, i64 0), i8** %16, align 8
  store i32 32768, i32* %20, align 4
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %21, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ugt i32 %26, 255
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %5
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8 44, i8* %23, align 1
  br label %36

35:                                               ; preds = %31
  store i8 32, i8* %23, align 1
  br label %36

36:                                               ; preds = %35, %34
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %183, %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %186

49:                                               ; preds = %37
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %67)
  br label %186

69:                                               ; preds = %49
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %83
  store i8 %81, i8* %84, align 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  switch i32 %95, label %165 [
    i32 65, label %96
    i32 88, label %102
    i32 116, label %147
    i32 73, label %155
    i32 108, label %155
    i32 76, label %155
    i32 115, label %158
    i32 83, label %158
    i32 98, label %161
    i32 66, label %161
    i32 102, label %161
    i32 101, label %164
  ]

96:                                               ; preds = %69
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %100
  store i8 0, i8* %101, align 1
  store i32 0, i32* %13, align 4
  br label %182

102:                                              ; preds = %69
  store i32 0, i32* %19, align 4
  br label %103

103:                                              ; preds = %125, %102
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @isascii(i8 zeroext %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = call i32 @isprint(i8 zeroext %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %115, %107
  br label %128

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %19, align 4
  br label %103

128:                                              ; preds = %123, %103
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %134
  store i8 116, i8* %135, align 1
  store i32 -2, i32* %13, align 4
  br label %142

136:                                              ; preds = %128
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %138
  store i8 120, i8* %139, align 1
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  store i8 58, i8* %23, align 1
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %136, %132
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %145
  store i8 0, i8* %146, align 1
  br label %182

147:                                              ; preds = %69
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %149
  store i8 116, i8* %150, align 1
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %153
  store i8 0, i8* %154, align 1
  store i32 -2, i32* %13, align 4
  br label %182

155:                                              ; preds = %69, %69, %69
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 4
  store i32 %157, i32* %12, align 4
  br label %182

158:                                              ; preds = %69, %69
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 2
  store i32 %160, i32* %12, align 4
  br label %182

161:                                              ; preds = %69, %69, %69
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %182

164:                                              ; preds = %69
  br label %182

165:                                              ; preds = %69
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %167 = load i32, i32* %7, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %173 = load i32, i32* %7, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %171, i8* %180)
  br label %182

182:                                              ; preds = %165, %164, %161, %158, %155, %147, %142, %96
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %17, align 4
  br label %37

186:                                              ; preds = %52, %37
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %192 = load i32, i32* %7, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %196, i32 %197, i32 %198)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %623

200:                                              ; preds = %186
  %201 = load i32, i32* %13, align 4
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %218

203:                                              ; preds = %200
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %209 = load i32, i32* %7, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %12, align 4
  %216 = sub nsw i32 %214, %215
  %217 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %207, %203, %200
  %219 = load i32, i32* %13, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %12, align 4
  %224 = sdiv i32 %222, %223
  store i32 %224, i32* %13, align 4
  br label %225

225:                                              ; preds = %221, %218
  %226 = load i32, i32* %13, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %225
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %12, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load i32, i32* %9, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %247

234:                                              ; preds = %228
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %236 = load i32, i32* %7, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* %12, align 4
  %244 = mul nsw i32 %242, %243
  %245 = sub nsw i32 %241, %244
  %246 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %240, i32 %245)
  br label %247

247:                                              ; preds = %234, %228, %225
  %248 = load i32, i32* %13, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  store i32 1, i32* %13, align 4
  br label %251

251:                                              ; preds = %250, %247
  store i32 0, i32* %17, align 4
  br label %252

252:                                              ; preds = %617, %251
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %13, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %620

256:                                              ; preds = %252
  store i32 0, i32* %18, align 4
  br label %257

257:                                              ; preds = %598, %256
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %14, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %601

261:                                              ; preds = %257
  %262 = load i32, i32* %18, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  switch i32 %266, label %563 [
    i32 116, label %267
    i32 73, label %373
    i32 108, label %403
    i32 76, label %423
    i32 115, label %443
    i32 83, label %462
    i32 98, label %481
    i32 66, label %499
    i32 120, label %517
    i32 102, label %535
  ]

267:                                              ; preds = %261
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = load i8*, i8** %16, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %16, align 8
  store i8 34, i8* %271, align 1
  %273 = load i32, i32* %20, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %20, align 4
  br label %275

275:                                              ; preds = %270, %267
  br label %276

276:                                              ; preds = %360, %275
  %277 = load i8*, i8** %21, align 8
  %278 = load i8*, i8** %8, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = icmp ult i8* %277, %281
  br i1 %282, label %283, label %363

283:                                              ; preds = %276
  %284 = load i8*, i8** %21, align 8
  %285 = load i8, i8* %284, align 1
  %286 = call i32 @isascii(i8 zeroext %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load i8*, i8** %21, align 8
  %290 = load i8, i8* %289, align 1
  %291 = call i32 @isprint(i8 zeroext %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %317, label %293

293:                                              ; preds = %288, %283
  %294 = load i8*, i8** %21, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  %296 = load i8*, i8** %8, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  %300 = icmp ne i8* %295, %299
  br i1 %300, label %306, label %301

301:                                              ; preds = %293
  %302 = load i8*, i8** %21, align 8
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %301, %293
  %307 = load i8*, i8** %16, align 8
  %308 = load i32, i32* %20, align 4
  %309 = load i8*, i8** %21, align 8
  %310 = load i8, i8* %309, align 1
  %311 = call i32 @_snprintf(i8* %307, i32 %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8 signext %310)
  %312 = load i8*, i8** %16, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 4
  store i8* %313, i8** %16, align 8
  %314 = load i32, i32* %20, align 4
  %315 = sub nsw i32 %314, 4
  store i32 %315, i32* %20, align 4
  br label %316

316:                                              ; preds = %306, %301
  br label %359

317:                                              ; preds = %288
  %318 = load i8*, i8** %21, align 8
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = icmp eq i32 %320, 34
  br i1 %321, label %342, label %322

322:                                              ; preds = %317
  %323 = load i8*, i8** %21, align 8
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp eq i32 %325, 39
  br i1 %326, label %342, label %327

327:                                              ; preds = %322
  %328 = load i8*, i8** %21, align 8
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  %331 = icmp eq i32 %330, 36
  br i1 %331, label %342, label %332

332:                                              ; preds = %327
  %333 = load i8*, i8** %21, align 8
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = icmp eq i32 %335, 96
  br i1 %336, label %342, label %337

337:                                              ; preds = %332
  %338 = load i8*, i8** %21, align 8
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = icmp eq i32 %340, 92
  br i1 %341, label %342, label %351

342:                                              ; preds = %337, %332, %327, %322, %317
  %343 = load i8*, i8** %16, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %16, align 8
  store i8 92, i8* %343, align 1
  %345 = load i8*, i8** %21, align 8
  %346 = load i8, i8* %345, align 1
  %347 = load i8*, i8** %16, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %16, align 8
  store i8 %346, i8* %347, align 1
  %349 = load i32, i32* %20, align 4
  %350 = sub nsw i32 %349, 2
  store i32 %350, i32* %20, align 4
  br label %358

351:                                              ; preds = %337
  %352 = load i8*, i8** %21, align 8
  %353 = load i8, i8* %352, align 1
  %354 = load i8*, i8** %16, align 8
  %355 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %355, i8** %16, align 8
  store i8 %353, i8* %354, align 1
  %356 = load i32, i32* %20, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %20, align 4
  br label %358

358:                                              ; preds = %351, %342
  br label %359

359:                                              ; preds = %358, %316
  br label %360

360:                                              ; preds = %359
  %361 = load i8*, i8** %21, align 8
  %362 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %362, i8** %21, align 8
  br label %276

363:                                              ; preds = %276
  %364 = load i32, i32* %11, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %363
  %367 = load i8*, i8** %16, align 8
  %368 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %368, i8** %16, align 8
  store i8 34, i8* %367, align 1
  %369 = load i32, i32* %20, align 4
  %370 = add nsw i32 %369, -1
  store i32 %370, i32* %20, align 4
  br label %371

371:                                              ; preds = %366, %363
  %372 = load i8*, i8** %16, align 8
  store i8 0, i8* %372, align 1
  br label %570

373:                                              ; preds = %261
  %374 = load i8*, i8** %21, align 8
  %375 = call i64 @getULong(i8* %374)
  %376 = call i32 @htonl(i64 %375)
  %377 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  store i32 %376, i32* %377, align 4
  %378 = load i8*, i8** %16, align 8
  %379 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i8* @inet_ntoa(i32 %380)
  %382 = load i32, i32* %20, align 4
  %383 = sub nsw i32 %382, 1
  %384 = call i32 @strncpy(i8* %378, i8* %381, i32 %383)
  %385 = load i8, i8* @ANSI_NULL, align 1
  %386 = load i8*, i8** %16, align 8
  %387 = load i32, i32* %20, align 4
  %388 = sub nsw i32 %387, 1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %386, i64 %389
  store i8 %385, i8* %390, align 1
  %391 = load i8*, i8** %16, align 8
  %392 = call i32 @strlen(i8* %391)
  store i32 %392, i32* %24, align 4
  %393 = load i32, i32* %24, align 4
  %394 = load i32, i32* %20, align 4
  %395 = icmp sge i32 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %373
  br label %621

397:                                              ; preds = %373
  %398 = load i32, i32* %24, align 4
  %399 = load i32, i32* %20, align 4
  %400 = sub nsw i32 %399, %398
  store i32 %400, i32* %20, align 4
  %401 = load i8*, i8** %21, align 8
  %402 = getelementptr inbounds i8, i8* %401, i64 4
  store i8* %402, i8** %21, align 8
  br label %570

403:                                              ; preds = %261
  %404 = load i8*, i8** %16, align 8
  %405 = load i32, i32* %20, align 4
  %406 = load i8*, i8** %21, align 8
  %407 = call i64 @getLong(i8* %406)
  %408 = trunc i64 %407 to i8
  %409 = call i32 @_snprintf(i8* %404, i32 %405, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8 signext %408)
  store i32 %409, i32* %24, align 4
  %410 = load i32, i32* %24, align 4
  %411 = load i32, i32* %20, align 4
  %412 = icmp sge i32 %410, %411
  br i1 %412, label %416, label %413

413:                                              ; preds = %403
  %414 = load i32, i32* %24, align 4
  %415 = icmp eq i32 %414, -1
  br i1 %415, label %416, label %417

416:                                              ; preds = %413, %403
  br label %621

417:                                              ; preds = %413
  %418 = load i32, i32* %24, align 4
  %419 = load i32, i32* %20, align 4
  %420 = sub nsw i32 %419, %418
  store i32 %420, i32* %20, align 4
  %421 = load i8*, i8** %21, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 4
  store i8* %422, i8** %21, align 8
  br label %570

423:                                              ; preds = %261
  %424 = load i8*, i8** %16, align 8
  %425 = load i32, i32* %20, align 4
  %426 = load i8*, i8** %21, align 8
  %427 = call i64 @getULong(i8* %426)
  %428 = trunc i64 %427 to i8
  %429 = call i32 @_snprintf(i8* %424, i32 %425, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8 signext %428)
  store i32 %429, i32* %24, align 4
  %430 = load i32, i32* %24, align 4
  %431 = load i32, i32* %20, align 4
  %432 = icmp sge i32 %430, %431
  br i1 %432, label %436, label %433

433:                                              ; preds = %423
  %434 = load i32, i32* %24, align 4
  %435 = icmp eq i32 %434, -1
  br i1 %435, label %436, label %437

436:                                              ; preds = %433, %423
  br label %621

437:                                              ; preds = %433
  %438 = load i32, i32* %24, align 4
  %439 = load i32, i32* %20, align 4
  %440 = sub nsw i32 %439, %438
  store i32 %440, i32* %20, align 4
  %441 = load i8*, i8** %21, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 4
  store i8* %442, i8** %21, align 8
  br label %570

443:                                              ; preds = %261
  %444 = load i8*, i8** %16, align 8
  %445 = load i32, i32* %20, align 4
  %446 = load i8*, i8** %21, align 8
  %447 = call signext i8 @getShort(i8* %446)
  %448 = call i32 @_snprintf(i8* %444, i32 %445, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8 signext %447)
  store i32 %448, i32* %24, align 4
  %449 = load i32, i32* %24, align 4
  %450 = load i32, i32* %20, align 4
  %451 = icmp sge i32 %449, %450
  br i1 %451, label %455, label %452

452:                                              ; preds = %443
  %453 = load i32, i32* %24, align 4
  %454 = icmp eq i32 %453, -1
  br i1 %454, label %455, label %456

455:                                              ; preds = %452, %443
  br label %621

456:                                              ; preds = %452
  %457 = load i32, i32* %24, align 4
  %458 = load i32, i32* %20, align 4
  %459 = sub nsw i32 %458, %457
  store i32 %459, i32* %20, align 4
  %460 = load i8*, i8** %21, align 8
  %461 = getelementptr inbounds i8, i8* %460, i64 2
  store i8* %461, i8** %21, align 8
  br label %570

462:                                              ; preds = %261
  %463 = load i8*, i8** %16, align 8
  %464 = load i32, i32* %20, align 4
  %465 = load i8*, i8** %21, align 8
  %466 = call signext i8 @getUShort(i8* %465)
  %467 = call i32 @_snprintf(i8* %463, i32 %464, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8 signext %466)
  store i32 %467, i32* %24, align 4
  %468 = load i32, i32* %24, align 4
  %469 = load i32, i32* %20, align 4
  %470 = icmp sge i32 %468, %469
  br i1 %470, label %474, label %471

471:                                              ; preds = %462
  %472 = load i32, i32* %24, align 4
  %473 = icmp eq i32 %472, -1
  br i1 %473, label %474, label %475

474:                                              ; preds = %471, %462
  br label %621

475:                                              ; preds = %471
  %476 = load i32, i32* %24, align 4
  %477 = load i32, i32* %20, align 4
  %478 = sub nsw i32 %477, %476
  store i32 %478, i32* %20, align 4
  %479 = load i8*, i8** %21, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 2
  store i8* %480, i8** %21, align 8
  br label %570

481:                                              ; preds = %261
  %482 = load i8*, i8** %16, align 8
  %483 = load i32, i32* %20, align 4
  %484 = load i8*, i8** %21, align 8
  %485 = getelementptr inbounds i8, i8* %484, i32 1
  store i8* %485, i8** %21, align 8
  %486 = load i8, i8* %484, align 1
  %487 = call i32 @_snprintf(i8* %482, i32 %483, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8 signext %486)
  store i32 %487, i32* %24, align 4
  %488 = load i32, i32* %24, align 4
  %489 = load i32, i32* %20, align 4
  %490 = icmp sge i32 %488, %489
  br i1 %490, label %494, label %491

491:                                              ; preds = %481
  %492 = load i32, i32* %24, align 4
  %493 = icmp eq i32 %492, -1
  br i1 %493, label %494, label %495

494:                                              ; preds = %491, %481
  br label %621

495:                                              ; preds = %491
  %496 = load i32, i32* %24, align 4
  %497 = load i32, i32* %20, align 4
  %498 = sub nsw i32 %497, %496
  store i32 %498, i32* %20, align 4
  br label %570

499:                                              ; preds = %261
  %500 = load i8*, i8** %16, align 8
  %501 = load i32, i32* %20, align 4
  %502 = load i8*, i8** %21, align 8
  %503 = getelementptr inbounds i8, i8* %502, i32 1
  store i8* %503, i8** %21, align 8
  %504 = load i8, i8* %502, align 1
  %505 = call i32 @_snprintf(i8* %500, i32 %501, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8 signext %504)
  store i32 %505, i32* %24, align 4
  %506 = load i32, i32* %24, align 4
  %507 = load i32, i32* %20, align 4
  %508 = icmp sge i32 %506, %507
  br i1 %508, label %512, label %509

509:                                              ; preds = %499
  %510 = load i32, i32* %24, align 4
  %511 = icmp eq i32 %510, -1
  br i1 %511, label %512, label %513

512:                                              ; preds = %509, %499
  br label %621

513:                                              ; preds = %509
  %514 = load i32, i32* %24, align 4
  %515 = load i32, i32* %20, align 4
  %516 = sub nsw i32 %515, %514
  store i32 %516, i32* %20, align 4
  br label %570

517:                                              ; preds = %261
  %518 = load i8*, i8** %16, align 8
  %519 = load i32, i32* %20, align 4
  %520 = load i8*, i8** %21, align 8
  %521 = getelementptr inbounds i8, i8* %520, i32 1
  store i8* %521, i8** %21, align 8
  %522 = load i8, i8* %520, align 1
  %523 = call i32 @_snprintf(i8* %518, i32 %519, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8 signext %522)
  store i32 %523, i32* %24, align 4
  %524 = load i32, i32* %24, align 4
  %525 = load i32, i32* %20, align 4
  %526 = icmp sge i32 %524, %525
  br i1 %526, label %530, label %527

527:                                              ; preds = %517
  %528 = load i32, i32* %24, align 4
  %529 = icmp eq i32 %528, -1
  br i1 %529, label %530, label %531

530:                                              ; preds = %527, %517
  br label %621

531:                                              ; preds = %527
  %532 = load i32, i32* %24, align 4
  %533 = load i32, i32* %20, align 4
  %534 = sub nsw i32 %533, %532
  store i32 %534, i32* %20, align 4
  br label %570

535:                                              ; preds = %261
  %536 = load i8*, i8** %16, align 8
  %537 = load i8*, i8** %21, align 8
  %538 = getelementptr inbounds i8, i8* %537, i32 1
  store i8* %538, i8** %21, align 8
  %539 = load i8, i8* %537, align 1
  %540 = zext i8 %539 to i32
  %541 = icmp ne i32 %540, 0
  %542 = zext i1 %541 to i64
  %543 = select i1 %541, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)
  %544 = load i32, i32* %20, align 4
  %545 = sub nsw i32 %544, 1
  %546 = call i32 @strncpy(i8* %536, i8* %543, i32 %545)
  %547 = sext i32 %546 to i64
  %548 = trunc i64 %547 to i32
  store i32 %548, i32* %24, align 4
  %549 = load i8, i8* @ANSI_NULL, align 1
  %550 = load i8*, i8** %16, align 8
  %551 = load i32, i32* %20, align 4
  %552 = sub nsw i32 %551, 1
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8, i8* %550, i64 %553
  store i8 %549, i8* %554, align 1
  %555 = load i32, i32* %24, align 4
  %556 = load i32, i32* %20, align 4
  %557 = icmp sge i32 %555, %556
  br i1 %557, label %558, label %559

558:                                              ; preds = %535
  br label %621

559:                                              ; preds = %535
  %560 = load i32, i32* %24, align 4
  %561 = load i32, i32* %20, align 4
  %562 = sub nsw i32 %561, %560
  store i32 %562, i32* %20, align 4
  br label %570

563:                                              ; preds = %261
  %564 = load i32, i32* %18, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %565
  %567 = load i8, i8* %566, align 1
  %568 = sext i8 %567 to i32
  %569 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %568)
  br label %570

570:                                              ; preds = %563, %559, %531, %513, %495, %475, %456, %437, %417, %397, %371
  %571 = load i8*, i8** %16, align 8
  %572 = call i32 @strlen(i8* %571)
  %573 = load i8*, i8** %16, align 8
  %574 = sext i32 %572 to i64
  %575 = getelementptr inbounds i8, i8* %573, i64 %574
  store i8* %575, i8** %16, align 8
  %576 = load i8*, i8** %16, align 8
  %577 = call i32 @strlen(i8* %576)
  %578 = load i32, i32* %20, align 4
  %579 = sub nsw i32 %578, %577
  store i32 %579, i32* %20, align 4
  %580 = load i32, i32* %20, align 4
  %581 = icmp slt i32 %580, 1
  br i1 %581, label %582, label %583

582:                                              ; preds = %570
  br label %621

583:                                              ; preds = %570
  %584 = load i32, i32* %18, align 4
  %585 = add nsw i32 %584, 1
  %586 = load i32, i32* %14, align 4
  %587 = icmp slt i32 %585, %586
  br i1 %587, label %588, label %597

588:                                              ; preds = %583
  %589 = load i8, i8* %23, align 1
  %590 = sext i8 %589 to i32
  %591 = icmp ne i32 %590, 58
  br i1 %591, label %592, label %597

592:                                              ; preds = %588
  %593 = load i8*, i8** %16, align 8
  %594 = getelementptr inbounds i8, i8* %593, i32 1
  store i8* %594, i8** %16, align 8
  store i8 32, i8* %593, align 1
  %595 = load i32, i32* %20, align 4
  %596 = add nsw i32 %595, -1
  store i32 %596, i32* %20, align 4
  br label %597

597:                                              ; preds = %592, %588, %583
  br label %598

598:                                              ; preds = %597
  %599 = load i32, i32* %18, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %18, align 4
  br label %257

601:                                              ; preds = %257
  %602 = load i32, i32* %17, align 4
  %603 = add nsw i32 %602, 1
  %604 = load i32, i32* %13, align 4
  %605 = icmp slt i32 %603, %604
  br i1 %605, label %606, label %612

606:                                              ; preds = %601
  %607 = load i8, i8* %23, align 1
  %608 = load i8*, i8** %16, align 8
  %609 = getelementptr inbounds i8, i8* %608, i32 1
  store i8* %609, i8** %16, align 8
  store i8 %607, i8* %608, align 1
  %610 = load i32, i32* %20, align 4
  %611 = add nsw i32 %610, -1
  store i32 %611, i32* %20, align 4
  br label %612

612:                                              ; preds = %606, %601
  %613 = load i32, i32* %20, align 4
  %614 = icmp slt i32 %613, 1
  br i1 %614, label %615, label %616

615:                                              ; preds = %612
  br label %621

616:                                              ; preds = %612
  br label %617

617:                                              ; preds = %616
  %618 = load i32, i32* %17, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %17, align 4
  br label %252

620:                                              ; preds = %252
  store i8* getelementptr inbounds ([32768 x i8], [32768 x i8]* @pretty_print_option.optbuf, i64 0, i64 0), i8** %6, align 8
  br label %623

621:                                              ; preds = %615, %582, %558, %530, %512, %494, %474, %455, %436, %416, %396
  %622 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %623

623:                                              ; preds = %621, %620, %190
  %624 = load i8*, i8** %6, align 8
  ret i8* %624
}

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @isascii(i8 zeroext) #1

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local i32 @_snprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @getULong(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @getLong(i8*) #1

declare dso_local signext i8 @getShort(i8*) #1

declare dso_local signext i8 @getUShort(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
