; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_djpeg.c_main.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_djpeg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.jpeg_error_mgr = type { i64, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*, i8*)*, i32, i32, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)*, i32* }

@progname = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"djpeg\00", align 1
@cdjpeg_message_table = common dso_local global i32 0, align 4
@JMSG_FIRSTADDONCODE = common dso_local global i32 0, align 4
@JMSG_LASTADDONCODE = common dso_local global i32 0, align 4
@JPEG_COM = common dso_local global i64 0, align 8
@print_text_marker = common dso_local global i32 0, align 4
@JPEG_APP0 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@READ_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@outfilename = common dso_local global i8* null, align 8
@WRITE_BINARY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@requested_fmt = common dso_local global i32 0, align 4
@JERR_UNSUPPORTED_FORMAT = common dso_local global i32 0, align 4
@skip = common dso_local global i64 0, align 8
@skip_end = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: skip region exceeds image height %d\0A\00", align 1
@skip_start = common dso_local global i32 0, align 4
@crop = common dso_local global i64 0, align 8
@crop_x = common dso_local global i32 0, align 4
@crop_width = common dso_local global i32 0, align 4
@crop_y = common dso_local global i32 0, align 4
@crop_height = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"%s: crop dimensions exceed image dimensions %d x %d\0A\00", align 1
@icc_filename = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"%s: can't read ICC profile from %s\0A\00", align 1
@JWRN_BOGUS_ICC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"%s: no ICC profile data in JPEG file\0A\00", align 1
@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@memsrc = common dso_local global i64 0, align 8
@EXIT_WARNING = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@INPUT_BUF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jpeg_decompress_struct, align 8
  %7 = alloca %struct.jpeg_error_mgr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** @progname, align 8
  %24 = load i64*, i64** @progname, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i64*, i64** @progname, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %2
  store i64* bitcast ([6 x i8]* @.str to i64*), i64** @progname, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = call %struct.TYPE_18__* @jpeg_std_error(%struct.jpeg_error_mgr* %7)
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 3
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %34, align 8
  %35 = call i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct* %6)
  %36 = load i32, i32* @cdjpeg_message_table, align 4
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @JMSG_FIRSTADDONCODE, align 4
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @JMSG_LASTADDONCODE, align 4
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load i64, i64* @JPEG_COM, align 8
  %43 = load i32, i32* @print_text_marker, align 4
  %44 = call i32 @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* %6, i64 %42, i32 %43)
  %45 = load i64, i64* @JPEG_APP0, align 8
  %46 = add nsw i64 %45, 12
  %47 = load i32, i32* @print_text_marker, align 4
  %48 = call i32 @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* %6, i64 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @parse_switches(%struct.jpeg_decompress_struct* %6, i32 %49, i8** %50, i32 0, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %32
  %58 = load i32, i32* @stderr, align 4
  %59 = load i64*, i64** @progname, align 8
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64* %59)
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %57, %32
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @READ_BINARY, align 4
  %73 = call i32* @fopen(i8* %71, i32 %72)
  store i32* %73, i32** %10, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %66
  %76 = load i32, i32* @stderr, align 4
  %77 = load i64*, i64** @progname, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %77, i8* %82)
  %84 = load i32, i32* @EXIT_FAILURE, align 4
  %85 = call i32 @exit(i32 %84) #3
  unreachable

86:                                               ; preds = %66
  br label %89

87:                                               ; preds = %62
  %88 = call i32* (...) @read_stdin()
  store i32* %88, i32** %10, align 8
  br label %89

89:                                               ; preds = %87, %86
  %90 = load i8*, i8** @outfilename, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load i8*, i8** @outfilename, align 8
  %94 = load i32, i32* @WRITE_BINARY, align 4
  %95 = call i32* @fopen(i8* %93, i32 %94)
  store i32* %95, i32** %11, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i32, i32* @stderr, align 4
  %99 = load i64*, i64** @progname, align 8
  %100 = load i8*, i8** @outfilename, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %99, i8* %100)
  %102 = load i32, i32* @EXIT_FAILURE, align 4
  %103 = call i32 @exit(i32 %102) #3
  unreachable

104:                                              ; preds = %92
  br label %107

105:                                              ; preds = %89
  %106 = call i32* (...) @write_stdout()
  store i32* %106, i32** %11, align 8
  br label %107

107:                                              ; preds = %105, %104
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct* %6, i32* %108)
  %110 = load i32, i32* @TRUE, align 4
  %111 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %6, i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* @TRUE, align 4
  %115 = call i32 @parse_switches(%struct.jpeg_decompress_struct* %6, i32 %112, i8** %113, i32 0, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @requested_fmt, align 4
  switch i32 %116, label %117 [
  ]

117:                                              ; preds = %107
  %118 = load i32, i32* @JERR_UNSUPPORTED_FORMAT, align 4
  %119 = call i32 @ERREXIT(%struct.jpeg_decompress_struct* %6, i32 %118)
  br label %120

120:                                              ; preds = %117
  %121 = load i32*, i32** %11, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 6
  store i32* %121, i32** %123, align 8
  %124 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* %6)
  %125 = load i64, i64* @skip, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %207

127:                                              ; preds = %120
  %128 = load i32, i32* @skip_end, align 4
  %129 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 1
  %132 = icmp sgt i32 %128, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i32, i32* @stderr, align 4
  %135 = load i64*, i64** @progname, align 8
  %136 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64* %135, i32 %137)
  %139 = load i32, i32* @EXIT_FAILURE, align 4
  %140 = call i32 @exit(i32 %139) #3
  unreachable

141:                                              ; preds = %127
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  store i8* %145, i8** %15, align 8
  %146 = load i32, i32* @skip_end, align 4
  %147 = load i32, i32* @skip_start, align 4
  %148 = sub nsw i32 %146, %147
  %149 = add nsw i32 %148, 1
  %150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, %149
  store i32 %152, i32* %150, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 4
  %155 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)** %154, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %157 = call i32 %155(%struct.jpeg_decompress_struct* %6, %struct.TYPE_20__* %156)
  %158 = load i8*, i8** %15, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  store i32 %159, i32* %160, align 8
  br label %161

161:                                              ; preds = %166, %141
  %162 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @skip_start, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %161
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %6, i32 %169, i32 %172)
  store i8* %173, i8** %14, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*, i8*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*, i8*)** %175, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %178 = load i8*, i8** %14, align 8
  %179 = call i32 %176(%struct.jpeg_decompress_struct* %6, %struct.TYPE_20__* %177, i8* %178)
  br label %161

180:                                              ; preds = %161
  %181 = load i32, i32* @skip_end, align 4
  %182 = load i32, i32* @skip_start, align 4
  %183 = sub nsw i32 %181, %182
  %184 = add nsw i32 %183, 1
  %185 = call i32 @jpeg_skip_scanlines(%struct.jpeg_decompress_struct* %6, i32 %184)
  br label %186

186:                                              ; preds = %192, %180
  %187 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %186
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %6, i32 %195, i32 %198)
  store i8* %199, i8** %14, align 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*, i8*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*, i8*)** %201, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %204 = load i8*, i8** %14, align 8
  %205 = call i32 %202(%struct.jpeg_decompress_struct* %6, %struct.TYPE_20__* %203, i8* %204)
  br label %186

206:                                              ; preds = %186
  br label %323

207:                                              ; preds = %120
  %208 = load i64, i64* @crop, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %295

210:                                              ; preds = %207
  %211 = load i32, i32* @crop_x, align 4
  %212 = load i32, i32* @crop_width, align 4
  %213 = add nsw i32 %211, %212
  %214 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp sgt i32 %213, %215
  br i1 %216, label %224, label %217

217:                                              ; preds = %210
  %218 = load i32, i32* @crop_y, align 4
  %219 = load i32, i32* @crop_height, align 4
  %220 = add nsw i32 %218, %219
  %221 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp sgt i32 %220, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %217, %210
  %225 = load i32, i32* @stderr, align 4
  %226 = load i64*, i64** @progname, align 8
  %227 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i32, i8*, ...) @fprintf(i32 %225, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64* %226, i32 %228, i32 %230)
  %232 = load i32, i32* @EXIT_FAILURE, align 4
  %233 = call i32 @exit(i32 %232) #3
  unreachable

234:                                              ; preds = %217
  %235 = call i32 @jpeg_crop_scanline(%struct.jpeg_decompress_struct* %6, i32* @crop_x, i32* @crop_width)
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 5
  %238 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)** %237, align 8
  %239 = icmp ne i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)* %238, null
  br i1 %239, label %240, label %246

240:                                              ; preds = %234
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 5
  %243 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)** %242, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %245 = call i32 %243(%struct.jpeg_decompress_struct* %6, %struct.TYPE_20__* %244)
  br label %249

246:                                              ; preds = %234
  %247 = load i32, i32* @JERR_UNSUPPORTED_FORMAT, align 4
  %248 = call i32 @ERREXIT(%struct.jpeg_decompress_struct* %6, i32 %247)
  br label %249

249:                                              ; preds = %246, %240
  %250 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i8*
  store i8* %253, i8** %16, align 8
  %254 = load i32, i32* @crop_height, align 4
  %255 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  store i32 %254, i32* %255, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 4
  %258 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)** %257, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %260 = call i32 %258(%struct.jpeg_decompress_struct* %6, %struct.TYPE_20__* %259)
  %261 = load i8*, i8** %16, align 8
  %262 = ptrtoint i8* %261 to i32
  %263 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  store i32 %262, i32* %263, align 8
  %264 = load i32, i32* @crop_y, align 4
  %265 = call i32 @jpeg_skip_scanlines(%struct.jpeg_decompress_struct* %6, i32 %264)
  br label %266

266:                                              ; preds = %273, %249
  %267 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @crop_y, align 4
  %270 = load i32, i32* @crop_height, align 4
  %271 = add nsw i32 %269, %270
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %287

273:                                              ; preds = %266
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i8* @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %6, i32 %276, i32 %279)
  store i8* %280, i8** %14, align 8
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 1
  %283 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*, i8*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*, i8*)** %282, align 8
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %285 = load i8*, i8** %14, align 8
  %286 = call i32 %283(%struct.jpeg_decompress_struct* %6, %struct.TYPE_20__* %284, i8* %285)
  br label %266

287:                                              ; preds = %266
  %288 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @crop_y, align 4
  %291 = sub nsw i32 %289, %290
  %292 = load i32, i32* @crop_height, align 4
  %293 = sub nsw i32 %291, %292
  %294 = call i32 @jpeg_skip_scanlines(%struct.jpeg_decompress_struct* %6, i32 %293)
  br label %322

295:                                              ; preds = %207
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 4
  %298 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)** %297, align 8
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %300 = call i32 %298(%struct.jpeg_decompress_struct* %6, %struct.TYPE_20__* %299)
  br label %301

301:                                              ; preds = %307, %295
  %302 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp slt i32 %303, %305
  br i1 %306, label %307, label %321

307:                                              ; preds = %301
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = call i8* @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %6, i32 %310, i32 %313)
  store i8* %314, i8** %14, align 8
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 1
  %317 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*, i8*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*, i8*)** %316, align 8
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %319 = load i8*, i8** %14, align 8
  %320 = call i32 %317(%struct.jpeg_decompress_struct* %6, %struct.TYPE_20__* %318, i8* %319)
  br label %301

321:                                              ; preds = %301
  br label %322

322:                                              ; preds = %321, %287
  br label %323

323:                                              ; preds = %322, %206
  %324 = load i8*, i8** @icc_filename, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %376

326:                                              ; preds = %323
  %327 = load i8*, i8** @icc_filename, align 8
  %328 = load i32, i32* @WRITE_BINARY, align 4
  %329 = call i32* @fopen(i8* %327, i32 %328)
  store i32* %329, i32** %17, align 8
  %330 = icmp eq i32* %329, null
  br i1 %330, label %331, label %338

331:                                              ; preds = %326
  %332 = load i32, i32* @stderr, align 4
  %333 = load i64*, i64** @progname, align 8
  %334 = load i8*, i8** @icc_filename, align 8
  %335 = call i32 (i32, i8*, ...) @fprintf(i32 %332, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %333, i8* %334)
  %336 = load i32, i32* @EXIT_FAILURE, align 4
  %337 = call i32 @exit(i32 %336) #3
  unreachable

338:                                              ; preds = %326
  %339 = call i64 @jpeg_read_icc_profile(%struct.jpeg_decompress_struct* %6, i8** %18, i32* %19)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %363

341:                                              ; preds = %338
  %342 = load i8*, i8** %18, align 8
  %343 = load i32, i32* %19, align 4
  %344 = load i32*, i32** %17, align 8
  %345 = call i32 @fwrite(i8* %342, i32 %343, i32 1, i32* %344)
  %346 = icmp slt i32 %345, 1
  br i1 %346, label %347, label %358

347:                                              ; preds = %341
  %348 = load i32, i32* @stderr, align 4
  %349 = load i64*, i64** @progname, align 8
  %350 = load i8*, i8** @icc_filename, align 8
  %351 = call i32 (i32, i8*, ...) @fprintf(i32 %348, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64* %349, i8* %350)
  %352 = load i8*, i8** %18, align 8
  %353 = call i32 @free(i8* %352)
  %354 = load i32*, i32** %17, align 8
  %355 = call i32 @fclose(i32* %354)
  %356 = load i32, i32* @EXIT_FAILURE, align 4
  %357 = call i32 @exit(i32 %356) #3
  unreachable

358:                                              ; preds = %341
  %359 = load i8*, i8** %18, align 8
  %360 = call i32 @free(i8* %359)
  %361 = load i32*, i32** %17, align 8
  %362 = call i32 @fclose(i32* %361)
  br label %375

363:                                              ; preds = %338
  %364 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 3
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @JWRN_BOGUS_ICC, align 8
  %369 = icmp ne i64 %367, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %363
  %371 = load i32, i32* @stderr, align 4
  %372 = load i64*, i64** @progname, align 8
  %373 = call i32 (i32, i8*, ...) @fprintf(i32 %371, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64* %372)
  br label %374

374:                                              ; preds = %370, %363
  br label %375

375:                                              ; preds = %374, %358
  br label %376

376:                                              ; preds = %375, %323
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 0
  %379 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_20__*)** %378, align 8
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %381 = call i32 %379(%struct.jpeg_decompress_struct* %6, %struct.TYPE_20__* %380)
  %382 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %6)
  %383 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %6)
  %384 = load i32*, i32** %10, align 8
  %385 = load i32*, i32** @stdin, align 8
  %386 = icmp ne i32* %384, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %376
  %388 = load i32*, i32** %10, align 8
  %389 = call i32 @fclose(i32* %388)
  br label %390

390:                                              ; preds = %387, %376
  %391 = load i32*, i32** %11, align 8
  %392 = load i32*, i32** @stdout, align 8
  %393 = icmp ne i32* %391, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %390
  %395 = load i32*, i32** %11, align 8
  %396 = call i32 @fclose(i32* %395)
  br label %397

397:                                              ; preds = %394, %390
  %398 = load i64, i64* @memsrc, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %397
  %401 = load i8*, i8** %12, align 8
  %402 = icmp ne i8* %401, null
  br i1 %402, label %403, label %406

403:                                              ; preds = %400
  %404 = load i8*, i8** %12, align 8
  %405 = call i32 @free(i8* %404)
  br label %406

406:                                              ; preds = %403, %400, %397
  %407 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %406
  %411 = load i32, i32* @EXIT_WARNING, align 4
  br label %414

412:                                              ; preds = %406
  %413 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %414

414:                                              ; preds = %412, %410
  %415 = phi i32 [ %411, %410 ], [ %413, %412 ]
  %416 = call i32 @exit(i32 %415) #3
  unreachable
}

declare dso_local %struct.TYPE_18__* @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_set_marker_processor(%struct.jpeg_decompress_struct*, i64, i32) #1

declare dso_local i32 @parse_switches(%struct.jpeg_decompress_struct*, i32, i8**, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @read_stdin(...) #1

declare dso_local i32* @write_stdout(...) #1

declare dso_local i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct*, i32*) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32 @ERREXIT(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i8* @jpeg_read_scanlines(%struct.jpeg_decompress_struct*, i32, i32) #1

declare dso_local i32 @jpeg_skip_scanlines(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32 @jpeg_crop_scanline(%struct.jpeg_decompress_struct*, i32*, i32*) #1

declare dso_local i64 @jpeg_read_icc_profile(%struct.jpeg_decompress_struct*, i8**, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

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
