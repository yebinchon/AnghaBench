; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_ReadHead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_ReadHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8 (%struct.TYPE_13__*)*, i64, i8, i8, i32, i32, i8*, i8*, i32, i8*, i32 (%struct.TYPE_13__*, i8*, i32)*, i32 }
%struct.tm = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"PGDMP\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"did not find magic string in file header\00", align 1
@K_VERS_1_0 = common dso_local global i64 0, align 8
@K_VERS_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"unsupported version (%d.%d) in file header\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"sanity check on integer size (%lu) failed\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"archive was made on a machine with larger integers, some operations might fail\00", align 1
@K_VERS_1_7 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"expected format (%d) differs from format found in file (%d)\00", align 1
@K_VERS_1_2 = common dso_local global i64 0, align 8
@K_VERS_1_4 = common dso_local global i64 0, align 8
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [103 x i8] c"archive is compressed, but this installation does not support compression -- no data will be available\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"invalid creation date in header\00", align 1
@K_VERS_1_10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReadHead(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca [7 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %144, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 10
  %16 = load i32 (%struct.TYPE_13__*, i8*, i32)*, i32 (%struct.TYPE_13__*, i8*, i32)** %15, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %19 = call i32 %16(%struct.TYPE_13__* %17, i8* %18, i32 5)
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %13
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i8 (%struct.TYPE_13__*)*, i8 (%struct.TYPE_13__*)** %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = call signext i8 %28(%struct.TYPE_13__* %29)
  store i8 %30, i8* %6, align 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i8 (%struct.TYPE_13__*)*, i8 (%struct.TYPE_13__*)** %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = call signext i8 %33(%struct.TYPE_13__* %34)
  store i8 %35, i8* %7, align 1
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %47, label %39

39:                                               ; preds = %25
  %40 = load i8, i8* %6, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i8, i8* %7, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43, %25
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i8 (%struct.TYPE_13__*)*, i8 (%struct.TYPE_13__*)** %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = call signext i8 %50(%struct.TYPE_13__* %51)
  store i8 %52, i8* %8, align 1
  br label %54

53:                                               ; preds = %43, %39
  store i8 0, i8* %8, align 1
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i8, i8* %6, align 1
  %56 = load i8, i8* %7, align 1
  %57 = load i8, i8* %8, align 1
  %58 = call i64 @MAKE_ARCHIVE_VERSION(i8 signext %55, i8 signext %56, i8 signext %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @K_VERS_1_0, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %54
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @K_VERS_MAX, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66, %54
  %73 = load i8, i8* %6, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* %7, align 1
  %76 = sext i8 %75 to i32
  %77 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i8 (%struct.TYPE_13__*)*, i8 (%struct.TYPE_13__*)** %80, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %83 = call signext i8 %81(%struct.TYPE_13__* %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  store i8 %83, i8* %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i8, i8* %87, align 8
  %89 = sext i8 %88 to i32
  %90 = icmp sgt i32 %89, 32
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i8, i8* %93, align 8
  %95 = sext i8 %94 to i64
  %96 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %91, %78
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i8, i8* %99, align 8
  %101 = sext i8 %100 to i64
  %102 = icmp ugt i64 %101, 4
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 @pg_log_warning(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %97
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @K_VERS_1_7, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i8 (%struct.TYPE_13__*)*, i8 (%struct.TYPE_13__*)** %113, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = call signext i8 %114(%struct.TYPE_13__* %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  store i8 %116, i8* %118, align 1
  br label %125

119:                                              ; preds = %105
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load i8, i8* %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  store i8 %122, i8* %124, align 1
  br label %125

125:                                              ; preds = %119, %111
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i8 (%struct.TYPE_13__*)*, i8 (%struct.TYPE_13__*)** %127, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = call signext i8 %128(%struct.TYPE_13__* %129)
  %131 = sext i8 %130 to i32
  store i32 %131, i32* %4, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %125
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %4, align 4
  %142 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %137, %125
  br label %144

144:                                              ; preds = %143, %1
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @K_VERS_1_2, align 8
  %149 = icmp sge i64 %147, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %144
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @K_VERS_1_4, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i8 (%struct.TYPE_13__*)*, i8 (%struct.TYPE_13__*)** %158, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %161 = call signext i8 %159(%struct.TYPE_13__* %160)
  %162 = sext i8 %161 to i32
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 8
  br label %171

165:                                              ; preds = %150
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %167 = call i8* @ReadInt(%struct.TYPE_13__* %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %165, %156
  br label %176

172:                                              ; preds = %144
  %173 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %172, %171
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = call i32 @pg_log_warning(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %176
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @K_VERS_1_4, align 8
  %188 = icmp sge i64 %186, %187
  br i1 %188, label %189, label %225

189:                                              ; preds = %183
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %191 = call i8* @ReadInt(%struct.TYPE_13__* %190)
  %192 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 6
  store i8* %191, i8** %192, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %194 = call i8* @ReadInt(%struct.TYPE_13__* %193)
  %195 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i8* %194, i8** %195, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %197 = call i8* @ReadInt(%struct.TYPE_13__* %196)
  %198 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i8* %197, i8** %198, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %200 = call i8* @ReadInt(%struct.TYPE_13__* %199)
  %201 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  store i8* %200, i8** %201, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %203 = call i8* @ReadInt(%struct.TYPE_13__* %202)
  %204 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  store i8* %203, i8** %204, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %206 = call i8* @ReadInt(%struct.TYPE_13__* %205)
  %207 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i8* %206, i8** %207, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %209 = call i8* @ReadInt(%struct.TYPE_13__* %208)
  %210 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i8* %209, i8** %210, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %212 = call i8* @ReadStr(%struct.TYPE_13__* %211)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 9
  store i8* %212, i8** %214, align 8
  %215 = call i32 @mktime(%struct.tm* %5)
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 8
  store i32 %215, i32* %217, align 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %222, label %224

222:                                              ; preds = %189
  %223 = call i32 @pg_log_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %189
  br label %225

225:                                              ; preds = %224, %183
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @K_VERS_1_10, align 8
  %230 = icmp sge i64 %228, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %225
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %233 = call i8* @ReadStr(%struct.TYPE_13__* %232)
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 7
  store i8* %233, i8** %235, align 8
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %237 = call i8* @ReadStr(%struct.TYPE_13__* %236)
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 6
  store i8* %237, i8** %239, align 8
  br label %240

240:                                              ; preds = %231, %225
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @MAKE_ARCHIVE_VERSION(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @pg_log_warning(i8*) #1

declare dso_local i8* @ReadInt(%struct.TYPE_13__*) #1

declare dso_local i8* @ReadStr(%struct.TYPE_13__*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
