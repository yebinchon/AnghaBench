; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_copy.c_parse_slash_copy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_copy.c_parse_slash_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.copy_options = type { i32, i32, i32, i8*, i32*, i8* }

@.str = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\\copy: arguments required\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".,()\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\22'\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"pstdin\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"pstdout\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"\\copy: parse error at \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"\\copy: parse error at end of line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.copy_options* (i8*)* @parse_slash_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.copy_options* @parse_slash_copy(i8* %0) #0 {
  %2 = alloca %struct.copy_options*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.copy_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %10 = call i64 (...) @standard_strings()
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 92
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %7, align 1
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.copy_options* null, %struct.copy_options** %2, align 8
  br label %307

19:                                               ; preds = %1
  %20 = call %struct.copy_options* @pg_malloc0(i32 40)
  store %struct.copy_options* %20, %struct.copy_options** %4, align 8
  %21 = call i8* @pg_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %23 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %27 = call i8* @strtokx(i8* %24, i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8 signext 0, i32 0, i32 0, i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %296

31:                                               ; preds = %19
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @pg_strcasecmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %37 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %36, i32 0, i32 5
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @xstrcat(i8** %37, i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %42 = call i8* @strtokx(i8* null, i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8 signext 0, i32 0, i32 0, i32 %41)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %296

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 40
  br i1 %52, label %53, label %93

53:                                               ; preds = %47
  store i32 1, i32* %8, align 4
  br label %54

54:                                               ; preds = %91, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %54
  %58 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %59 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %58, i32 0, i32 5
  %60 = call i32 @xstrcat(i8** %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %61 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %62 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %61, i32 0, i32 5
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @xstrcat(i8** %62, i8* %63)
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %7, align 1
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %68 = call i8* @strtokx(i8* null, i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8 signext %66, i32 1, i32 0, i32 %67)
  store i8* %68, i8** %5, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %57
  br label %296

72:                                               ; preds = %57
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 40
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %91

81:                                               ; preds = %72
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 41
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %81
  br label %91

91:                                               ; preds = %90, %78
  br label %54

92:                                               ; preds = %54
  br label %93

93:                                               ; preds = %92, %47
  %94 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %95 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %94, i32 0, i32 5
  %96 = call i32 @xstrcat(i8** %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %97 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %98 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %97, i32 0, i32 5
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @xstrcat(i8** %98, i8* %99)
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %103 = call i8* @strtokx(i8* null, i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8 signext 0, i32 0, i32 0, i32 %102)
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %93
  br label %296

107:                                              ; preds = %93
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 46
  br i1 %112, label %113, label %136

113:                                              ; preds = %107
  %114 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %115 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %114, i32 0, i32 5
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @xstrcat(i8** %115, i8* %116)
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %120 = call i8* @strtokx(i8* null, i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8 signext 0, i32 0, i32 0, i32 %119)
  store i8* %120, i8** %5, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %113
  br label %296

124:                                              ; preds = %113
  %125 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %126 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %125, i32 0, i32 5
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @xstrcat(i8** %126, i8* %127)
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %131 = call i8* @strtokx(i8* null, i8* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8 signext 0, i32 0, i32 0, i32 %130)
  store i8* %131, i8** %5, align 8
  %132 = load i8*, i8** %5, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %124
  br label %296

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135, %107
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 40
  br i1 %141, label %142, label %180

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %164, %142
  %144 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %145 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %144, i32 0, i32 5
  %146 = call i32 @xstrcat(i8** %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %147 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %148 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %147, i32 0, i32 5
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 @xstrcat(i8** %148, i8* %149)
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %153 = call i8* @strtokx(i8* null, i8* %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8 signext 0, i32 0, i32 0, i32 %152)
  store i8* %153, i8** %5, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %143
  br label %296

157:                                              ; preds = %143
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 41
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %165

164:                                              ; preds = %157
  br label %143

165:                                              ; preds = %163
  %166 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %167 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %166, i32 0, i32 5
  %168 = call i32 @xstrcat(i8** %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %169 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %170 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %169, i32 0, i32 5
  %171 = load i8*, i8** %5, align 8
  %172 = call i32 @xstrcat(i8** %170, i8* %171)
  %173 = load i8*, i8** %6, align 8
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %175 = call i8* @strtokx(i8* null, i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8 signext 0, i32 0, i32 0, i32 %174)
  store i8* %175, i8** %5, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %165
  br label %296

179:                                              ; preds = %165
  br label %180

180:                                              ; preds = %179, %136
  %181 = load i8*, i8** %5, align 8
  %182 = call i64 @pg_strcasecmp(i8* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %186 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  br label %196

187:                                              ; preds = %180
  %188 = load i8*, i8** %5, align 8
  %189 = call i64 @pg_strcasecmp(i8* %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %193 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %192, i32 0, i32 0
  store i32 0, i32* %193, align 8
  br label %195

194:                                              ; preds = %187
  br label %296

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %195, %184
  %197 = load i8*, i8** %6, align 8
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %199 = call i8* @strtokx(i8* null, i8* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8 signext 0, i32 0, i32 0, i32 %198)
  store i8* %199, i8** %5, align 8
  %200 = load i8*, i8** %5, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %196
  br label %296

203:                                              ; preds = %196
  %204 = load i8*, i8** %5, align 8
  %205 = call i64 @pg_strcasecmp(i8* %204, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %246

207:                                              ; preds = %203
  %208 = load i8*, i8** %6, align 8
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %210 = call i8* @strtokx(i8* null, i8* %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8 signext 0, i32 0, i32 0, i32 %209)
  store i8* %210, i8** %5, align 8
  %211 = load i8*, i8** %5, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %207
  br label %296

214:                                              ; preds = %207
  %215 = load i8*, i8** %5, align 8
  %216 = call i32 @strlen(i8* %215)
  store i32 %216, i32* %9, align 4
  %217 = load i8*, i8** %5, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 39
  br i1 %221, label %234, label %222

222:                                              ; preds = %214
  %223 = load i32, i32* %9, align 4
  %224 = icmp slt i32 %223, 2
  br i1 %224, label %234, label %225

225:                                              ; preds = %222
  %226 = load i8*, i8** %5, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, 39
  br i1 %233, label %234, label %235

234:                                              ; preds = %225, %222, %214
  br label %296

235:                                              ; preds = %225
  %236 = load i8*, i8** %5, align 8
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %238 = call i32 @strip_quotes(i8* %236, i8 signext 39, i32 0, i32 %237)
  %239 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %240 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %239, i32 0, i32 1
  store i32 1, i32* %240, align 4
  %241 = load i8*, i8** %5, align 8
  %242 = call i8* @pg_strdup(i8* %241)
  %243 = bitcast i8* %242 to i32*
  %244 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %245 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %244, i32 0, i32 4
  store i32* %243, i32** %245, align 8
  br label %284

246:                                              ; preds = %203
  %247 = load i8*, i8** %5, align 8
  %248 = call i64 @pg_strcasecmp(i8* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = load i8*, i8** %5, align 8
  %252 = call i64 @pg_strcasecmp(i8* %251, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %250, %246
  %255 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %256 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %255, i32 0, i32 4
  store i32* null, i32** %256, align 8
  br label %283

257:                                              ; preds = %250
  %258 = load i8*, i8** %5, align 8
  %259 = call i64 @pg_strcasecmp(i8* %258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %257
  %262 = load i8*, i8** %5, align 8
  %263 = call i64 @pg_strcasecmp(i8* %262, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %261, %257
  %266 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %267 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %266, i32 0, i32 2
  store i32 1, i32* %267, align 8
  %268 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %269 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %268, i32 0, i32 4
  store i32* null, i32** %269, align 8
  br label %282

270:                                              ; preds = %261
  %271 = load i8*, i8** %5, align 8
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %273 = call i32 @strip_quotes(i8* %271, i8 signext 39, i32 0, i32 %272)
  %274 = load i8*, i8** %5, align 8
  %275 = call i8* @pg_strdup(i8* %274)
  %276 = bitcast i8* %275 to i32*
  %277 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %278 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %277, i32 0, i32 4
  store i32* %276, i32** %278, align 8
  %279 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %280 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %279, i32 0, i32 4
  %281 = call i32 @expand_tilde(i32** %280)
  br label %282

282:                                              ; preds = %270, %265
  br label %283

283:                                              ; preds = %282, %254
  br label %284

284:                                              ; preds = %283, %235
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %286 = call i8* @strtokx(i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* null, i8* null, i8 signext 0, i32 0, i32 0, i32 %285)
  store i8* %286, i8** %5, align 8
  %287 = load i8*, i8** %5, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  %290 = load i8*, i8** %5, align 8
  %291 = call i8* @pg_strdup(i8* %290)
  %292 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %293 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %292, i32 0, i32 3
  store i8* %291, i8** %293, align 8
  br label %294

294:                                              ; preds = %289, %284
  %295 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  store %struct.copy_options* %295, %struct.copy_options** %2, align 8
  br label %307

296:                                              ; preds = %234, %213, %202, %194, %178, %156, %134, %123, %106, %71, %45, %30
  %297 = load i8*, i8** %5, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i8*, i8** %5, align 8
  %301 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* %300)
  br label %304

302:                                              ; preds = %296
  %303 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  br label %304

304:                                              ; preds = %302, %299
  %305 = load %struct.copy_options*, %struct.copy_options** %4, align 8
  %306 = call i32 @free_copy_options(%struct.copy_options* %305)
  store %struct.copy_options* null, %struct.copy_options** %2, align 8
  br label %307

307:                                              ; preds = %304, %294, %17
  %308 = load %struct.copy_options*, %struct.copy_options** %2, align 8
  ret %struct.copy_options* %308
}

declare dso_local i64 @standard_strings(...) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local %struct.copy_options* @pg_malloc0(i32) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i8* @strtokx(i8*, i8*, i8*, i8*, i8 signext, i32, i32, i32) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i32 @xstrcat(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strip_quotes(i8*, i8 signext, i32, i32) #1

declare dso_local i32 @expand_tilde(i32**) #1

declare dso_local i32 @free_copy_options(%struct.copy_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
