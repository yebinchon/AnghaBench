; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_AlterSystemSetConfigFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_AlterSystemSetConfigFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.config_generic = type { i64, i32, i64 }
%union.config_var_val = type { i8* }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"must be superuser to execute ALTER SYSTEM command\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"unrecognized alter system stmt type: %d\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"unrecognized configuration parameter \22%s\22\00", align 1
@PGC_INTERNAL = common dso_local global i64 0, align 8
@GUC_DISALLOW_IN_FILE = common dso_local global i32 0, align 4
@GUC_DISALLOW_IN_AUTO_FILE = common dso_local global i32 0, align 4
@ERRCODE_CANT_CHANGE_RUNTIME_PARAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"parameter \22%s\22 cannot be changed\00", align 1
@PGC_S_FILE = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"invalid value for parameter \22%s\22: \22%s\22\00", align 1
@PGC_STRING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"parameter value for ALTER SYSTEM must not contain a newline\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PG_AUTOCONF_FILENAME = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@AutoFileLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@LOG = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"could not parse contents of file \22%s\22\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AlterSystemSetConfigFile(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.config_generic*, align 8
  %13 = alloca %union.config_var_val, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.stat, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* @MAXPGPATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = call i32 (...) @superuser()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %3, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %50 [
    i32 128, label %43
    i32 129, label %48
    i32 131, label %48
    i32 130, label %49
  ]

43:                                               ; preds = %32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i8* @ExtractSetVariableArgs(%struct.TYPE_5__* %46)
  store i8* %47, i8** %4, align 8
  br label %58

48:                                               ; preds = %32, %32
  store i8* null, i8** %4, align 8
  br label %58

49:                                               ; preds = %32
  store i8* null, i8** %4, align 8
  store i32 1, i32* %5, align 4
  br label %58

50:                                               ; preds = %32
  %51 = load i32, i32* @ERROR, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @elog(i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %50, %49, %48, %43
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %152, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* @ERROR, align 4
  %64 = call %struct.config_generic* @find_option(i8* %62, i32 0, i32 %63)
  store %struct.config_generic* %64, %struct.config_generic** %12, align 8
  %65 = load %struct.config_generic*, %struct.config_generic** %12, align 8
  %66 = icmp eq %struct.config_generic* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %70 = call i32 @errcode(i32 %69)
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = call i32 @ereport(i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %67, %61
  %75 = load %struct.config_generic*, %struct.config_generic** %12, align 8
  %76 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PGC_INTERNAL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %94, label %80

80:                                               ; preds = %74
  %81 = load %struct.config_generic*, %struct.config_generic** %12, align 8
  %82 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @GUC_DISALLOW_IN_FILE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.config_generic*, %struct.config_generic** %12, align 8
  %89 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @GUC_DISALLOW_IN_AUTO_FILE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87, %80, %74
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_CANT_CHANGE_RUNTIME_PARAM, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = call i32 @ereport(i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %94, %87
  %102 = load i8*, i8** %4, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %151

104:                                              ; preds = %101
  store i8* null, i8** %14, align 8
  %105 = load %struct.config_generic*, %struct.config_generic** %12, align 8
  %106 = load i8*, i8** %3, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = load i32, i32* @PGC_S_FILE, align 4
  %109 = load i32, i32* @ERROR, align 4
  %110 = call i32 @parse_and_validate_value(%struct.config_generic* %105, i8* %106, i8* %107, i32 %108, i32 %109, %union.config_var_val* %13, i8** %14)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %115 = call i32 @errcode(i32 %114)
  %116 = load i8*, i8** %3, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %116, i8* %117)
  %119 = call i32 @ereport(i32 %113, i32 %118)
  br label %120

120:                                              ; preds = %112, %104
  %121 = load %struct.config_generic*, %struct.config_generic** %12, align 8
  %122 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PGC_STRING, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = bitcast %union.config_var_val* %13 to i8**
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = bitcast %union.config_var_val* %13 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @free(i8* %132)
  br label %134

134:                                              ; preds = %130, %126, %120
  %135 = load i8*, i8** %14, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i8*, i8** %14, align 8
  %139 = call i32 @free(i8* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i8*, i8** %4, align 8
  %142 = call i64 @strchr(i8* %141, i8 signext 10)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i32, i32* @ERROR, align 4
  %146 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %147 = call i32 @errcode(i32 %146)
  %148 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %149 = call i32 @ereport(i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %144, %140
  br label %151

151:                                              ; preds = %150, %101
  br label %152

152:                                              ; preds = %151, %58
  %153 = trunc i64 %18 to i32
  %154 = load i8*, i8** @PG_AUTOCONF_FILENAME, align 8
  %155 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %154)
  %156 = trunc i64 %22 to i32
  %157 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %23, i32 %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %158 = load i32, i32* @AutoFileLock, align 4
  %159 = load i32, i32* @LW_EXCLUSIVE, align 4
  %160 = call i32 @LWLockAcquire(i32 %158, i32 %159)
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %193, label %163

163:                                              ; preds = %152
  %164 = call i64 @stat(i8* %20, %struct.stat* %15)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %189

166:                                              ; preds = %163
  %167 = call i32* @AllocateFile(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %167, i32** %16, align 8
  %168 = load i32*, i32** %16, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i32, i32* @ERROR, align 4
  %172 = call i32 (...) @errcode_for_file_access()
  %173 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %20)
  %174 = call i32 @ereport(i32 %171, i32 %173)
  br label %175

175:                                              ; preds = %170, %166
  %176 = load i32*, i32** %16, align 8
  %177 = load i32, i32* @LOG, align 4
  %178 = call i32 @ParseConfigFp(i32* %176, i8* %20, i32 0, i32 %177, i32** %6, i32** %7)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* @ERROR, align 4
  %182 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %183 = call i32 @errcode(i32 %182)
  %184 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* %20)
  %185 = call i32 @ereport(i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %180, %175
  %187 = load i32*, i32** %16, align 8
  %188 = call i32 @FreeFile(i32* %187)
  br label %189

189:                                              ; preds = %186, %163
  %190 = load i8*, i8** %3, align 8
  %191 = load i8*, i8** %4, align 8
  %192 = call i32 @replace_auto_config_value(i32** %6, i32** %7, i8* %190, i8* %191)
  br label %193

193:                                              ; preds = %189, %152
  %194 = load i32, i32* @O_CREAT, align 4
  %195 = load i32, i32* @O_RDWR, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @O_TRUNC, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @BasicOpenFile(i8* %23, i32 %198)
  store volatile i32 %199, i32* %8, align 4
  %200 = load volatile i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %193
  %203 = load i32, i32* @ERROR, align 4
  %204 = call i32 (...) @errcode_for_file_access()
  %205 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %23)
  %206 = call i32 @ereport(i32 %203, i32 %205)
  br label %207

207:                                              ; preds = %202, %193
  %208 = call i32 (...) @PG_TRY()
  %209 = load volatile i32, i32* %8, align 4
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @write_auto_conf_file(i32 %209, i8* %23, i32* %210)
  %212 = load volatile i32, i32* %8, align 4
  %213 = call i32 @close(i32 %212)
  store volatile i32 -1, i32* %8, align 4
  %214 = load i32, i32* @ERROR, align 4
  %215 = call i32 @durable_rename(i8* %23, i8* %20, i32 %214)
  %216 = call i32 (...) @PG_CATCH()
  %217 = load volatile i32, i32* %8, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %207
  %220 = load volatile i32, i32* %8, align 4
  %221 = call i32 @close(i32 %220)
  br label %222

222:                                              ; preds = %219, %207
  %223 = call i32 @unlink(i8* %23)
  %224 = call i32 (...) @PG_RE_THROW()
  %225 = call i32 (...) @PG_END_TRY()
  %226 = load i32*, i32** %6, align 8
  %227 = call i32 @FreeConfigVariables(i32* %226)
  %228 = load i32, i32* @AutoFileLock, align 4
  %229 = call i32 @LWLockRelease(i32 %228)
  %230 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %230)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @superuser(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i8* @ExtractSetVariableArgs(%struct.TYPE_5__*) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local %struct.config_generic* @find_option(i8*, i32, i32) #2

declare dso_local i32 @parse_and_validate_value(%struct.config_generic*, i8*, i8*, i32, i32, %union.config_var_val*, i8**) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @LWLockAcquire(i32, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32* @AllocateFile(i8*, i8*) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @ParseConfigFp(i32*, i8*, i32, i32, i32**, i32**) #2

declare dso_local i32 @FreeFile(i32*) #2

declare dso_local i32 @replace_auto_config_value(i32**, i32**, i8*, i8*) #2

declare dso_local i32 @BasicOpenFile(i8*, i32) #2

declare dso_local i32 @PG_TRY(...) #2

declare dso_local i32 @write_auto_conf_file(i32, i8*, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @durable_rename(i8*, i8*, i32) #2

declare dso_local i32 @PG_CATCH(...) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @PG_RE_THROW(...) #2

declare dso_local i32 @PG_END_TRY(...) #2

declare dso_local i32 @FreeConfigVariables(i32*) #2

declare dso_local i32 @LWLockRelease(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
