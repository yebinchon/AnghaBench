; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_next.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8, i32 }
%struct.TYPE_5__ = type { i32 }

@arg = common dso_local global i8* null, align 8
@argv = common dso_local global i8** null, align 8
@opt_index = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@flag = common dso_local global i8* null, align 8
@opts = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Option -%s does not take a value\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: Option -%s needs a value\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: Not a directory: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: Non-positive number \22%s\22 for -%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: Invalid number \22%s\22 for -%s\0A\00", align 1
@OPT_FMT_PDS = common dso_local global i32 0, align 4
@OPT_FMT_PDE = common dso_local global i32 0, align 4
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@OPT_FMT_ANY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: Invalid format \22%s\22 for -%s\0A\00", align 1
@unknown = common dso_local global %struct.TYPE_5__* null, align 8
@dunno = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: Option unknown option -%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_next() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* null, i8** @arg, align 8
  %9 = load i8**, i8*** @argv, align 8
  %10 = load i64, i64* @opt_index, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %255

16:                                               ; preds = %0
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 45
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %255

22:                                               ; preds = %16
  %23 = load i64, i64* @opt_index, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* @opt_index, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %255

29:                                               ; preds = %22
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %2, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  store i8* %40, i8** @flag, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 61)
  store i8* %42, i8** @arg, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** @arg, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** @arg, align 8
  store i8 0, i8* %45, align 1
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @opts, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %3, align 8
  br label %49

49:                                               ; preds = %240, %47
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %243

54:                                               ; preds = %49
  %55 = load i8*, i8** %2, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %55, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %240

62:                                               ; preds = %54
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8, i8* %64, align 8
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i8, i8* %70, align 8
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 45
  br i1 %73, label %74, label %85

74:                                               ; preds = %68, %62
  %75 = load i8*, i8** @arg, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @prog, align 4
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 (i8*, i32, i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %78, i8* %79)
  store i32 -1, i32* %1, align 4
  br label %255

81:                                               ; preds = %74
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %1, align 4
  br label %255

85:                                               ; preds = %68
  %86 = load i8*, i8** @arg, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load i8**, i8*** @argv, align 8
  %90 = load i64, i64* @opt_index, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* @prog, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, i32, i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %95, i8* %98)
  store i32 -1, i32* %1, align 4
  br label %255

100:                                              ; preds = %88
  %101 = load i8**, i8*** @argv, align 8
  %102 = load i64, i64* @opt_index, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* @opt_index, align 8
  %104 = getelementptr inbounds i8*, i8** %101, i64 %102
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** @arg, align 8
  br label %106

106:                                              ; preds = %100, %85
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i8, i8* %108, align 8
  %110 = sext i8 %109 to i32
  switch i32 %110, label %111 [
    i32 115, label %112
    i32 58, label %112
    i32 47, label %113
    i32 60, label %122
    i32 62, label %123
    i32 112, label %124
    i32 110, label %124
    i32 77, label %145
    i32 85, label %157
    i32 108, label %169
    i32 117, label %181
    i32 99, label %193
    i32 69, label %193
    i32 70, label %193
    i32 102, label %193
  ]

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %106, %106, %111
  br label %236

113:                                              ; preds = %106
  %114 = load i8*, i8** @arg, align 8
  %115 = call i32 @opt_isdir(i8* %114)
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %236

118:                                              ; preds = %113
  %119 = load i32, i32* @prog, align 4
  %120 = load i8*, i8** @arg, align 8
  %121 = call i32 (i8*, i32, i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %119, i8* %120)
  store i32 -1, i32* %1, align 4
  br label %255

122:                                              ; preds = %106
  br label %236

123:                                              ; preds = %106
  br label %236

124:                                              ; preds = %106, %106
  %125 = load i8*, i8** @arg, align 8
  %126 = call i32 @opt_int(i8* %125, i32* %4)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i8, i8* %130, align 8
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 112
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134, %124
  %138 = load i32, i32* @prog, align 4
  %139 = load i8*, i8** @arg, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 (i8*, i32, i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %138, i8* %139, i8* %142)
  store i32 -1, i32* %1, align 4
  br label %255

144:                                              ; preds = %134, %128
  br label %236

145:                                              ; preds = %106
  %146 = load i8*, i8** @arg, align 8
  %147 = call i32 @opt_imax(i8* %146, i32* %7)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @prog, align 4
  %151 = load i8*, i8** @arg, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i8*, i32, i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %150, i8* %151, i8* %154)
  store i32 -1, i32* %1, align 4
  br label %255

156:                                              ; preds = %145
  br label %236

157:                                              ; preds = %106
  %158 = load i8*, i8** @arg, align 8
  %159 = call i32 @opt_umax(i8* %158, i32* %8)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* @prog, align 4
  %163 = load i8*, i8** @arg, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i8*, i32, i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %162, i8* %163, i8* %166)
  store i32 -1, i32* %1, align 4
  br label %255

168:                                              ; preds = %157
  br label %236

169:                                              ; preds = %106
  %170 = load i8*, i8** @arg, align 8
  %171 = call i32 @opt_long(i8* %170, i64* %5)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* @prog, align 4
  %175 = load i8*, i8** @arg, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i8*, i32, i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %174, i8* %175, i8* %178)
  store i32 -1, i32* %1, align 4
  br label %255

180:                                              ; preds = %169
  br label %236

181:                                              ; preds = %106
  %182 = load i8*, i8** @arg, align 8
  %183 = call i32 @opt_ulong(i8* %182, i64* %6)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* @prog, align 4
  %187 = load i8*, i8** @arg, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 (i8*, i32, i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %186, i8* %187, i8* %190)
  store i32 -1, i32* %1, align 4
  br label %255

192:                                              ; preds = %181
  br label %236

193:                                              ; preds = %106, %106, %106, %106
  %194 = load i8*, i8** @arg, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i8, i8* %196, align 8
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 99
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i32, i32* @OPT_FMT_PDS, align 4
  br label %224

202:                                              ; preds = %193
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i8, i8* %204, align 8
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 69
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* @OPT_FMT_PDE, align 4
  br label %222

210:                                              ; preds = %202
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i8, i8* %212, align 8
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 70
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i32, i32* @OPT_FMT_PEMDER, align 4
  br label %220

218:                                              ; preds = %210
  %219 = load i32, i32* @OPT_FMT_ANY, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  br label %222

222:                                              ; preds = %220, %208
  %223 = phi i32 [ %209, %208 ], [ %221, %220 ]
  br label %224

224:                                              ; preds = %222, %200
  %225 = phi i32 [ %201, %200 ], [ %223, %222 ]
  %226 = call i32 @opt_format(i8* %194, i32 %225, i32* %4)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  br label %236

229:                                              ; preds = %224
  %230 = load i32, i32* @prog, align 4
  %231 = load i8*, i8** @arg, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 (i8*, i32, i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %230, i8* %231, i8* %234)
  store i32 -1, i32* %1, align 4
  br label %255

236:                                              ; preds = %228, %192, %180, %168, %156, %144, %123, %122, %117, %112
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %1, align 4
  br label %255

240:                                              ; preds = %61
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 1
  store %struct.TYPE_4__* %242, %struct.TYPE_4__** %3, align 8
  br label %49

243:                                              ; preds = %49
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unknown, align 8
  %245 = icmp ne %struct.TYPE_5__* %244, null
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i8*, i8** %2, align 8
  store i8* %247, i8** @dunno, align 8
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unknown, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %1, align 4
  br label %255

251:                                              ; preds = %243
  %252 = load i32, i32* @prog, align 4
  %253 = load i8*, i8** %2, align 8
  %254 = call i32 (i8*, i32, i8*, ...) @opt_printf_stderr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %252, i8* %253)
  store i32 -1, i32* %1, align 4
  br label %255

255:                                              ; preds = %251, %246, %236, %229, %185, %173, %161, %149, %137, %118, %94, %81, %77, %28, %21, %15
  %256 = load i32, i32* %1, align 4
  ret i32 %256
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @opt_printf_stderr(i8*, i32, i8*, ...) #1

declare dso_local i32 @opt_isdir(i8*) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32 @opt_imax(i8*, i32*) #1

declare dso_local i32 @opt_umax(i8*, i32*) #1

declare dso_local i32 @opt_long(i8*, i64*) #1

declare dso_local i32 @opt_ulong(i8*, i64*) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
