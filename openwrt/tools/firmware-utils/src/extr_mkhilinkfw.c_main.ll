; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkhilinkfw.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkhilinkfw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@main.long_options = internal global [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 -127, i32 0, i32 101 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8 -127, i32 0, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32 0, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8 -128, i32 0, i32 111 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"decrypt\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dei:o:\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"%s: decrypt may only be specified once\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%s: encrypt may only be specified once\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"%s: only one input file may be specified\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"%s: only one output file may be specified\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"%s: decrypt and encrypt may not be used together\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"%s: neither decrypt or encrypt were specified\0A\00", align 1
@temp_fd = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [29 x i8] c"Can't create temporary file\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@exit_cleanup = common dso_local global i32 0, align 4
@DES_KEY = common dso_local global i64 0, align 8
@schedule = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Can't open %s for reading: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"Not enough data\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"mmap failed: %s\0A\00", align 1
@IH_MAGIC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [53 x i8] c"Header magic incorrect: expected 0x%08X, got 0x%08X\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"ftruncate failed: %s\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"Can't open %s for writing: %s\0A\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [11 x i8], align 1
  %17 = alloca %struct.TYPE_2__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %22

22:                                               ; preds = %2, %111
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt_long(i32 %23, i8** %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @main.long_options, i64 0, i64 0), i32* %18)
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %19, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %112

29:                                               ; preds = %22
  %30 = load i32, i32* %19, align 4
  switch i32 %30, label %109 [
    i32 100, label %31
    i32 101, label %47
    i32 105, label %63
    i32 111, label %85
    i32 63, label %107
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @show_usage(i8* %44)
  br label %46

46:                                               ; preds = %36, %31
  br label %111

47:                                               ; preds = %29
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %56)
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @show_usage(i8* %60)
  br label %62

62:                                               ; preds = %52, %47
  br label %111

63:                                               ; preds = %29
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @show_usage(i8* %76)
  br label %78

78:                                               ; preds = %68, %63
  %79 = load i8*, i8** @optarg, align 8
  %80 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i8*, i8** @optarg, align 8
  store i8* %83, i8** %10, align 8
  br label %84

84:                                               ; preds = %82, %78
  br label %111

85:                                               ; preds = %29
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i32, i32* @stderr, align 4
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %94)
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @show_usage(i8* %98)
  br label %100

100:                                              ; preds = %90, %85
  %101 = load i8*, i8** @optarg, align 8
  %102 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i8*, i8** @optarg, align 8
  store i8* %105, i8** %11, align 8
  br label %106

106:                                              ; preds = %104, %100
  br label %111

107:                                              ; preds = %29
  %108 = call i32 @exit(i32 -1) #3
  unreachable

109:                                              ; preds = %29
  %110 = call i32 (...) @abort() #3
  unreachable

111:                                              ; preds = %106, %84, %62, %46
  br label %22

112:                                              ; preds = %28
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load i32, i32* @stderr, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* %122)
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @show_usage(i8* %126)
  br label %128

128:                                              ; preds = %118, %115, %112
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* @stderr, align 4
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %138)
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @show_usage(i8* %142)
  br label %144

144:                                              ; preds = %134, %131, %128
  %145 = call i32 (...) @tmpfile()
  %146 = call i64 @fileno(i32 %145)
  store i64 %146, i64* @temp_fd, align 8
  %147 = load i64, i64* @temp_fd, align 8
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i32, i32* @stderr, align 4
  %151 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %152 = load i32, i32* @EXIT_FAILURE, align 4
  %153 = call i32 @exit(i32 %152) #3
  unreachable

154:                                              ; preds = %144
  %155 = load i32, i32* @exit_cleanup, align 4
  %156 = call i32 @atexit(i32 %155)
  %157 = load i64, i64* @DES_KEY, align 8
  %158 = inttoptr i64 %157 to i32*
  %159 = call i32 @DES_set_key_unchecked(i32* %158, i32* @schedule)
  %160 = load i8*, i8** %10, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %184

162:                                              ; preds = %154
  %163 = load i8*, i8** %10, align 8
  %164 = load i32, i32* @O_RDONLY, align 4
  %165 = call i32 @open(i8* %163, i32 %164)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load i32, i32* @stderr, align 4
  %170 = load i8*, i8** %10, align 8
  %171 = load i32, i32* @errno, align 4
  %172 = call i8* @strerror(i32 %171)
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* %170, i8* %172)
  %174 = load i32, i32* @EXIT_FAILURE, align 4
  %175 = call i32 @exit(i32 %174) #3
  unreachable

176:                                              ; preds = %162
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* @temp_fd, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i32 @copy_file(i64 %178, i32 %180)
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @close(i32 %182)
  br label %189

184:                                              ; preds = %154
  %185 = load i64, i64* @STDIN_FILENO, align 8
  %186 = load i64, i64* @temp_fd, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @copy_file(i64 %185, i32 %187)
  br label %189

189:                                              ; preds = %184, %176
  %190 = load i64, i64* @temp_fd, align 8
  %191 = load i32, i32* @SEEK_CUR, align 4
  %192 = call i32 @lseek(i64 %190, i32 0, i32 %191)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp slt i32 %193, 64
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i32, i32* @stderr, align 4
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %198 = load i32, i32* @EXIT_FAILURE, align 4
  %199 = call i32 @exit(i32 %198) #3
  unreachable

200:                                              ; preds = %189
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* @PROT_READ, align 4
  %203 = load i32, i32* @PROT_WRITE, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @MAP_SHARED, align 4
  %206 = load i64, i64* @temp_fd, align 8
  %207 = call i8* @mmap(i32 0, i32 %201, i32 %204, i32 %205, i64 %206, i32 0)
  store i8* %207, i8** %15, align 8
  %208 = load i8*, i8** %15, align 8
  %209 = load i8*, i8** @MAP_FAILED, align 8
  %210 = icmp eq i8* %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %200
  %212 = load i32, i32* @stderr, align 4
  %213 = load i32, i32* @errno, align 4
  %214 = call i8* @strerror(i32 %213)
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %212, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %214)
  %216 = load i32, i32* @EXIT_FAILURE, align 4
  %217 = call i32 @exit(i32 %216) #3
  unreachable

218:                                              ; preds = %200
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %276

221:                                              ; preds = %218
  %222 = load i8*, i8** %15, align 8
  %223 = bitcast i8* %222 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %223, %struct.TYPE_2__** %17, align 8
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @ntohl(i32 %227)
  %229 = sext i32 %228 to i64
  %230 = add i64 %229, 8
  %231 = trunc i64 %230 to i32
  %232 = call i32 @min(i32 %224, i32 %231)
  store i32 %232, i32* %20, align 4
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @ntohl(i32 %235)
  %237 = load i32, i32* @IH_MAGIC, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %252

239:                                              ; preds = %221
  %240 = load i32, i32* @stderr, align 4
  %241 = load i32, i32* @IH_MAGIC, align 4
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @ntohl(i32 %244)
  %246 = call i32 (i32, i8*, ...) @fprintf(i32 %240, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i32 %241, i32 %245)
  %247 = load i8*, i8** %15, align 8
  %248 = load i32, i32* %14, align 4
  %249 = call i32 @munmap(i8* %247, i32 %248)
  %250 = load i32, i32* @EXIT_FAILURE, align 4
  %251 = call i32 @exit(i32 %250) #3
  unreachable

252:                                              ; preds = %221
  %253 = load i8*, i8** %15, align 8
  %254 = load i32, i32* %20, align 4
  %255 = call i32 @do_encrypt(i8* %253, i32 %254)
  %256 = load i8*, i8** %15, align 8
  %257 = load i32, i32* %14, align 4
  %258 = call i32 @munmap(i8* %256, i32 %257)
  %259 = load i32, i32* %20, align 4
  %260 = load i32, i32* %14, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %252
  %263 = load i64, i64* @temp_fd, align 8
  %264 = load i32, i32* %20, align 4
  %265 = call i64 @ftruncate(i64 %263, i32 %264)
  %266 = icmp slt i64 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %262
  %268 = load i32, i32* @stderr, align 4
  %269 = load i32, i32* @errno, align 4
  %270 = call i8* @strerror(i32 %269)
  %271 = call i32 (i32, i8*, ...) @fprintf(i32 %268, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %270)
  %272 = load i32, i32* @EXIT_FAILURE, align 4
  %273 = call i32 @exit(i32 %272) #3
  unreachable

274:                                              ; preds = %262
  br label %275

275:                                              ; preds = %274, %252
  br label %276

276:                                              ; preds = %275, %218
  %277 = load i32, i32* %7, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %314

279:                                              ; preds = %276
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @min(i32 %280, i32 11)
  store i32 %281, i32* %21, align 4
  %282 = getelementptr inbounds [11 x i8], [11 x i8]* %16, i64 0, i64 0
  %283 = load i8*, i8** %15, align 8
  %284 = load i32, i32* %21, align 4
  %285 = call i32 @memcpy(i8* %282, i8* %283, i32 %284)
  %286 = getelementptr inbounds [11 x i8], [11 x i8]* %16, i64 0, i64 0
  %287 = load i32, i32* %21, align 4
  %288 = call i32 @do_decrypt(i8* %286, i32 %287)
  %289 = getelementptr inbounds [11 x i8], [11 x i8]* %16, i64 0, i64 0
  %290 = bitcast i8* %289 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %290, %struct.TYPE_2__** %17, align 8
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @ntohl(i32 %293)
  %295 = load i32, i32* @IH_MAGIC, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %307

297:                                              ; preds = %279
  %298 = load i32, i32* @stderr, align 4
  %299 = load i32, i32* @IH_MAGIC, align 4
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @ntohl(i32 %302)
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %298, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i32 %299, i32 %303)
  %305 = load i32, i32* @EXIT_FAILURE, align 4
  %306 = call i32 @exit(i32 %305) #3
  unreachable

307:                                              ; preds = %279
  %308 = load i8*, i8** %15, align 8
  %309 = load i32, i32* %14, align 4
  %310 = call i32 @do_decrypt(i8* %308, i32 %309)
  %311 = load i8*, i8** %15, align 8
  %312 = load i32, i32* %14, align 4
  %313 = call i32 @munmap(i8* %311, i32 %312)
  br label %314

314:                                              ; preds = %307, %276
  %315 = load i64, i64* @temp_fd, align 8
  %316 = load i32, i32* @SEEK_SET, align 4
  %317 = call i32 @lseek(i64 %315, i32 0, i32 %316)
  %318 = load i8*, i8** %11, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %346

320:                                              ; preds = %314
  %321 = load i8*, i8** %11, align 8
  %322 = load i32, i32* @S_IRUSR, align 4
  %323 = load i32, i32* @S_IWUSR, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* @S_IRGRP, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* @S_IROTH, align 4
  %328 = or i32 %326, %327
  %329 = call i32 @creat(i8* %321, i32 %328)
  store i32 %329, i32* %13, align 4
  %330 = load i32, i32* %13, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %320
  %333 = load i32, i32* @stderr, align 4
  %334 = load i8*, i8** %11, align 8
  %335 = load i32, i32* @errno, align 4
  %336 = call i8* @strerror(i32 %335)
  %337 = call i32 (i32, i8*, ...) @fprintf(i32 %333, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %334, i8* %336)
  %338 = load i32, i32* @EXIT_FAILURE, align 4
  %339 = call i32 @exit(i32 %338) #3
  unreachable

340:                                              ; preds = %320
  %341 = load i64, i64* @temp_fd, align 8
  %342 = load i32, i32* %13, align 4
  %343 = call i32 @copy_file(i64 %341, i32 %342)
  %344 = load i32, i32* %13, align 4
  %345 = call i32 @close(i32 %344)
  br label %350

346:                                              ; preds = %314
  %347 = load i64, i64* @temp_fd, align 8
  %348 = load i32, i32* @STDOUT_FILENO, align 4
  %349 = call i32 @copy_file(i64 %347, i32 %348)
  br label %350

350:                                              ; preds = %346, %340
  %351 = load i32, i32* @EXIT_SUCCESS, align 4
  %352 = call i32 @exit(i32 %351) #3
  unreachable
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @show_usage(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @fileno(i32) #1

declare dso_local i32 @tmpfile(...) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @DES_set_key_unchecked(i32*, i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @copy_file(i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @lseek(i64, i32, i32) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @do_encrypt(i8*, i32) #1

declare dso_local i64 @ftruncate(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @do_decrypt(i8*, i32) #1

declare dso_local i32 @creat(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
