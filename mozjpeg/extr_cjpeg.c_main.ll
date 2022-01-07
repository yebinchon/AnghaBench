; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_cjpeg.c_main.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_cjpeg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { i64, i64, i64, i64, i32, i32 }
%struct.jpeg_error_mgr = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.jpeg_compress_struct*, %struct.TYPE_8__*)*, i32, i32, i32 (%struct.jpeg_compress_struct*, %struct.TYPE_8__*)*, %struct.TYPE_7__*, i32 (%struct.jpeg_compress_struct*, %struct.TYPE_8__*)*, i32* }
%struct.TYPE_7__ = type { i64, i32, i32*, %struct.TYPE_7__* }

@progname = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cjpeg\00", align 1
@cdjpeg_message_table = common dso_local global i32 0, align 4
@JMSG_FIRSTADDONCODE = common dso_local global i32 0, align 4
@JMSG_LASTADDONCODE = common dso_local global i32 0, align 4
@JCS_RGB = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@READ_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@outfilename = common dso_local global i8* null, align 8
@WRITE_BINARY = common dso_local global i32 0, align 4
@memdst = common dso_local global i64 0, align 8
@icc_filename = common dso_local global i8* null, align 8
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: can't determine size of %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s: can't allocate memory for ICC profile\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%s: can't read ICC profile from %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@copy_markers = common dso_local global i64 0, align 8
@JPEG_APP0 = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Compressed size:  %lu bytes\0A\00", align 1
@EXIT_WARNING = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@is_jpeg = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jpeg_compress_struct, align 8
  %7 = alloca %struct.jpeg_error_mgr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to i64*
  store i64* %22, i64** @progname, align 8
  %23 = load i64*, i64** @progname, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load i64*, i64** @progname, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %2
  store i64* bitcast ([6 x i8]* @.str to i64*), i64** @progname, align 8
  br label %31

31:                                               ; preds = %30, %25
  %32 = call i32 @jpeg_std_error(%struct.jpeg_error_mgr* %7)
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = call i32 @jpeg_create_compress(%struct.jpeg_compress_struct* %6)
  %35 = load i32, i32* @cdjpeg_message_table, align 4
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @JMSG_FIRSTADDONCODE, align 4
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @JMSG_LASTADDONCODE, align 4
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @JCS_RGB, align 4
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = call i32 @jpeg_set_defaults(%struct.jpeg_compress_struct* %6)
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @parse_switches(%struct.jpeg_compress_struct* %6, i32 %44, i8** %45, i32 0, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %31
  %53 = load i32, i32* @stderr, align 4
  %54 = load i64*, i64** @progname, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64* %54)
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %52, %31
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @READ_BINARY, align 4
  %68 = call i32* @fopen(i8* %66, i32 %67)
  store i32* %68, i32** %10, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %61
  %71 = load i32, i32* @stderr, align 4
  %72 = load i64*, i64** @progname, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %72, i8* %77)
  %79 = load i32, i32* @EXIT_FAILURE, align 4
  %80 = call i32 @exit(i32 %79) #3
  unreachable

81:                                               ; preds = %61
  br label %84

82:                                               ; preds = %57
  %83 = call i32* (...) @read_stdin()
  store i32* %83, i32** %10, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = load i8*, i8** @outfilename, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i8*, i8** @outfilename, align 8
  %89 = load i32, i32* @WRITE_BINARY, align 4
  %90 = call i32* @fopen(i8* %88, i32 %89)
  store i32* %90, i32** %14, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* @stderr, align 4
  %94 = load i64*, i64** @progname, align 8
  %95 = load i8*, i8** @outfilename, align 8
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %94, i8* %95)
  %97 = load i32, i32* @EXIT_FAILURE, align 4
  %98 = call i32 @exit(i32 %97) #3
  unreachable

99:                                               ; preds = %87
  br label %106

100:                                              ; preds = %84
  %101 = load i64, i64* @memdst, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call i32* (...) @write_stdout()
  store i32* %104, i32** %14, align 8
  br label %105

105:                                              ; preds = %103, %100
  br label %106

106:                                              ; preds = %105, %99
  %107 = load i8*, i8** @icc_filename, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %175

109:                                              ; preds = %106
  %110 = load i8*, i8** @icc_filename, align 8
  %111 = load i32, i32* @READ_BINARY, align 4
  %112 = call i32* @fopen(i8* %110, i32 %111)
  store i32* %112, i32** %11, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32, i32* @stderr, align 4
  %116 = load i64*, i64** @progname, align 8
  %117 = load i8*, i8** @icc_filename, align 8
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %116, i8* %117)
  %119 = load i32, i32* @EXIT_FAILURE, align 4
  %120 = call i32 @exit(i32 %119) #3
  unreachable

121:                                              ; preds = %109
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* @SEEK_END, align 4
  %124 = call i64 @fseek(i32* %122, i32 0, i32 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %121
  %127 = load i32*, i32** %11, align 8
  %128 = call i64 @ftell(i32* %127)
  store i64 %128, i64* %13, align 8
  %129 = icmp slt i64 %128, 1
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* @SEEK_SET, align 4
  %133 = call i64 @fseek(i32* %131, i32 0, i32 %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130, %126, %121
  %136 = load i32, i32* @stderr, align 4
  %137 = load i64*, i64** @progname, align 8
  %138 = load i8*, i8** @icc_filename, align 8
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64* %137, i8* %138)
  %140 = load i32, i32* @EXIT_FAILURE, align 4
  %141 = call i32 @exit(i32 %140) #3
  unreachable

142:                                              ; preds = %130
  %143 = load i64, i64* %13, align 8
  %144 = call i64 @malloc(i64 %143)
  %145 = inttoptr i64 %144 to i8*
  store i8* %145, i8** %12, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load i32, i32* @stderr, align 4
  %149 = load i64*, i64** @progname, align 8
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64* %149)
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @fclose(i32* %151)
  %153 = load i32, i32* @EXIT_FAILURE, align 4
  %154 = call i32 @exit(i32 %153) #3
  unreachable

155:                                              ; preds = %142
  %156 = load i8*, i8** %12, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = call i32 @fread(i8* %156, i64 %157, i32 1, i32* %158)
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load i32, i32* @stderr, align 4
  %163 = load i64*, i64** @progname, align 8
  %164 = load i8*, i8** @icc_filename, align 8
  %165 = call i32 (i32, i8*, ...) @fprintf(i32 %162, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64* %163, i8* %164)
  %166 = load i8*, i8** %12, align 8
  %167 = call i32 @free(i8* %166)
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @fclose(i32* %168)
  %170 = load i32, i32* @EXIT_FAILURE, align 4
  %171 = call i32 @exit(i32 %170) #3
  unreachable

172:                                              ; preds = %155
  %173 = load i32*, i32** %11, align 8
  %174 = call i32 @fclose(i32* %173)
  br label %175

175:                                              ; preds = %172, %106
  %176 = load i32*, i32** %10, align 8
  %177 = call %struct.TYPE_8__* @select_file_type(%struct.jpeg_compress_struct* %6, i32* %176)
  store %struct.TYPE_8__* %177, %struct.TYPE_8__** %9, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 6
  store i32* %178, i32** %180, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 5
  %183 = load i32 (%struct.jpeg_compress_struct*, %struct.TYPE_8__*)*, i32 (%struct.jpeg_compress_struct*, %struct.TYPE_8__*)** %182, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %185 = call i32 %183(%struct.jpeg_compress_struct* %6, %struct.TYPE_8__* %184)
  %186 = call i32 @jpeg_default_colorspace(%struct.jpeg_compress_struct* %6)
  %187 = load i32, i32* %4, align 4
  %188 = load i8**, i8*** %5, align 8
  %189 = load i32, i32* @TRUE, align 4
  %190 = call i32 @parse_switches(%struct.jpeg_compress_struct* %6, i32 %187, i8** %188, i32 0, i32 %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32*, i32** %14, align 8
  %192 = call i32 @jpeg_stdio_dest(%struct.jpeg_compress_struct* %6, i32* %191)
  %193 = load i32, i32* @TRUE, align 4
  %194 = call i32 @jpeg_start_compress(%struct.jpeg_compress_struct* %6, i32 %193)
  %195 = load i64, i64* @copy_markers, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %333

197:                                              ; preds = %175
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  store %struct.TYPE_7__* %200, %struct.TYPE_7__** %18, align 8
  br label %201

201:                                              ; preds = %328, %197
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %203 = icmp ne %struct.TYPE_7__* %202, null
  br i1 %203, label %204, label %332

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %260

208:                                              ; preds = %204
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @JPEG_APP0, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %260

214:                                              ; preds = %208
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = icmp sge i32 %217, 5
  br i1 %218, label %219, label %260

219:                                              ; preds = %214
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @GETJOCTET(i32 %224)
  %226 = icmp eq i32 %225, 74
  br i1 %226, label %227, label %260

227:                                              ; preds = %219
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @GETJOCTET(i32 %232)
  %234 = icmp eq i32 %233, 70
  br i1 %234, label %235, label %260

235:                                              ; preds = %227
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @GETJOCTET(i32 %240)
  %242 = icmp eq i32 %241, 73
  br i1 %242, label %243, label %260

243:                                              ; preds = %235
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 3
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @GETJOCTET(i32 %248)
  %250 = icmp eq i32 %249, 70
  br i1 %250, label %251, label %260

251:                                              ; preds = %243
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 4
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @GETJOCTET(i32 %256)
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %251
  br label %328

260:                                              ; preds = %251, %243, %235, %227, %219, %214, %208, %204
  %261 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %317

264:                                              ; preds = %260
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @JPEG_APP0, align 8
  %269 = add nsw i64 %268, 14
  %270 = icmp eq i64 %267, %269
  br i1 %270, label %271, label %317

271:                                              ; preds = %264
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = icmp sge i32 %274, 5
  br i1 %275, label %276, label %317

276:                                              ; preds = %271
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @GETJOCTET(i32 %281)
  %283 = icmp eq i32 %282, 65
  br i1 %283, label %284, label %317

284:                                              ; preds = %276
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @GETJOCTET(i32 %289)
  %291 = icmp eq i32 %290, 100
  br i1 %291, label %292, label %317

292:                                              ; preds = %284
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 2
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @GETJOCTET(i32 %297)
  %299 = icmp eq i32 %298, 111
  br i1 %299, label %300, label %317

300:                                              ; preds = %292
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 3
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @GETJOCTET(i32 %305)
  %307 = icmp eq i32 %306, 98
  br i1 %307, label %308, label %317

308:                                              ; preds = %300
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 2
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 4
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @GETJOCTET(i32 %313)
  %315 = icmp eq i32 %314, 101
  br i1 %315, label %316, label %317

316:                                              ; preds = %308
  br label %328

317:                                              ; preds = %308, %300, %292, %284, %276, %271, %264, %260
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 2
  %323 = load i32*, i32** %322, align 8
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @jpeg_write_marker(%struct.jpeg_compress_struct* %6, i64 %320, i32* %323, i32 %326)
  br label %328

328:                                              ; preds = %317, %316, %259
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 3
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %330, align 8
  store %struct.TYPE_7__* %331, %struct.TYPE_7__** %18, align 8
  br label %201

332:                                              ; preds = %201
  br label %333

333:                                              ; preds = %332, %175
  %334 = load i8*, i8** %12, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %333
  %337 = load i8*, i8** %12, align 8
  %338 = load i64, i64* %13, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i32 @jpeg_write_icc_profile(%struct.jpeg_compress_struct* %6, i8* %337, i32 %339)
  br label %341

341:                                              ; preds = %336, %333
  br label %342

342:                                              ; preds = %348, %341
  %343 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = icmp slt i64 %344, %346
  br i1 %347, label %348, label %359

348:                                              ; preds = %342
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 3
  %351 = load i32 (%struct.jpeg_compress_struct*, %struct.TYPE_8__*)*, i32 (%struct.jpeg_compress_struct*, %struct.TYPE_8__*)** %350, align 8
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %353 = call i32 %351(%struct.jpeg_compress_struct* %6, %struct.TYPE_8__* %352)
  store i32 %353, i32* %17, align 4
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* %17, align 4
  %358 = call i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* %6, i32 %356, i32 %357)
  br label %342

359:                                              ; preds = %342
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = load i32 (%struct.jpeg_compress_struct*, %struct.TYPE_8__*)*, i32 (%struct.jpeg_compress_struct*, %struct.TYPE_8__*)** %361, align 8
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %364 = call i32 %362(%struct.jpeg_compress_struct* %6, %struct.TYPE_8__* %363)
  %365 = call i32 @jpeg_finish_compress(%struct.jpeg_compress_struct* %6)
  %366 = call i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct* %6)
  %367 = load i32*, i32** %10, align 8
  %368 = load i32*, i32** @stdin, align 8
  %369 = icmp ne i32* %367, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %359
  %371 = load i32*, i32** %10, align 8
  %372 = call i32 @fclose(i32* %371)
  br label %373

373:                                              ; preds = %370, %359
  %374 = load i32*, i32** %14, align 8
  %375 = load i32*, i32** @stdout, align 8
  %376 = icmp ne i32* %374, %375
  br i1 %376, label %377, label %383

377:                                              ; preds = %373
  %378 = load i32*, i32** %14, align 8
  %379 = icmp ne i32* %378, null
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = load i32*, i32** %14, align 8
  %382 = call i32 @fclose(i32* %381)
  br label %383

383:                                              ; preds = %380, %377, %373
  %384 = load i64, i64* @memdst, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %396

386:                                              ; preds = %383
  %387 = load i32, i32* @stderr, align 4
  %388 = load i64, i64* %16, align 8
  %389 = call i32 (i32, i8*, ...) @fprintf(i32 %387, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %388)
  %390 = load i8*, i8** %15, align 8
  %391 = icmp ne i8* %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %386
  %393 = load i8*, i8** %15, align 8
  %394 = call i32 @free(i8* %393)
  br label %395

395:                                              ; preds = %392, %386
  br label %396

396:                                              ; preds = %395, %383
  %397 = load i8*, i8** %12, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = load i8*, i8** %12, align 8
  %401 = call i32 @free(i8* %400)
  br label %402

402:                                              ; preds = %399, %396
  %403 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %402
  %407 = load i32, i32* @EXIT_WARNING, align 4
  br label %410

408:                                              ; preds = %402
  %409 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %410

410:                                              ; preds = %408, %406
  %411 = phi i32 [ %407, %406 ], [ %409, %408 ]
  %412 = call i32 @exit(i32 %411) #3
  unreachable
}

declare dso_local i32 @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_set_defaults(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @parse_switches(%struct.jpeg_compress_struct*, i32, i8**, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @read_stdin(...) #1

declare dso_local i32* @write_stdout(...) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_8__* @select_file_type(%struct.jpeg_compress_struct*, i32*) #1

declare dso_local i32 @jpeg_default_colorspace(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_stdio_dest(%struct.jpeg_compress_struct*, i32*) #1

declare dso_local i32 @jpeg_start_compress(%struct.jpeg_compress_struct*, i32) #1

declare dso_local i32 @GETJOCTET(i32) #1

declare dso_local i32 @jpeg_write_marker(%struct.jpeg_compress_struct*, i64, i32*, i32) #1

declare dso_local i32 @jpeg_write_icc_profile(%struct.jpeg_compress_struct*, i8*, i32) #1

declare dso_local i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct*, i32, i32) #1

declare dso_local i32 @jpeg_finish_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
