; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngtest.c_main.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i64, i64 }

@STDERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Testing libpng version %s\0A\00", align 1
@PNG_LIBPNG_VER_STRING = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"   with zlib   version %s\0A\00", align 1
@ZLIB_VERSION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" library (%lu):%s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" pngtest (%lu):%s\00", align 1
@PNG_LIBPNG_VER = common dso_local global i64 0, align 8
@PNG_HEADER_VERSION_STRING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c" png_sizeof(png_struct)=%ld, png_sizeof(png_info)=%ld\0A\00", align 1
@png_struct = common dso_local global i32 0, align 4
@png_info = common dso_local global i32 0, align 4
@png_libpng_ver = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [57 x i8] c"Warning: versions are different between png.h and png.c\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"  png.h version: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"  png.c version: %s\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@status_dots_requested = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"-mv\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"-vm\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@inname = common dso_local global i8* null, align 8
@outname = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [58 x i8] c"usage: %s [infile.png] [outfile.png]\0A\09%s -m {infile.png}\0A\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"  reads/writes one PNG file (without -m) or multiple files (-m)\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"  with -m %s is used as a temporary file\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Testing %s:\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" PASS\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" FAIL\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"libpng passes test\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"libpng FAILS test\0A\00", align 1
@CLOCKS_PER_SEC = common dso_local global i64 0, align 8
@current_allocation = common dso_local global i32 0, align 4
@filters_used = common dso_local global i64* null, align 8
@maximum_allocation = common dso_local global i32 0, align 4
@num_allocations = common dso_local global i32 0, align 4
@pinformation = common dso_local global %struct.TYPE_3__* null, align 8
@tIME_chunk_present = common dso_local global i64 0, align 8
@tIME_string = common dso_local global i8* null, align 8
@t_decode = common dso_local global float 0.000000e+00, align 4
@t_encode = common dso_local global float 0.000000e+00, align 4
@t_misc = common dso_local global float 0.000000e+00, align 4
@t_start = common dso_local global float 0.000000e+00, align 4
@t_stop = common dso_local global float 0.000000e+00, align 4
@total_allocation = common dso_local global i32 0, align 4
@zero_samples = common dso_local global i64 0, align 8

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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @STDERR, align 4
  %13 = load i8*, i8** @PNG_LIBPNG_VER_STRING, align 8
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @STDERR, align 4
  %16 = load i8*, i8** @ZLIB_VERSION, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @STDERR, align 4
  %19 = call i8* @png_get_copyright(i32* null)
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @STDERR, align 4
  %22 = call i64 (...) @png_access_version_number()
  %23 = call i32 @png_get_header_version(i32* null)
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %22, i32 %23)
  %25 = load i32, i32* @STDERR, align 4
  %26 = load i64, i64* @PNG_LIBPNG_VER, align 8
  %27 = load i32, i32* @PNG_HEADER_VERSION_STRING, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %26, i32 %27)
  %29 = load i32, i32* @STDERR, align 4
  %30 = load i32, i32* @png_struct, align 4
  %31 = call i64 @png_sizeof(i32 %30)
  %32 = load i32, i32* @png_info, align 4
  %33 = call i64 @png_sizeof(i32 %32)
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i64 %31, i64 %33)
  %35 = load i8*, i8** @png_libpng_ver, align 8
  %36 = load i8*, i8** @PNG_LIBPNG_VER_STRING, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %2
  %40 = load i32, i32* @STDERR, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i32, i32* @STDERR, align 4
  %43 = load i8*, i8** @PNG_LIBPNG_VER_STRING, align 8
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @STDERR, align 4
  %46 = load i8*, i8** @png_libpng_ver, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %39, %2
  %51 = load i32, i32* %4, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %90

53:                                               ; preds = %50
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  store i32 0, i32* @status_dots_requested, align 4
  br label %89

60:                                               ; preds = %53
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %60
  store i32 1, i32* %6, align 4
  store i32 1, i32* @verbose, align 4
  store i32 1, i32* @status_dots_requested, align 4
  br label %88

73:                                               ; preds = %66
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  store i32 1, i32* @verbose, align 4
  store i32 1, i32* @status_dots_requested, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** @inname, align 8
  br label %87

83:                                               ; preds = %73
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** @inname, align 8
  store i32 0, i32* @status_dots_requested, align 4
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %72
  br label %89

89:                                               ; preds = %88, %59
  br label %90

90:                                               ; preds = %89, %50
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @verbose, align 4
  %96 = add nsw i32 3, %95
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* @verbose, align 4
  %101 = add nsw i32 2, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** @outname, align 8
  br label %105

105:                                              ; preds = %98, %93, %90
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @verbose, align 4
  %111 = add nsw i32 3, %110
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %119, label %134

119:                                              ; preds = %116, %108
  %120 = load i32, i32* @STDERR, align 4
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0), i8* %123, i8* %126)
  %128 = load i32, i32* @STDERR, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i64 0, i64 0))
  %130 = load i32, i32* @STDERR, align 4
  %131 = load i8*, i8** @outname, align 8
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i8* %131)
  %133 = call i32 @exit(i32 1) #3
  unreachable

134:                                              ; preds = %116, %113
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %173

137:                                              ; preds = %134
  store i32 2, i32* %8, align 4
  br label %138

138:                                              ; preds = %169, %137
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %172

142:                                              ; preds = %138
  %143 = load i32, i32* @STDERR, align 4
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %148)
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** @outname, align 8
  %156 = call i32 @test_one_file(i8* %154, i8* %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %142
  %160 = load i32, i32* @STDERR, align 4
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %168

162:                                              ; preds = %142
  %163 = load i32, i32* @STDERR, align 4
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %162, %159
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %138

172:                                              ; preds = %138
  br label %236

173:                                              ; preds = %134
  store i32 0, i32* %10, align 4
  br label %174

174:                                              ; preds = %232, %173
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %175, 3
  br i1 %176, label %177, label %235

177:                                              ; preds = %174
  %178 = load i32, i32* %10, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 1, i32* @status_dots_requested, align 4
  br label %186

181:                                              ; preds = %177
  %182 = load i32, i32* @verbose, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 0, i32* @status_dots_requested, align 4
  br label %185

185:                                              ; preds = %184, %181
  br label %186

186:                                              ; preds = %185, %180
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* @verbose, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192, %189, %186
  %196 = load i32, i32* @STDERR, align 4
  %197 = load i8*, i8** @inname, align 8
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %195, %192
  %200 = load i8*, i8** @inname, align 8
  %201 = load i8*, i8** @outname, align 8
  %202 = call i32 @test_one_file(i8* %200, i8* %201)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %199
  %206 = load i32, i32* @verbose, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %10, align 4
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %214

211:                                              ; preds = %208, %205
  %212 = load i32, i32* @STDERR, align 4
  %213 = call i32 (i32, i8*, ...) @fprintf(i32 %212, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %208
  br label %231

215:                                              ; preds = %199
  %216 = load i32, i32* @verbose, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 2
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load i32, i32* @STDERR, align 4
  %223 = load i8*, i8** @inname, align 8
  %224 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %221, %218, %215
  %226 = load i32, i32* @STDERR, align 4
  %227 = call i32 (i32, i8*, ...) @fprintf(i32 %226, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %7, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %7, align 4
  br label %231

231:                                              ; preds = %225, %214
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %174

235:                                              ; preds = %174
  br label %236

236:                                              ; preds = %235, %172
  %237 = load i32, i32* %7, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32, i32* @STDERR, align 4
  %241 = call i32 (i32, i8*, ...) @fprintf(i32 %240, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %245

242:                                              ; preds = %236
  %243 = load i32, i32* @STDERR, align 4
  %244 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  %248 = zext i1 %247 to i32
  ret i32 %248
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @png_get_copyright(i32*) #1

declare dso_local i64 @png_access_version_number(...) #1

declare dso_local i32 @png_get_header_version(i32*) #1

declare dso_local i64 @png_sizeof(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @test_one_file(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
