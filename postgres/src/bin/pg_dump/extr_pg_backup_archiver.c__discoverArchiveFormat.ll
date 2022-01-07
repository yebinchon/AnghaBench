; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__discoverArchiveFormat.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__discoverArchiveFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"attempting to ascertain archive format\00", align 1
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/toc.dat\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"directory name too long: \22%s\22\00", align 1
@archDirectory = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [80 x i8] c"directory \22%s\22 does not appear to be a valid archive (\22toc.dat\22 does not exist)\00", align 1
@PG_BINARY_R = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"could not open input file \22%s\22: %m\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"could not open input file: %m\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not read input file: %m\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"input file is too short (read %lu, expected 5)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"PGDMP\00", align 1
@EOF = common dso_local global i32 0, align 4
@K_VERS_1_7 = common dso_local global i32 0, align 4
@TEXT_DUMPALL_HEADER = common dso_local global i8* null, align 8
@TEXT_DUMP_HEADER = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [62 x i8] c"input file appears to be a text format dump. Please use psql.\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"input file does not appear to be a valid archive (too short?)\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"input file does not appear to be a valid archive\00", align 1
@archTar = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"could not close input file: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @_discoverArchiveFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_discoverArchiveFormat(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [6 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %7, align 4
  %16 = call i32 @pg_log_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @free(i8* %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 512, i32* %28, align 8
  %29 = call i8* @pg_malloc0(i32 512)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 9
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %108

40:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @stat(i8* %43, %struct.stat* %8)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @S_ISDIR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %93

51:                                               ; preds = %46
  %52 = load i32, i32* @MAXPGPATH, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %9, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %10, align 8
  %56 = load i32, i32* @MAXPGPATH, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @snprintf(i8* %55, i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @MAXPGPATH, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %63, %51
  %69 = call i64 @stat(i8* %55, %struct.stat* %8)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @S_ISREG(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i8*, i8** @archDirectory, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %89

84:                                               ; preds = %71, %68
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  store i32* null, i32** %4, align 8
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %84, %76
  %90 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %11, align 4
  switch i32 %91, label %408 [
    i32 0, label %92
    i32 1, label %406
  ]

92:                                               ; preds = %89
  br label %107

93:                                               ; preds = %46, %40
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* @PG_BINARY_R, align 4
  %98 = call i32* @fopen(i8* %96, i32 %97)
  store i32* %98, i32** %4, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %101, %93
  br label %107

107:                                              ; preds = %106, %92
  br label %115

108:                                              ; preds = %26
  %109 = load i32*, i32** @stdin, align 8
  store i32* %109, i32** %4, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %114, %107
  %116 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %117 = load i32*, i32** %4, align 8
  %118 = call i64 @fread(i8* %116, i32 1, i32 5, i32* %117)
  store i64 %118, i64* %6, align 8
  %119 = icmp ne i64 %118, 5
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load i32*, i32** %4, align 8
  %122 = call i64 @ferror(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %129

126:                                              ; preds = %120
  %127 = load i64, i64* %6, align 8
  %128 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i64 %127)
  br label %129

129:                                              ; preds = %126, %124
  br label %130

130:                                              ; preds = %129, %115
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %136 = call i32 @memcpy(i8* %134, i8* %135, i32 5)
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  store i32 5, i32* %138, align 4
  %139 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %140 = call i64 @strncmp(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %306

142:                                              ; preds = %130
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @fgetc(i32* %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* @EOF, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @READ_ERROR_EXIT(i32* %148)
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i32, i32* %12, align 4
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %13, align 1
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @fgetc(i32* %153)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* @EOF, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @READ_ERROR_EXIT(i32* %158)
  br label %160

160:                                              ; preds = %157, %150
  %161 = load i32, i32* %12, align 4
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %14, align 1
  %163 = load i8, i8* %13, align 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %166, i64 %171
  store i8 %163, i8* %172, align 1
  %173 = load i8, i8* %14, align 1
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i8, i8* %176, i64 %181
  store i8 %173, i8* %182, align 1
  %183 = load i8, i8* %13, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp sgt i32 %184, 1
  br i1 %185, label %194, label %186

186:                                              ; preds = %160
  %187 = load i8, i8* %13, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %215

190:                                              ; preds = %186
  %191 = load i8, i8* %14, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %215

194:                                              ; preds = %190, %160
  %195 = load i32*, i32** %4, align 8
  %196 = call i32 @fgetc(i32* %195)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* @EOF, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @READ_ERROR_EXIT(i32* %200)
  br label %202

202:                                              ; preds = %199, %194
  %203 = load i32, i32* %12, align 4
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %15, align 1
  %205 = load i8, i8* %15, align 1
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %208, i64 %213
  store i8 %205, i8* %214, align 1
  br label %216

215:                                              ; preds = %190, %186
  store i8 0, i8* %15, align 1
  br label %216

216:                                              ; preds = %215, %202
  %217 = load i8, i8* %13, align 1
  %218 = load i8, i8* %14, align 1
  %219 = load i8, i8* %15, align 1
  %220 = call i32 @MAKE_ARCHIVE_VERSION(i8 signext %217, i8 signext %218, i8 signext %219)
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 8
  store i32 %220, i32* %222, align 8
  %223 = load i32*, i32** %4, align 8
  %224 = call i32 @fgetc(i32* %223)
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* @EOF, align 4
  %228 = icmp eq i32 %224, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %216
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @READ_ERROR_EXIT(i32* %230)
  br label %232

232:                                              ; preds = %229, %216
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = trunc i32 %235 to i8
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i8, i8* %239, i64 %244
  store i8 %236, i8* %245, align 1
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @K_VERS_1_7, align 4
  %250 = icmp sge i32 %248, %249
  br i1 %250, label %251, label %275

251:                                              ; preds = %232
  %252 = load i32*, i32** %4, align 8
  %253 = call i32 @fgetc(i32* %252)
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 6
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* @EOF, align 4
  %257 = icmp eq i32 %253, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %251
  %259 = load i32*, i32** %4, align 8
  %260 = call i32 @READ_ERROR_EXIT(i32* %259)
  br label %261

261:                                              ; preds = %258, %251
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 8
  %265 = trunc i32 %264 to i8
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i8, i8* %268, i64 %273
  store i8 %265, i8* %274, align 1
  br label %281

275:                                              ; preds = %232
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 6
  store i32 %278, i32* %280, align 8
  br label %281

281:                                              ; preds = %275, %261
  %282 = load i32*, i32** %4, align 8
  %283 = call i32 @fgetc(i32* %282)
  store i32 %283, i32* %12, align 4
  %284 = load i32, i32* @EOF, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load i32*, i32** %4, align 8
  %288 = call i32 @READ_ERROR_EXIT(i32* %287)
  br label %289

289:                                              ; preds = %286, %281
  %290 = load i32, i32* %12, align 4
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 8
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = trunc i32 %295 to i8
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %301, align 4
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i8, i8* %299, i64 %304
  store i8 %296, i8* %305, align 1
  br label %381

306:                                              ; preds = %130
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %309, i64 %313
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = sub nsw i32 512, %317
  %319 = load i32*, i32** %4, align 8
  %320 = call i64 @fread(i8* %314, i32 1, i32 %318, i32* %319)
  store i64 %320, i64* %6, align 8
  %321 = load i64, i64* %6, align 8
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = add i64 %325, %321
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %323, align 4
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = load i8*, i8** @TEXT_DUMPALL_HEADER, align 8
  %332 = call i32 @strlen(i8* %331)
  %333 = icmp sge i32 %330, %332
  br i1 %333, label %334, label %354

334:                                              ; preds = %306
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 0
  %337 = load i8*, i8** %336, align 8
  %338 = load i8*, i8** @TEXT_DUMP_HEADER, align 8
  %339 = load i8*, i8** @TEXT_DUMP_HEADER, align 8
  %340 = call i32 @strlen(i8* %339)
  %341 = call i64 @strncmp(i8* %337, i8* %338, i32 %340)
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %352, label %343

343:                                              ; preds = %334
  %344 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8
  %347 = load i8*, i8** @TEXT_DUMPALL_HEADER, align 8
  %348 = load i8*, i8** @TEXT_DUMPALL_HEADER, align 8
  %349 = call i32 @strlen(i8* %348)
  %350 = call i64 @strncmp(i8* %346, i8* %347, i32 %349)
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %343, %334
  %353 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0))
  br label %354

354:                                              ; preds = %352, %343, %306
  %355 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %357, 512
  br i1 %358, label %359, label %369

359:                                              ; preds = %354
  %360 = load i32*, i32** %4, align 8
  %361 = call i64 @feof(i32* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %359
  %364 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0))
  br label %368

365:                                              ; preds = %359
  %366 = load i32*, i32** %4, align 8
  %367 = call i32 @READ_ERROR_EXIT(i32* %366)
  br label %368

368:                                              ; preds = %365, %363
  br label %369

369:                                              ; preds = %368, %354
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = call i32 @isValidTarHeader(i8* %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %369
  %376 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %377

377:                                              ; preds = %375, %369
  %378 = load i32, i32* @archTar, align 4
  %379 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 4
  store i32 %378, i32* %380, align 8
  br label %381

381:                                              ; preds = %377, %289
  %382 = load i32*, i32** %4, align 8
  %383 = load i32, i32* @SEEK_SET, align 4
  %384 = call i64 @fseeko(i32* %382, i32 0, i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %381
  %387 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 7
  store i32 1, i32* %388, align 4
  br label %392

389:                                              ; preds = %381
  %390 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 2
  store i32 0, i32* %391, align 4
  br label %392

392:                                              ; preds = %389, %386
  %393 = load i32, i32* %7, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %402

395:                                              ; preds = %392
  %396 = load i32*, i32** %4, align 8
  %397 = call i64 @fclose(i32* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %395
  %400 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %401

401:                                              ; preds = %399, %395
  br label %402

402:                                              ; preds = %401, %392
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 4
  %405 = load i32, i32* %404, align 8
  store i32 %405, i32* %2, align 4
  br label %406

406:                                              ; preds = %402, %89
  %407 = load i32, i32* %2, align 4
  ret i32 %407

408:                                              ; preds = %89
  unreachable
}

declare dso_local i32 @pg_log_debug(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @pg_malloc0(i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @S_ISREG(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @READ_ERROR_EXIT(i32*) #1

declare dso_local i32 @MAKE_ARCHIVE_VERSION(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @isValidTarHeader(i8*) #1

declare dso_local i64 @fseeko(i32*, i32, i32) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
