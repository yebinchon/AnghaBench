; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_jpegtran.c_main.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_jpegtran.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.jpeg_compress_struct = type { %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.jpeg_error_mgr = type { i64, i32 }

@progname = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"jpegtran\00", align 1
@FALSE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@READ_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: can't open %s for reading\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@icc_filename = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: can't determine size of %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%s: can't allocate memory for ICC profile\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%s: can't read ICC profile from %s\0A\00", align 1
@copyoption = common dso_local global i64 0, align 8
@JCOPYOPT_ALL = common dso_local global i64 0, align 8
@JCOPYOPT_ALL_EXCEPT_ICC = common dso_local global i64 0, align 8
@JINT_COMPRESS_PROFILE = common dso_local global i32 0, align 4
@JCP_MAX_COMPRESSION = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@memsrc = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@outfilename = common dso_local global i8* null, align 8
@WRITE_BINARY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: can't open %s for writing\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@EXIT_WARNING = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@INPUT_BUF_SIZE = common dso_local global i64 0, align 8
@prefer_smallest = common dso_local global i64 0, align 8
@transformoption = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jpeg_decompress_struct, align 8
  %7 = alloca %struct.jpeg_compress_struct, align 8
  %8 = alloca %struct.jpeg_error_mgr, align 8
  %9 = alloca %struct.jpeg_error_mgr, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i8* null, i8** %16, align 8
  store i64 0, i64* %17, align 8
  store i8* null, i8** %19, align 8
  store i64 0, i64* %20, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to i64*
  store i64* %24, i64** @progname, align 8
  %25 = load i64*, i64** @progname, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load i64*, i64** @progname, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %2
  store i64* bitcast ([9 x i8]* @.str to i64*), i64** @progname, align 8
  br label %33

33:                                               ; preds = %32, %27
  %34 = call i8* @jpeg_std_error(%struct.jpeg_error_mgr* %8)
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = call i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct* %6)
  %37 = call i8* @jpeg_std_error(%struct.jpeg_error_mgr* %9)
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = call i32 @jpeg_create_compress(%struct.jpeg_compress_struct* %7)
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = call i32 @parse_switches(%struct.jpeg_compress_struct* %7, i32 %40, i8** %41, i32 0, i64 %42)
  store i32 %43, i32* %12, align 4
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %33
  %59 = load i32, i32* @stderr, align 4
  %60 = load i64*, i64** @progname, align 8
  %61 = call i32 (i32, i8*, i64*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64* %60)
  %62 = call i32 (...) @usage()
  br label %63

63:                                               ; preds = %58, %33
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @READ_BINARY, align 4
  %74 = call i32* @fopen(i8* %72, i32 %73)
  store i32* %74, i32** %13, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load i32, i32* @stderr, align 4
  %78 = load i64*, i64** @progname, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32, i8*, i64*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64* %78, i8* %83)
  %85 = load i32, i32* @EXIT_FAILURE, align 4
  %86 = call i32 @exit(i32 %85) #3
  unreachable

87:                                               ; preds = %67
  br label %90

88:                                               ; preds = %63
  %89 = call i32* (...) @read_stdin()
  store i32* %89, i32** %13, align 8
  br label %90

90:                                               ; preds = %88, %87
  %91 = load i8*, i8** @icc_filename, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %165

93:                                               ; preds = %90
  %94 = load i8*, i8** @icc_filename, align 8
  %95 = load i32, i32* @READ_BINARY, align 4
  %96 = call i32* @fopen(i8* %94, i32 %95)
  store i32* %96, i32** %18, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32, i32* @stderr, align 4
  %100 = load i64*, i64** @progname, align 8
  %101 = load i8*, i8** @icc_filename, align 8
  %102 = call i32 (i32, i8*, i64*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64* %100, i8* %101)
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = call i32 @exit(i32 %103) #3
  unreachable

105:                                              ; preds = %93
  %106 = load i32*, i32** %18, align 8
  %107 = load i32, i32* @SEEK_END, align 4
  %108 = call i64 @fseek(i32* %106, i32 0, i32 %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %105
  %111 = load i32*, i32** %18, align 8
  %112 = call i64 @ftell(i32* %111)
  store i64 %112, i64* %20, align 8
  %113 = icmp slt i64 %112, 1
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load i32*, i32** %18, align 8
  %116 = load i32, i32* @SEEK_SET, align 4
  %117 = call i64 @fseek(i32* %115, i32 0, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114, %110, %105
  %120 = load i32, i32* @stderr, align 4
  %121 = load i64*, i64** @progname, align 8
  %122 = load i8*, i8** @icc_filename, align 8
  %123 = call i32 (i32, i8*, i64*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64* %121, i8* %122)
  %124 = load i32, i32* @EXIT_FAILURE, align 4
  %125 = call i32 @exit(i32 %124) #3
  unreachable

126:                                              ; preds = %114
  %127 = load i64, i64* %20, align 8
  %128 = call i64 @malloc(i64 %127)
  %129 = inttoptr i64 %128 to i8*
  store i8* %129, i8** %19, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load i32, i32* @stderr, align 4
  %133 = load i64*, i64** @progname, align 8
  %134 = call i32 (i32, i8*, i64*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64* %133)
  %135 = load i32*, i32** %18, align 8
  %136 = call i32 @fclose(i32* %135)
  %137 = load i32, i32* @EXIT_FAILURE, align 4
  %138 = call i32 @exit(i32 %137) #3
  unreachable

139:                                              ; preds = %126
  %140 = load i8*, i8** %19, align 8
  %141 = load i64, i64* %20, align 8
  %142 = load i32*, i32** %18, align 8
  %143 = call i32 @fread(i8* %140, i64 %141, i32 1, i32* %142)
  %144 = icmp slt i32 %143, 1
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load i32, i32* @stderr, align 4
  %147 = load i64*, i64** @progname, align 8
  %148 = load i8*, i8** @icc_filename, align 8
  %149 = call i32 (i32, i8*, i64*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64* %147, i8* %148)
  %150 = load i8*, i8** %19, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i32*, i32** %18, align 8
  %153 = call i32 @fclose(i32* %152)
  %154 = load i32, i32* @EXIT_FAILURE, align 4
  %155 = call i32 @exit(i32 %154) #3
  unreachable

156:                                              ; preds = %139
  %157 = load i32*, i32** %18, align 8
  %158 = call i32 @fclose(i32* %157)
  %159 = load i64, i64* @copyoption, align 8
  %160 = load i64, i64* @JCOPYOPT_ALL, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i64, i64* @JCOPYOPT_ALL_EXCEPT_ICC, align 8
  store i64 %163, i64* @copyoption, align 8
  br label %164

164:                                              ; preds = %162, %156
  br label %165

165:                                              ; preds = %164, %90
  %166 = load i32, i32* @JINT_COMPRESS_PROFILE, align 4
  %167 = call i64 @jpeg_c_int_param_supported(%struct.jpeg_compress_struct* %7, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i32, i32* @JINT_COMPRESS_PROFILE, align 4
  %171 = call i64 @jpeg_c_get_int_param(%struct.jpeg_compress_struct* %7, i32 %170)
  %172 = load i64, i64* @JCP_MAX_COMPRESSION, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i64, i64* @TRUE, align 8
  store i64 %175, i64* @memsrc, align 8
  br label %176

176:                                              ; preds = %174, %169, %165
  %177 = load i32*, i32** %13, align 8
  %178 = call i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct* %6, i32* %177)
  %179 = load i64, i64* @copyoption, align 8
  %180 = call i32 @jcopy_markers_setup(%struct.jpeg_decompress_struct* %6, i64 %179)
  %181 = load i64, i64* @TRUE, align 8
  %182 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %6, i64 %181)
  %183 = call i32* @jpeg_read_coefficients(%struct.jpeg_decompress_struct* %6)
  store i32* %183, i32** %10, align 8
  %184 = call i32 @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct* %6, %struct.jpeg_compress_struct* %7)
  %185 = load i32*, i32** %10, align 8
  store i32* %185, i32** %11, align 8
  %186 = load i32*, i32** %13, align 8
  %187 = load i32*, i32** @stdin, align 8
  %188 = icmp ne i32* %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %176
  %190 = load i32*, i32** %13, align 8
  %191 = call i32 @fclose(i32* %190)
  br label %192

192:                                              ; preds = %189, %176
  %193 = load i8*, i8** @outfilename, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %208

195:                                              ; preds = %192
  %196 = load i8*, i8** @outfilename, align 8
  %197 = load i32, i32* @WRITE_BINARY, align 4
  %198 = call i32* @fopen(i8* %196, i32 %197)
  store i32* %198, i32** %13, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load i32, i32* @stderr, align 4
  %202 = load i64*, i64** @progname, align 8
  %203 = load i8*, i8** @outfilename, align 8
  %204 = call i32 (i32, i8*, i64*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64* %202, i8* %203)
  %205 = load i32, i32* @EXIT_FAILURE, align 4
  %206 = call i32 @exit(i32 %205) #3
  unreachable

207:                                              ; preds = %195
  br label %210

208:                                              ; preds = %192
  %209 = call i32* (...) @write_stdout()
  store i32* %209, i32** %13, align 8
  br label %210

210:                                              ; preds = %208, %207
  %211 = load i32, i32* %4, align 4
  %212 = load i8**, i8*** %5, align 8
  %213 = load i64, i64* @TRUE, align 8
  %214 = call i32 @parse_switches(%struct.jpeg_compress_struct* %7, i32 %211, i8** %212, i32 0, i64 %213)
  store i32 %214, i32* %12, align 4
  %215 = load i32*, i32** %13, align 8
  %216 = call i32 @jpeg_stdio_dest(%struct.jpeg_compress_struct* %7, i32* %215)
  %217 = load i32*, i32** %11, align 8
  %218 = call i32 @jpeg_write_coefficients(%struct.jpeg_compress_struct* %7, i32* %217)
  %219 = load i64, i64* @copyoption, align 8
  %220 = call i32 @jcopy_markers_execute(%struct.jpeg_decompress_struct* %6, %struct.jpeg_compress_struct* %7, i64 %219)
  %221 = load i8*, i8** %19, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %210
  %224 = load i8*, i8** %19, align 8
  %225 = load i64, i64* %20, align 8
  %226 = trunc i64 %225 to i32
  %227 = call i32 @jpeg_write_icc_profile(%struct.jpeg_compress_struct* %7, i8* %224, i32 %226)
  br label %228

228:                                              ; preds = %223, %210
  %229 = call i32 @jpeg_finish_compress(%struct.jpeg_compress_struct* %7)
  %230 = call i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct* %7)
  %231 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %6)
  %232 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %6)
  %233 = load i32*, i32** %13, align 8
  %234 = load i32*, i32** @stdout, align 8
  %235 = icmp ne i32* %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %228
  %237 = load i32*, i32** %13, align 8
  %238 = call i32 @fclose(i32* %237)
  br label %239

239:                                              ; preds = %236, %228
  %240 = load i8*, i8** %14, align 8
  %241 = call i32 @free(i8* %240)
  %242 = load i8*, i8** %16, align 8
  %243 = call i32 @free(i8* %242)
  %244 = load i8*, i8** %19, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %239
  %247 = load i8*, i8** %19, align 8
  %248 = call i32 @free(i8* %247)
  br label %249

249:                                              ; preds = %246, %239
  %250 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %251, %253
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = load i32, i32* @EXIT_WARNING, align 4
  br label %260

258:                                              ; preds = %249
  %259 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi i32 [ %257, %256 ], [ %259, %258 ]
  %262 = call i32 @exit(i32 %261) #3
  unreachable
}

declare dso_local i8* @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_create_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @parse_switches(%struct.jpeg_compress_struct*, i32, i8**, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @read_stdin(...) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @jpeg_c_int_param_supported(%struct.jpeg_compress_struct*, i32) #1

declare dso_local i64 @jpeg_c_get_int_param(%struct.jpeg_compress_struct*, i32) #1

declare dso_local i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct*, i32*) #1

declare dso_local i32 @jcopy_markers_setup(%struct.jpeg_decompress_struct*, i64) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct*, i64) #1

declare dso_local i32* @jpeg_read_coefficients(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct*, %struct.jpeg_compress_struct*) #1

declare dso_local i32* @write_stdout(...) #1

declare dso_local i32 @jpeg_stdio_dest(%struct.jpeg_compress_struct*, i32*) #1

declare dso_local i32 @jpeg_write_coefficients(%struct.jpeg_compress_struct*, i32*) #1

declare dso_local i32 @jcopy_markers_execute(%struct.jpeg_decompress_struct*, %struct.jpeg_compress_struct*, i64) #1

declare dso_local i32 @jpeg_write_icc_profile(%struct.jpeg_compress_struct*, i8*, i32) #1

declare dso_local i32 @jpeg_finish_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
