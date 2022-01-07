; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_bochs.c_r_debug_bochs_reg_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_bochs.c_r_debug_bochs_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@bCapturaRegs = common dso_local global i32 0, align 4
@desc = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rip\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"info cpu\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"PC_32\00", align 1
@bAjusta = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"PC_80\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"PC_64\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"[unknown mode]\0A%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sreg\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"es:0x\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"cs:0x\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ss:0x\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ds:0x\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"fs:0x\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"gs:0x\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"base=\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"limit=\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@ripStop = common dso_local global i64 0, align 8
@saveRegs = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64*, i32)* @r_debug_bochs_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_debug_bochs_reg_read(i32* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [19 x i8], align 16
  %11 = alloca [4 x i8], align 1
  %12 = alloca [19 x i8], align 16
  %13 = alloca [19 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [7 x i8*], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @isBochs(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %270

26:                                               ; preds = %4
  %27 = load i32, i32* @bCapturaRegs, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %263

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %31 = call i32 @bochs_send_cmd(%struct.TYPE_3__* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 120, i32* %15, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = call i32 @strlen(i64* %34)
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %125, %29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %16, align 4
  %48 = sub nsw i32 %47, 4
  %49 = icmp slt i32 %46, %48
  br label %50

50:                                               ; preds = %45, %36
  %51 = phi i1 [ false, %36 ], [ %49, %45 ]
  br i1 %51, label %52, label %126

52:                                               ; preds = %50
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 114
  br i1 %60, label %61, label %122

61:                                               ; preds = %52
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 58
  br i1 %70, label %71, label %122

71:                                               ; preds = %61
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = bitcast i64* %78 to i8*
  %80 = call i32 @strncpy(i8* %72, i8* %79, i32 3)
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  store i8 0, i8* %81, align 1
  %82 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 5
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = bitcast i64* %89 to i8*
  %91 = call i32 @strncpy(i8* %82, i8* %90, i32 8)
  %92 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 10
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 14
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = bitcast i64* %99 to i8*
  %101 = call i32 @strncpy(i8* %92, i8* %100, i32 8)
  %102 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0
  store i8 48, i8* %102, align 16
  %103 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 1
  store i8 120, i8* %103, align 1
  %104 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 18
  store i8 0, i8* %104, align 2
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 22
  store i32 %106, i32* %14, align 4
  %107 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0
  %108 = call i32 @r_num_get(i32* null, i8* %107)
  store i32 %108, i32* %17, align 4
  %109 = load i64*, i64** %8, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = call i32 (i64*, ...) @memcpy(i64* %112, i32* %17, i32 8)
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %115 = call i32 @strncmp(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %71
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %18, align 4
  br label %119

119:                                              ; preds = %117, %71
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 8
  store i32 %121, i32* %15, align 4
  br label %125

122:                                              ; preds = %61, %52
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %122, %119
  br label %36

126:                                              ; preds = %50
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %128 = call i32 @bochs_send_cmd(%struct.TYPE_3__* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = bitcast i64* %131 to i8*
  %133 = call i8* @strstr(i8* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  store i32 1, i32* @bAjusta, align 4
  br label %160

136:                                              ; preds = %126
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = bitcast i64* %139 to i8*
  %141 = call i8* @strstr(i8* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 0, i32* @bAjusta, align 4
  br label %159

144:                                              ; preds = %136
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = bitcast i64* %147 to i8*
  %149 = call i8* @strstr(i8* %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  store i32 0, i32* @bAjusta, align 4
  br label %158

152:                                              ; preds = %144
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = bitcast i64* %155 to i8*
  %157 = call i32 @eprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %152, %151
  br label %159

159:                                              ; preds = %158, %143
  br label %160

160:                                              ; preds = %159, %135
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %162 = call i32 @bochs_send_cmd(%struct.TYPE_3__* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 1)
  store i32 56, i32* %15, align 4
  %163 = bitcast [7 x i8*]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %163, i8 0, i64 56, i1 false)
  %164 = bitcast i8* %163 to [7 x i8*]*
  %165 = getelementptr inbounds [7 x i8*], [7 x i8*]* %164, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8** %165, align 16
  %166 = getelementptr inbounds [7 x i8*], [7 x i8*]* %164, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8** %166, align 8
  %167 = getelementptr inbounds [7 x i8*], [7 x i8*]* %164, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8** %167, align 16
  %168 = getelementptr inbounds [7 x i8*], [7 x i8*]* %164, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8** %168, align 8
  %169 = getelementptr inbounds [7 x i8*], [7 x i8*]* %164, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8** %169, align 16
  %170 = getelementptr inbounds [7 x i8*], [7 x i8*]* %164, i32 0, i32 5
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8** %170, align 8
  store i32 0, i32* %21, align 4
  br label %171

171:                                              ; preds = %244, %160
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %247

177:                                              ; preds = %171
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** @desc, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = bitcast i64* %180 to i8*
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = call i8* @strstr(i8* %181, i8* %185)
  store i8* %186, i8** %20, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %243

188:                                              ; preds = %177
  %189 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0
  %190 = load i8*, i8** %20, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 3
  %192 = call i32 @strncpy(i8* %189, i8* %191, i32 7)
  %193 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 6
  store i8 0, i8* %193, align 2
  %194 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0
  %195 = call i32 @r_num_get(i32* null, i8* %194)
  store i32 %195, i32* %17, align 4
  %196 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %197 = load i32, i32* %21, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @strncpy(i8* %196, i8* %200, i32 2)
  %202 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  store i8 0, i8* %202, align 1
  %203 = load i8*, i8** %20, align 8
  %204 = call i8* @strstr(i8* %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  store i8* %204, i8** %20, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %222

206:                                              ; preds = %188
  %207 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 0
  %208 = load i8*, i8** %20, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 5
  %210 = call i32 @strncpy(i8* %207, i8* %209, i32 10)
  %211 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 10
  store i8 0, i8* %211, align 2
  %212 = load i8*, i8** %20, align 8
  %213 = call i8* @strstr(i8* %212, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store i8* %213, i8** %20, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %221

215:                                              ; preds = %206
  %216 = getelementptr inbounds [19 x i8], [19 x i8]* %13, i64 0, i64 0
  %217 = load i8*, i8** %20, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 6
  %219 = call i32 @strncpy(i8* %216, i8* %218, i32 10)
  %220 = getelementptr inbounds [19 x i8], [19 x i8]* %13, i64 0, i64 10
  store i8 0, i8* %220, align 2
  br label %221

221:                                              ; preds = %215, %206
  br label %222

222:                                              ; preds = %221, %188
  %223 = load i64*, i64** %8, align 8
  %224 = load i32, i32* %15, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = call i32 (i64*, ...) @memcpy(i64* %226, i32* %17, i32 2)
  %228 = load i32, i32* %15, align 4
  %229 = add nsw i32 %228, 2
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* @bAjusta, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %222
  %233 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %234 = call i32 @strncmp(i8* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 2)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %17, align 4
  %238 = mul nsw i32 %237, 16
  %239 = load i32, i32* %18, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %18, align 4
  br label %241

241:                                              ; preds = %236, %232
  br label %242

242:                                              ; preds = %241, %222
  br label %243

243:                                              ; preds = %242, %177
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %21, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %21, align 4
  br label %171

247:                                              ; preds = %171
  %248 = load i64, i64* @ripStop, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i64*, i64** %8, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = call i32 (i64*, ...) @memcpy(i64* %252, i64* @ripStop, i32 8)
  br label %258

254:                                              ; preds = %247
  %255 = load i64*, i64** %8, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 0
  %257 = call i32 (i64*, ...) @memcpy(i64* %256, i32* %18, i32 8)
  br label %258

258:                                              ; preds = %254, %250
  %259 = load i64*, i64** @saveRegs, align 8
  %260 = load i64*, i64** %8, align 8
  %261 = load i32, i32* %9, align 4
  %262 = call i32 (i64*, ...) @memcpy(i64* %259, i64* %260, i32 %261)
  store i32 0, i32* @bCapturaRegs, align 4
  br label %268

263:                                              ; preds = %26
  %264 = load i64*, i64** %8, align 8
  %265 = load i64*, i64** @saveRegs, align 8
  %266 = load i32, i32* %9, align 4
  %267 = call i32 (i64*, ...) @memcpy(i64* %264, i64* %265, i32 %266)
  br label %268

268:                                              ; preds = %263, %258
  %269 = load i32, i32* %9, align 4
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %268, %25
  %271 = load i32, i32* %5, align 4
  ret i32 %271
}

declare dso_local i32 @isBochs(i32*) #1

declare dso_local i32 @bochs_send_cmd(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @r_num_get(i32*, i8*) #1

declare dso_local i32 @memcpy(i64*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
