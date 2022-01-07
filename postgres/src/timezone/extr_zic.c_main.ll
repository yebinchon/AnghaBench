; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i8*, i32, i8*, i8* }

@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@progname = common dso_local global i8* null, align 8
@zic_t = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"wild compilation-time specification of zic_t\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"zic %s\0A\00", align 1
@PG_VERSION = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"b:d:l:L:p:Pr:st:vy:\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"slim\00", align 1
@bloat = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"incompatible -b options\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"fat\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"invalid option: -b '%s'\00", align 1
@directory = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"%s: More than one -d option specified\0A\00", align 1
@lcltime = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [39 x i8] c"%s: More than one -l option specified\0A\00", align 1
@psxrules = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [39 x i8] c"%s: More than one -p option specified\0A\00", align 1
@tzdefault = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [39 x i8] c"%s: More than one -t option specified\0A\00", align 1
@yitcommand = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"-y is obsolescent\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"%s: More than one -y option specified\0A\00", align 1
@leapsec = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [39 x i8] c"%s: More than one -L option specified\0A\00", align 1
@noise = common dso_local global i32 0, align 4
@print_abbrevs = common dso_local global i32 0, align 4
@print_cutoff = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"%s: More than one -r option specified\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"%s: invalid time range: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"-s ignored\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@ZIC_BLOAT_DEFAULT = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@TZDEFAULT = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"yearistype\00", align 1
@errors = common dso_local global i64 0, align 8
@nzones = common dso_local global i32 0, align 4
@zones = common dso_local global %struct.TYPE_4__* null, align 8
@nlinks = common dso_local global i32 0, align 4
@links = common dso_local global %struct.TYPE_5__* null, align 8
@.str.23 = private unnamed_addr constant [13 x i8] c"link to link\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"command line\00", align 1
@TZDEFRULES = common dso_local global i8* null, align 8
@warnings = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @S_IWGRP, align 4
  %12 = load i32, i32* @S_IWOTH, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @umask(i32 %13)
  %15 = load i32, i32* @S_IWGRP, align 4
  %16 = load i32, i32* @S_IWOTH, align 4
  %17 = or i32 %15, %16
  %18 = or i32 %14, %17
  %19 = call i32 @umask(i32 %18)
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @progname, align 8
  %23 = load i32, i32* @zic_t, align 4
  %24 = call i32 @TYPE_BIT(i32 %23)
  %25 = icmp slt i32 %24, 64
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** @progname, align 8
  %29 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %31, i32* %3, align 4
  br label %437

32:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %65, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i8*, i8** @PG_VERSION, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @close_file(i32 %48, i32* null, i32* null)
  %50 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %50, i32* %3, align 4
  br label %437

51:                                               ; preds = %37
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @stdout, align 4
  %61 = load i32, i32* @EXIT_SUCCESS, align 4
  %62 = call i32 @usage(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %51
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %33

68:                                               ; preds = %33
  br label %69

69:                                               ; preds = %219, %68
  %70 = load i32, i32* %4, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = call i32 @getopt(i32 %70, i8** %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @EOF, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, -1
  br label %78

78:                                               ; preds = %75, %69
  %79 = phi i1 [ false, %69 ], [ %77, %75 ]
  br i1 %79, label %80, label %220

80:                                               ; preds = %78
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %82 [
    i32 98, label %86
    i32 100, label %114
    i32 108, label %127
    i32 112, label %140
    i32 116, label %153
    i32 121, label %164
    i32 76, label %179
    i32 118, label %192
    i32 80, label %193
    i32 114, label %195
    i32 115, label %216
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* @stderr, align 4
  %84 = load i32, i32* @EXIT_FAILURE, align 4
  %85 = call i32 @usage(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %82
  %87 = load i8*, i8** @optarg, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* @bloat, align 4
  %92 = icmp slt i32 0, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @error(i8* %94)
  br label %96

96:                                               ; preds = %93, %90
  store i32 -1, i32* @bloat, align 4
  br label %113

97:                                               ; preds = %86
  %98 = load i8*, i8** @optarg, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, i32* @bloat, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %106 = call i32 (i8*, ...) @error(i8* %105)
  br label %107

107:                                              ; preds = %104, %101
  store i32 1, i32* @bloat, align 4
  br label %112

108:                                              ; preds = %97
  %109 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %110 = load i8*, i8** @optarg, align 8
  %111 = call i32 (i8*, ...) @error(i8* %109, i8* %110)
  br label %112

112:                                              ; preds = %108, %107
  br label %113

113:                                              ; preds = %112, %96
  br label %219

114:                                              ; preds = %80
  %115 = load i8*, i8** @directory, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i8*, i8** @optarg, align 8
  %119 = call i8* @strdup(i8* %118)
  store i8* %119, i8** @directory, align 8
  br label %126

120:                                              ; preds = %114
  %121 = load i32, i32* @stderr, align 4
  %122 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %123 = load i8*, i8** @progname, align 8
  %124 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %121, i8* %122, i8* %123)
  %125 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %125, i32* %3, align 4
  br label %437

126:                                              ; preds = %117
  br label %219

127:                                              ; preds = %80
  %128 = load i8*, i8** @lcltime, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** @optarg, align 8
  %132 = call i8* @strdup(i8* %131)
  store i8* %132, i8** @lcltime, align 8
  br label %139

133:                                              ; preds = %127
  %134 = load i32, i32* @stderr, align 4
  %135 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %136 = load i8*, i8** @progname, align 8
  %137 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %134, i8* %135, i8* %136)
  %138 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %138, i32* %3, align 4
  br label %437

139:                                              ; preds = %130
  br label %219

140:                                              ; preds = %80
  %141 = load i8*, i8** @psxrules, align 8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i8*, i8** @optarg, align 8
  %145 = call i8* @strdup(i8* %144)
  store i8* %145, i8** @psxrules, align 8
  br label %152

146:                                              ; preds = %140
  %147 = load i32, i32* @stderr, align 4
  %148 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %149 = load i8*, i8** @progname, align 8
  %150 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %147, i8* %148, i8* %149)
  %151 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %151, i32* %3, align 4
  br label %437

152:                                              ; preds = %143
  br label %219

153:                                              ; preds = %80
  %154 = load i8*, i8** @tzdefault, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32, i32* @stderr, align 4
  %158 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %159 = load i8*, i8** @progname, align 8
  %160 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %157, i8* %158, i8* %159)
  %161 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %161, i32* %3, align 4
  br label %437

162:                                              ; preds = %153
  %163 = load i8*, i8** @optarg, align 8
  store i8* %163, i8** @tzdefault, align 8
  br label %219

164:                                              ; preds = %80
  %165 = load i8*, i8** @yitcommand, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %169 = call i32 @warning(i8* %168)
  %170 = load i8*, i8** @optarg, align 8
  %171 = call i8* @strdup(i8* %170)
  store i8* %171, i8** @yitcommand, align 8
  br label %178

172:                                              ; preds = %164
  %173 = load i32, i32* @stderr, align 4
  %174 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %175 = load i8*, i8** @progname, align 8
  %176 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %173, i8* %174, i8* %175)
  %177 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %177, i32* %3, align 4
  br label %437

178:                                              ; preds = %167
  br label %219

179:                                              ; preds = %80
  %180 = load i8*, i8** @leapsec, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i8*, i8** @optarg, align 8
  %184 = call i8* @strdup(i8* %183)
  store i8* %184, i8** @leapsec, align 8
  br label %191

185:                                              ; preds = %179
  %186 = load i32, i32* @stderr, align 4
  %187 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  %188 = load i8*, i8** @progname, align 8
  %189 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %186, i8* %187, i8* %188)
  %190 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %190, i32* %3, align 4
  br label %437

191:                                              ; preds = %182
  br label %219

192:                                              ; preds = %80
  store i32 1, i32* @noise, align 4
  br label %219

193:                                              ; preds = %80
  store i32 1, i32* @print_abbrevs, align 4
  %194 = call i32 @time(i32* null)
  store i32 %194, i32* @print_cutoff, align 4
  br label %219

195:                                              ; preds = %80
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load i32, i32* @stderr, align 4
  %200 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %201 = load i8*, i8** @progname, align 8
  %202 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %199, i8* %200, i8* %201)
  %203 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %203, i32* %3, align 4
  br label %437

204:                                              ; preds = %195
  %205 = load i8*, i8** @optarg, align 8
  %206 = call i32 @timerange_option(i8* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* @stderr, align 4
  %210 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %211 = load i8*, i8** @progname, align 8
  %212 = load i8*, i8** @optarg, align 8
  %213 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %209, i8* %210, i8* %211, i8* %212)
  %214 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %214, i32* %3, align 4
  br label %437

215:                                              ; preds = %204
  store i32 1, i32* %10, align 4
  br label %219

216:                                              ; preds = %80
  %217 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %218 = call i32 @warning(i8* %217)
  br label %219

219:                                              ; preds = %216, %215, %193, %192, %191, %178, %162, %152, %139, %126, %113
  br label %69

220:                                              ; preds = %78
  %221 = load i32, i32* @optind, align 4
  %222 = load i32, i32* %4, align 4
  %223 = sub nsw i32 %222, 1
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %220
  %226 = load i8**, i8*** %5, align 8
  %227 = load i32, i32* @optind, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = load i32, i32* @stderr, align 4
  %235 = load i32, i32* @EXIT_FAILURE, align 4
  %236 = call i32 @usage(i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %233, %225, %220
  %238 = load i32, i32* @bloat, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = load i8*, i8** @ZIC_BLOAT_DEFAULT, align 8
  %242 = call i64 @strcmp(i8* %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %243 = icmp eq i64 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 -1, i32 1
  store i32 %245, i32* @bloat, align 4
  br label %246

246:                                              ; preds = %240, %237
  %247 = load i8*, i8** @directory, align 8
  %248 = icmp eq i8* %247, null
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** @directory, align 8
  br label %250

250:                                              ; preds = %249, %246
  %251 = load i8*, i8** @tzdefault, align 8
  %252 = icmp eq i8* %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = load i8*, i8** @TZDEFAULT, align 8
  store i8* %254, i8** @tzdefault, align 8
  br label %255

255:                                              ; preds = %253, %250
  %256 = load i8*, i8** @yitcommand, align 8
  %257 = icmp eq i8* %256, null
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8** @yitcommand, align 8
  br label %259

259:                                              ; preds = %258, %255
  %260 = load i32, i32* @optind, align 4
  %261 = load i32, i32* %4, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %259
  %264 = load i8*, i8** @leapsec, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i8*, i8** @leapsec, align 8
  %268 = call i32 @infile(i8* %267)
  %269 = call i32 (...) @adjleap()
  br label %270

270:                                              ; preds = %266, %263, %259
  %271 = load i32, i32* @optind, align 4
  store i32 %271, i32* %7, align 4
  br label %272

272:                                              ; preds = %283, %270
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %4, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %286

276:                                              ; preds = %272
  %277 = load i8**, i8*** %5, align 8
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @infile(i8* %281)
  br label %283

283:                                              ; preds = %276
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %7, align 4
  br label %272

286:                                              ; preds = %272
  %287 = load i64, i64* @errors, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %290, i32* %3, align 4
  br label %437

291:                                              ; preds = %286
  %292 = call i32 (...) @associate()
  %293 = load i8*, i8** @directory, align 8
  %294 = call i32 @change_directory(i8* %293)
  store i32 0, i32* %8, align 4
  br label %295

295:                                              ; preds = %329, %291
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* @nzones, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %331

299:                                              ; preds = %295
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %9, align 4
  br label %302

302:                                              ; preds = %317, %299
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @nzones, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %302
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zones, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = icmp eq i32* %312, null
  br label %314

314:                                              ; preds = %306, %302
  %315 = phi i1 [ false, %302 ], [ %313, %306 ]
  br i1 %315, label %316, label %320

316:                                              ; preds = %314
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %9, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %9, align 4
  br label %302

320:                                              ; preds = %314
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zones, align 8
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i64 %323
  %325 = load i32, i32* %9, align 4
  %326 = load i32, i32* %8, align 4
  %327 = sub nsw i32 %325, %326
  %328 = call i32 @outzone(%struct.TYPE_4__* %324, i32 %327)
  br label %329

329:                                              ; preds = %320
  %330 = load i32, i32* %9, align 4
  store i32 %330, i32* %8, align 4
  br label %295

331:                                              ; preds = %295
  store i32 0, i32* %8, align 4
  br label %332

332:                                              ; preds = %394, %331
  %333 = load i32, i32* %8, align 4
  %334 = load i32, i32* @nlinks, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %397

336:                                              ; preds = %332
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** @links, align 8
  %338 = load i32, i32* %8, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** @links, align 8
  %344 = load i32, i32* %8, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @eat(i8* %342, i32 %348)
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** @links, align 8
  %351 = load i32, i32* %8, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 2
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** @links, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 3
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 @dolink(i8* %355, i8* %361, i32 0)
  %363 = load i32, i32* @noise, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %393

365:                                              ; preds = %336
  store i32 0, i32* %9, align 4
  br label %366

366:                                              ; preds = %389, %365
  %367 = load i32, i32* %9, align 4
  %368 = load i32, i32* @nlinks, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %392

370:                                              ; preds = %366
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** @links, align 8
  %372 = load i32, i32* %8, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 3
  %376 = load i8*, i8** %375, align 8
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** @links, align 8
  %378 = load i32, i32* %9, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 2
  %382 = load i8*, i8** %381, align 8
  %383 = call i64 @strcmp(i8* %376, i8* %382)
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %370
  %386 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %387 = call i32 @warning(i8* %386)
  br label %388

388:                                              ; preds = %385, %370
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %9, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %9, align 4
  br label %366

392:                                              ; preds = %366
  br label %393

393:                                              ; preds = %392, %336
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %8, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %8, align 4
  br label %332

397:                                              ; preds = %332
  %398 = load i8*, i8** @lcltime, align 8
  %399 = icmp ne i8* %398, null
  br i1 %399, label %400, label %406

400:                                              ; preds = %397
  %401 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %402 = call i32 @eat(i8* %401, i32 1)
  %403 = load i8*, i8** @lcltime, align 8
  %404 = load i8*, i8** @tzdefault, align 8
  %405 = call i32 @dolink(i8* %403, i8* %404, i32 1)
  br label %406

406:                                              ; preds = %400, %397
  %407 = load i8*, i8** @psxrules, align 8
  %408 = icmp ne i8* %407, null
  br i1 %408, label %409, label %415

409:                                              ; preds = %406
  %410 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %411 = call i32 @eat(i8* %410, i32 1)
  %412 = load i8*, i8** @psxrules, align 8
  %413 = load i8*, i8** @TZDEFRULES, align 8
  %414 = call i32 @dolink(i8* %412, i8* %413, i32 1)
  br label %415

415:                                              ; preds = %409, %406
  %416 = load i64, i64* @warnings, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %428

418:                                              ; preds = %415
  %419 = load i32, i32* @stderr, align 4
  %420 = call i64 @ferror(i32 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %426, label %422

422:                                              ; preds = %418
  %423 = load i32, i32* @stderr, align 4
  %424 = call i64 @fclose(i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %422, %418
  %427 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %427, i32* %3, align 4
  br label %437

428:                                              ; preds = %422, %415
  %429 = load i64, i64* @errors, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %428
  %432 = load i32, i32* @EXIT_FAILURE, align 4
  br label %435

433:                                              ; preds = %428
  %434 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %435

435:                                              ; preds = %433, %431
  %436 = phi i32 [ %432, %431 ], [ %434, %433 ]
  store i32 %436, i32* %3, align 4
  br label %437

437:                                              ; preds = %435, %426, %289, %208, %198, %185, %172, %156, %146, %133, %120, %45, %26
  %438 = load i32, i32* %3, align 4
  ret i32 %438
}

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @TYPE_BIT(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @close_file(i32, i32*, i32*) #1

declare dso_local i32 @usage(i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @timerange_option(i8*) #1

declare dso_local i32 @infile(i8*) #1

declare dso_local i32 @adjleap(...) #1

declare dso_local i32 @associate(...) #1

declare dso_local i32 @change_directory(i8*) #1

declare dso_local i32 @outzone(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @eat(i8*, i32) #1

declare dso_local i32 @dolink(i8*, i8*, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
