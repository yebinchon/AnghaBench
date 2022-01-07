; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_parse_extension_control_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_parse_extension_control_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"could not open extension control file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"parameter \22%s\22 cannot be set in a secondary extension control file\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"default_version\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"module_pathname\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"relocatable\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"parameter \22%s\22 requires a Boolean value\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"superuser\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"\22%s\22 is not a valid encoding name\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"requires\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"parameter \22%s\22 must be a list of extension names\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"unrecognized parameter \22%s\22 in file \22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"parameter \22schema\22 cannot be specified when \22relocatable\22 is true\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*)* @parse_extension_control_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_extension_control_file(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @get_extension_aux_control_filename(%struct.TYPE_8__* %14, i8* %15)
  store i8* %16, i8** %5, align 8
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @get_extension_control_filename(i32 %20)
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %17, %13
  %23 = load i8*, i8** %5, align 8
  %24 = call i32* @AllocateFile(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @ENOENT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @pfree(i8* %34)
  br label %288

36:                                               ; preds = %29, %26
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 (...) @errcode_for_file_access()
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = call i32 @ereport(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %22
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 @ParseConfigFp(i32* %43, i8* %44, i32 0, i32 %45, %struct.TYPE_9__** %8, %struct.TYPE_9__** %9)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @FreeFile(i32* %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %7, align 8
  br label %50

50:                                               ; preds = %263, %42
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %267

53:                                               ; preds = %50
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @strcmp(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = call i32 @ereport(i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %62, %59
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @pstrdup(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  br label %262

78:                                               ; preds = %53
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @strcmp(i32 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = load i8*, i8** %4, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = call i32 @ereport(i32 %88, i32 %94)
  br label %96

96:                                               ; preds = %87, %84
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @pstrdup(i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 7
  store i8* %100, i8** %102, align 8
  br label %261

103:                                              ; preds = %78
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @strcmp(i32 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @pstrdup(i32 %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 6
  store i8* %113, i8** %115, align 8
  br label %260

116:                                              ; preds = %103
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @strcmp(i32 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @pstrdup(i32 %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  br label %259

129:                                              ; preds = %116
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @strcmp(i32 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @pstrdup(i32 %138)
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32* %140, i32** %142, align 8
  br label %258

143:                                              ; preds = %129
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @strcmp(i32 %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %143
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = call i32 @parse_bool(i32 %152, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %149
  %158 = load i32, i32* @ERROR, align 4
  %159 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %160 = call i32 @errcode(i32 %159)
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %163)
  %165 = call i32 @ereport(i32 %158, i32 %164)
  br label %166

166:                                              ; preds = %157, %149
  br label %257

167:                                              ; preds = %143
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @strcmp(i32 %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %167
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 4
  %179 = call i32 @parse_bool(i32 %176, i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %173
  %182 = load i32, i32* @ERROR, align 4
  %183 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %184 = call i32 @errcode(i32 %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %187)
  %189 = call i32 @ereport(i32 %182, i32 %188)
  br label %190

190:                                              ; preds = %181, %173
  br label %256

191:                                              ; preds = %167
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @strcmp(i32 %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %191
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @pg_valid_server_encoding(i32 %200)
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %197
  %209 = load i32, i32* @ERROR, align 4
  %210 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %211 = call i32 @errcode(i32 %210)
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %214)
  %216 = call i32 @ereport(i32 %209, i32 %215)
  br label %217

217:                                              ; preds = %208, %197
  br label %255

218:                                              ; preds = %191
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @strcmp(i32 %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %244

224:                                              ; preds = %218
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i8* @pstrdup(i32 %227)
  store i8* %228, i8** %10, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  %232 = call i32 @SplitIdentifierString(i8* %229, i8 signext 44, i32* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %243, label %234

234:                                              ; preds = %224
  %235 = load i32, i32* @ERROR, align 4
  %236 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %237 = call i32 @errcode(i32 %236)
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i32 %240)
  %242 = call i32 @ereport(i32 %235, i32 %241)
  br label %243

243:                                              ; preds = %234, %224
  br label %254

244:                                              ; preds = %218
  %245 = load i32, i32* @ERROR, align 4
  %246 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %247 = call i32 @errcode(i32 %246)
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i8*, i8** %5, align 8
  %252 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %250, i8* %251)
  %253 = call i32 @ereport(i32 %245, i32 %252)
  br label %254

254:                                              ; preds = %244, %243
  br label %255

255:                                              ; preds = %254, %217
  br label %256

256:                                              ; preds = %255, %190
  br label %257

257:                                              ; preds = %256, %166
  br label %258

258:                                              ; preds = %257, %135
  br label %259

259:                                              ; preds = %258, %122
  br label %260

260:                                              ; preds = %259, %109
  br label %261

261:                                              ; preds = %260, %96
  br label %262

262:                                              ; preds = %261, %71
  br label %263

263:                                              ; preds = %262
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %265, align 8
  store %struct.TYPE_9__* %266, %struct.TYPE_9__** %7, align 8
  br label %50

267:                                              ; preds = %50
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %269 = call i32 @FreeConfigVariables(%struct.TYPE_9__* %268)
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %267
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %285

279:                                              ; preds = %274
  %280 = load i32, i32* @ERROR, align 4
  %281 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %282 = call i32 @errcode(i32 %281)
  %283 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0))
  %284 = call i32 @ereport(i32 %280, i32 %283)
  br label %285

285:                                              ; preds = %279, %274, %267
  %286 = load i8*, i8** %5, align 8
  %287 = call i32 @pfree(i8* %286)
  br label %288

288:                                              ; preds = %285, %33
  ret void
}

declare dso_local i8* @get_extension_aux_control_filename(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @get_extension_control_filename(i32) #1

declare dso_local i32* @AllocateFile(i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @ParseConfigFp(i32*, i8*, i32, i32, %struct.TYPE_9__**, %struct.TYPE_9__**) #1

declare dso_local i32 @FreeFile(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @parse_bool(i32, i32*) #1

declare dso_local i32 @pg_valid_server_encoding(i32) #1

declare dso_local i32 @SplitIdentifierString(i8*, i8 signext, i32*) #1

declare dso_local i32 @FreeConfigVariables(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
