; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_mtd.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_mtd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ARGS = common dso_local global i32 0, align 4
@buflen = common dso_local global i64 0, align 8
@quiet = common dso_local global i64 0, align 8
@no_erase = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"frnqe:d:s:j:p:o:c:t:l:\00", align 1
@optarg = common dso_local global i8* null, align 8
@jffs2file = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@jffs2_skip_bytes = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"-s: illegal numeric string\0A\00", align 1
@jffs2dir = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"-p: illegal numeric string\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"-l: illegal numeric string\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"-o: illegal numeric string\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"-c: illegal numeric string\0A\00", align 1
@tpl_uboot_args_part = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"unlock\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"erase\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"resetbc\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"fixtrx\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"fixseama\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"fixwrg\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"fixwrgg\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@imagefile = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"Couldn't open image file: %s!\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Can't open device for writing!\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Image check failed.\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"jffs2write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @MAX_ARGS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32 -1, i32* %20, align 4
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* null, i8** %25, align 16
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* @buflen, align 8
  store i64 0, i64* @quiet, align 8
  store i32 0, i32* @no_erase, align 4
  br label %26

26:                                               ; preds = %128, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %129

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %126 [
    i32 102, label %33
    i32 114, label %34
    i32 110, label %35
    i32 106, label %36
    i32 115, label %38
    i32 113, label %48
    i32 101, label %51
    i32 100, label %77
    i32 112, label %79
    i32 108, label %90
    i32 111, label %101
    i32 99, label %112
    i32 116, label %123
    i32 63, label %125
  ]

33:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %128

34:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %128

35:                                               ; preds = %31
  store i32 1, i32* @no_erase, align 4
  br label %128

36:                                               ; preds = %31
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** @jffs2file, align 8
  br label %128

38:                                               ; preds = %31
  store i32 0, i32* @errno, align 4
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i8* @strtoul(i8* %39, i32 0, i32 0)
  store i8* %40, i8** @jffs2_skip_bytes, align 8
  %41 = load i32, i32* @errno, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %43, %38
  br label %128

48:                                               ; preds = %31
  %49 = load i64, i64* @quiet, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* @quiet, align 8
  br label %128

51:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %24, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @MAX_ARGS, align 4
  %62 = icmp slt i32 %60, %61
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi i1 [ false, %52 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %52

68:                                               ; preds = %63
  %69 = load i8*, i8** @optarg, align 8
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8*, i8** %24, i64 %72
  store i8* %69, i8** %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %24, i64 %75
  store i8* null, i8** %76, align 8
  br label %128

77:                                               ; preds = %31
  %78 = load i8*, i8** @optarg, align 8
  store i8* %78, i8** @jffs2dir, align 8
  br label %128

79:                                               ; preds = %31
  store i32 0, i32* @errno, align 4
  %80 = load i8*, i8** @optarg, align 8
  %81 = call i8* @strtoul(i8* %80, i32 0, i32 0)
  %82 = ptrtoint i8* %81 to i64
  store i64 %82, i64* %18, align 8
  %83 = load i32, i32* @errno, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %85, %79
  br label %128

90:                                               ; preds = %31
  store i32 0, i32* @errno, align 4
  %91 = load i8*, i8** @optarg, align 8
  %92 = call i8* @strtoul(i8* %91, i32 0, i32 0)
  %93 = ptrtoint i8* %92 to i64
  store i64 %93, i64* %19, align 8
  %94 = load i32, i32* @errno, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %96, %90
  br label %128

101:                                              ; preds = %31
  store i32 0, i32* @errno, align 4
  %102 = load i8*, i8** @optarg, align 8
  %103 = call i8* @strtoul(i8* %102, i32 0, i32 0)
  %104 = ptrtoint i8* %103 to i64
  store i64 %104, i64* %16, align 8
  %105 = load i32, i32* @errno, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 (...) @usage()
  br label %111

111:                                              ; preds = %107, %101
  br label %128

112:                                              ; preds = %31
  store i32 0, i32* @errno, align 4
  %113 = load i8*, i8** @optarg, align 8
  %114 = call i8* @strtoul(i8* %113, i32 0, i32 0)
  %115 = ptrtoint i8* %114 to i64
  store i64 %115, i64* %17, align 8
  %116 = load i32, i32* @errno, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %121 = call i32 (...) @usage()
  br label %122

122:                                              ; preds = %118, %112
  br label %128

123:                                              ; preds = %31
  %124 = load i8*, i8** @optarg, align 8
  store i8* %124, i8** @tpl_uboot_args_part, align 8
  br label %128

125:                                              ; preds = %31
  br label %126

126:                                              ; preds = %31, %125
  %127 = call i32 (...) @usage()
  br label %128

128:                                              ; preds = %126, %123, %122, %111, %100, %89, %77, %68, %48, %47, %36, %35, %34, %33
  br label %26

129:                                              ; preds = %26
  %130 = load i64, i64* @optind, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = sub nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %4, align 4
  %135 = load i64, i64* @optind, align 8
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 %135
  store i8** %137, i8*** %5, align 8
  %138 = load i32, i32* %4, align 4
  %139 = icmp slt i32 %138, 2
  br i1 %139, label %140, label %142

140:                                              ; preds = %129
  %141 = call i32 (...) @usage()
  br label %142

142:                                              ; preds = %140, %129
  %143 = load i8**, i8*** %5, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strcmp(i8* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load i32, i32* %4, align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  store i32 2, i32* %20, align 4
  %152 = load i8**, i8*** %5, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 1
  %154 = load i8*, i8** %153, align 8
  store i8* %154, i8** %14, align 8
  br label %359

155:                                              ; preds = %148, %142
  %156 = load i8**, i8*** %5, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @strcmp(i8* %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %155
  %162 = load i32, i32* %4, align 4
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  store i32 0, i32* %20, align 4
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 1
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %14, align 8
  br label %358

168:                                              ; preds = %161, %155
  %169 = load i8**, i8*** %5, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %168
  %175 = load i32, i32* %4, align 4
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  br i1 true, label %178, label %182

178:                                              ; preds = %177
  store i32 10, i32* %20, align 4
  %179 = load i8**, i8*** %5, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 1
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %14, align 8
  br label %357

182:                                              ; preds = %177, %174, %168
  %183 = load i8**, i8*** %5, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @strcmp(i8* %185, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %182
  %189 = load i32, i32* %4, align 4
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  br i1 true, label %192, label %196

192:                                              ; preds = %191
  store i32 4, i32* %20, align 4
  %193 = load i8**, i8*** %5, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 1
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %14, align 8
  br label %356

196:                                              ; preds = %191, %188, %182
  %197 = load i8**, i8*** %5, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @strcmp(i8* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %196
  %203 = load i32, i32* %4, align 4
  %204 = icmp eq i32 %203, 2
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  br i1 true, label %206, label %210

206:                                              ; preds = %205
  store i32 5, i32* %20, align 4
  %207 = load i8**, i8*** %5, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 1
  %209 = load i8*, i8** %208, align 8
  store i8* %209, i8** %14, align 8
  br label %355

210:                                              ; preds = %205, %202, %196
  %211 = load i8**, i8*** %5, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i64 @strcmp(i8* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %210
  %217 = load i32, i32* %4, align 4
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  br i1 true, label %220, label %224

220:                                              ; preds = %219
  store i32 6, i32* %20, align 4
  %221 = load i8**, i8*** %5, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i64 1
  %223 = load i8*, i8** %222, align 8
  store i8* %223, i8** %14, align 8
  br label %354

224:                                              ; preds = %219, %216, %210
  %225 = load i8**, i8*** %5, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i64 @strcmp(i8* %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %224
  %231 = load i32, i32* %4, align 4
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  br i1 true, label %234, label %238

234:                                              ; preds = %233
  store i32 7, i32* %20, align 4
  %235 = load i8**, i8*** %5, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 1
  %237 = load i8*, i8** %236, align 8
  store i8* %237, i8** %14, align 8
  br label %353

238:                                              ; preds = %233, %230, %224
  %239 = load i8**, i8*** %5, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i64 @strcmp(i8* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %238
  %245 = load i32, i32* %4, align 4
  %246 = icmp eq i32 %245, 3
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  store i32 8, i32* %20, align 4
  %248 = load i8**, i8*** %5, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 1
  %250 = load i8*, i8** %249, align 8
  store i8* %250, i8** @imagefile, align 8
  %251 = load i8**, i8*** %5, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 2
  %253 = load i8*, i8** %252, align 8
  store i8* %253, i8** %14, align 8
  br label %352

254:                                              ; preds = %244, %238
  %255 = load i8**, i8*** %5, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 0
  %257 = load i8*, i8** %256, align 8
  %258 = call i64 @strcmp(i8* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %254
  %261 = load i32, i32* %4, align 4
  %262 = icmp eq i32 %261, 2
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  store i32 9, i32* %20, align 4
  %264 = load i8**, i8*** %5, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 1
  %266 = load i8*, i8** %265, align 8
  store i8* %266, i8** %14, align 8
  br label %351

267:                                              ; preds = %260, %254
  %268 = load i8**, i8*** %5, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 0
  %270 = load i8*, i8** %269, align 8
  %271 = call i64 @strcmp(i8* %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %323

273:                                              ; preds = %267
  %274 = load i32, i32* %4, align 4
  %275 = icmp eq i32 %274, 3
  br i1 %275, label %276, label %323

276:                                              ; preds = %273
  store i32 1, i32* %20, align 4
  %277 = load i8**, i8*** %5, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 2
  %279 = load i8*, i8** %278, align 8
  store i8* %279, i8** %14, align 8
  %280 = load i8**, i8*** %5, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 1
  %282 = load i8*, i8** %281, align 8
  %283 = call i64 @strcmp(i8* %282, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %276
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** @imagefile, align 8
  store i32 0, i32* %9, align 4
  br label %302

286:                                              ; preds = %276
  %287 = load i8**, i8*** %5, align 8
  %288 = getelementptr inbounds i8*, i8** %287, i64 1
  %289 = load i8*, i8** %288, align 8
  store i8* %289, i8** @imagefile, align 8
  %290 = load i8**, i8*** %5, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 1
  %292 = load i8*, i8** %291, align 8
  %293 = load i32, i32* @O_RDONLY, align 4
  %294 = call i32 @open(i8* %292, i32 %293)
  store i32 %294, i32* %9, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %286
  %297 = load i32, i32* @stderr, align 4
  %298 = load i8*, i8** @imagefile, align 8
  %299 = call i32 (i32, i8*, ...) @fprintf(i32 %297, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %298)
  %300 = call i32 @exit(i32 1) #4
  unreachable

301:                                              ; preds = %286
  br label %302

302:                                              ; preds = %301, %285
  %303 = load i8*, i8** %14, align 8
  %304 = call i32 @mtd_check(i8* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = load i32, i32* @stderr, align 4
  %308 = call i32 (i32, i8*, ...) @fprintf(i32 %307, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %309 = call i32 @exit(i32 1) #4
  unreachable

310:                                              ; preds = %302
  %311 = load i32, i32* %9, align 4
  %312 = load i8*, i8** %14, align 8
  %313 = call i32 @image_check(i32 %311, i8* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %322, label %315

315:                                              ; preds = %310
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* @stderr, align 4
  %320 = call i32 (i32, i8*, ...) @fprintf(i32 %319, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %321 = call i32 @exit(i32 1) #4
  unreachable

322:                                              ; preds = %315, %310
  br label %350

323:                                              ; preds = %273, %267
  %324 = load i8**, i8*** %5, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 0
  %326 = load i8*, i8** %325, align 8
  %327 = call i64 @strcmp(i8* %326, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %347

329:                                              ; preds = %323
  %330 = load i32, i32* %4, align 4
  %331 = icmp eq i32 %330, 3
  br i1 %331, label %332, label %347

332:                                              ; preds = %329
  store i32 3, i32* %20, align 4
  %333 = load i8**, i8*** %5, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i64 2
  %335 = load i8*, i8** %334, align 8
  store i8* %335, i8** %14, align 8
  %336 = load i8**, i8*** %5, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 1
  %338 = load i8*, i8** %337, align 8
  store i8* %338, i8** @imagefile, align 8
  %339 = load i8*, i8** %14, align 8
  %340 = call i32 @mtd_check(i8* %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %346, label %342

342:                                              ; preds = %332
  %343 = load i32, i32* @stderr, align 4
  %344 = call i32 (i32, i8*, ...) @fprintf(i32 %343, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %345 = call i32 @exit(i32 1) #4
  unreachable

346:                                              ; preds = %332
  br label %349

347:                                              ; preds = %329, %323
  %348 = call i32 (...) @usage()
  br label %349

349:                                              ; preds = %347, %346
  br label %350

350:                                              ; preds = %349, %322
  br label %351

351:                                              ; preds = %350, %263
  br label %352

352:                                              ; preds = %351, %247
  br label %353

353:                                              ; preds = %352, %234
  br label %354

354:                                              ; preds = %353, %220
  br label %355

355:                                              ; preds = %354, %206
  br label %356

356:                                              ; preds = %355, %192
  br label %357

357:                                              ; preds = %356, %178
  br label %358

358:                                              ; preds = %357, %164
  br label %359

359:                                              ; preds = %358, %151
  %360 = call i32 (...) @sync()
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %361

361:                                              ; preds = %386, %359
  %362 = load i32, i32* %7, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8*, i8** %24, i64 %363
  %365 = load i8*, i8** %364, align 8
  %366 = icmp ne i8* %365, null
  br i1 %366, label %367, label %389

367:                                              ; preds = %361
  %368 = load i32, i32* %7, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8*, i8** %24, i64 %369
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @mtd_unlock(i8* %371)
  %373 = load i32, i32* %7, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*, i8** %24, i64 %374
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 @mtd_erase(i8* %376)
  %378 = load i32, i32* %7, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8*, i8** %24, i64 %379
  %381 = load i8*, i8** %380, align 8
  %382 = load i8*, i8** %14, align 8
  %383 = call i64 @strcmp(i8* %381, i8* %382)
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %367
  store i32 1, i32* %11, align 4
  br label %386

386:                                              ; preds = %385, %367
  %387 = load i32, i32* %7, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %7, align 4
  br label %361

389:                                              ; preds = %361
  %390 = load i32, i32* %20, align 4
  switch i32 %390, label %469 [
    i32 2, label %391
    i32 8, label %398
    i32 9, label %402
    i32 0, label %407
    i32 1, label %416
    i32 3, label %428
    i32 4, label %439
    i32 10, label %446
    i32 5, label %451
    i32 6, label %457
    i32 7, label %463
  ]

391:                                              ; preds = %389
  %392 = load i32, i32* %11, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %391
  %395 = load i8*, i8** %14, align 8
  %396 = call i32 @mtd_unlock(i8* %395)
  br label %397

397:                                              ; preds = %394, %391
  br label %469

398:                                              ; preds = %389
  %399 = load i8*, i8** %14, align 8
  %400 = load i8*, i8** @imagefile, align 8
  %401 = call i32 @mtd_verify(i8* %399, i8* %400)
  br label %469

402:                                              ; preds = %389
  %403 = load i8*, i8** %14, align 8
  %404 = load i64, i64* %16, align 8
  %405 = load i64, i64* %19, align 8
  %406 = call i32 @mtd_dump(i8* %403, i64 %404, i64 %405)
  br label %469

407:                                              ; preds = %389
  %408 = load i32, i32* %11, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %413, label %410

410:                                              ; preds = %407
  %411 = load i8*, i8** %14, align 8
  %412 = call i32 @mtd_unlock(i8* %411)
  br label %413

413:                                              ; preds = %410, %407
  %414 = load i8*, i8** %14, align 8
  %415 = call i32 @mtd_erase(i8* %414)
  br label %469

416:                                              ; preds = %389
  %417 = load i32, i32* %11, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %422, label %419

419:                                              ; preds = %416
  %420 = load i8*, i8** %14, align 8
  %421 = call i32 @mtd_unlock(i8* %420)
  br label %422

422:                                              ; preds = %419, %416
  %423 = load i32, i32* %9, align 4
  %424 = load i8*, i8** %14, align 8
  %425 = load i8*, i8** %15, align 8
  %426 = load i64, i64* %18, align 8
  %427 = call i32 @mtd_write(i32 %423, i8* %424, i8* %425, i64 %426)
  br label %469

428:                                              ; preds = %389
  %429 = load i32, i32* %11, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %434, label %431

431:                                              ; preds = %428
  %432 = load i8*, i8** %14, align 8
  %433 = call i32 @mtd_unlock(i8* %432)
  br label %434

434:                                              ; preds = %431, %428
  %435 = load i8*, i8** %14, align 8
  %436 = load i8*, i8** @imagefile, align 8
  %437 = load i8*, i8** @jffs2dir, align 8
  %438 = call i32 @mtd_write_jffs2(i8* %435, i8* %436, i8* %437)
  br label %469

439:                                              ; preds = %389
  br i1 true, label %440, label %445

440:                                              ; preds = %439
  %441 = load i8*, i8** %14, align 8
  %442 = load i64, i64* %16, align 8
  %443 = load i64, i64* %17, align 8
  %444 = call i32 @mtd_fixtrx(i8* %441, i64 %442, i64 %443)
  br label %445

445:                                              ; preds = %440, %439
  br label %469

446:                                              ; preds = %389
  br i1 true, label %447, label %450

447:                                              ; preds = %446
  %448 = load i8*, i8** %14, align 8
  %449 = call i32 @mtd_resetbc(i8* %448)
  br label %450

450:                                              ; preds = %447, %446
  br label %469

451:                                              ; preds = %389
  br i1 true, label %452, label %456

452:                                              ; preds = %451
  %453 = load i8*, i8** %14, align 8
  %454 = load i64, i64* %17, align 8
  %455 = call i32 @mtd_fixseama(i8* %453, i32 0, i64 %454)
  br label %456

456:                                              ; preds = %452, %451
  br label %469

457:                                              ; preds = %389
  br i1 true, label %458, label %462

458:                                              ; preds = %457
  %459 = load i8*, i8** %14, align 8
  %460 = load i64, i64* %17, align 8
  %461 = call i32 @mtd_fixwrg(i8* %459, i32 0, i64 %460)
  br label %462

462:                                              ; preds = %458, %457
  br label %469

463:                                              ; preds = %389
  br i1 true, label %464, label %468

464:                                              ; preds = %463
  %465 = load i8*, i8** %14, align 8
  %466 = load i64, i64* %17, align 8
  %467 = call i32 @mtd_fixwrgg(i8* %465, i32 0, i64 %466)
  br label %468

468:                                              ; preds = %464, %463
  br label %469

469:                                              ; preds = %389, %468, %462, %456, %450, %445, %434, %422, %413, %402, %398, %397
  %470 = call i32 (...) @sync()
  %471 = load i32, i32* %8, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %469
  %474 = call i32 (...) @do_reboot()
  br label %475

475:                                              ; preds = %473, %469
  store i32 0, i32* %3, align 4
  %476 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %476)
  %477 = load i32, i32* %3, align 4
  ret i32 %477
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @strtoul(i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @mtd_resetbc(i8*) #2

declare dso_local i32 @mtd_fixtrx(i8*, i64, i64) #2

declare dso_local i32 @mtd_fixseama(i8*, i32, i64) #2

declare dso_local i32 @mtd_fixwrg(i8*, i32, i64) #2

declare dso_local i32 @mtd_fixwrgg(i8*, i32, i64) #2

declare dso_local i32 @open(i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @mtd_check(i8*) #2

declare dso_local i32 @image_check(i32, i8*) #2

declare dso_local i32 @sync(...) #2

declare dso_local i32 @mtd_unlock(i8*) #2

declare dso_local i32 @mtd_erase(i8*) #2

declare dso_local i32 @mtd_verify(i8*, i8*) #2

declare dso_local i32 @mtd_dump(i8*, i64, i64) #2

declare dso_local i32 @mtd_write(i32, i8*, i8*, i64) #2

declare dso_local i32 @mtd_write_jffs2(i8*, i8*, i8*) #2

declare dso_local i32 @do_reboot(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
