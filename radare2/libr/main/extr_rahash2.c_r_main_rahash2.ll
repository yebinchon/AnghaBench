; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_r_main_rahash2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_r_main_rahash2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"p:jD:rveE:a:i:I:S:s:x:b:nBhf:t:kLqc:\00", align 1
@quiet = common dso_local global i32 0, align 4
@r_optarg = common dso_local global i8* null, align 8
@iterations = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"error: -i argument must be positive\0A\00", align 1
@incremental = common dso_local global i32 0, align 4
@from = common dso_local global i32 0, align 4
@to = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"rahash2\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"rahash2: Option -E and -D are incompatible with each other.\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"rahash2: Option -c incompatible with -b and -B options.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"base91\00", align 1
@.str.8 = private unnamed_addr constant [92 x i8] c"rahash2: Option -c incompatible with -E base64, -E base91, -D base64 or -D base91 options.\0A\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"rahash2: Option -c incompatible with multiple algorithms in -a.\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"rahash2: Invalid -c hex hash\0A\00", align 1
@.str.11 = private unnamed_addr constant [86 x i8] c"rahash2: Given -c hash has %d byte(s) but the selected algorithm returns %d byte(s).\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Invalid -f or -t offsets\0A\00", align 1
@r_optind = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"r2 -qfnc \22p==%s 100\22 \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"s:\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"Invalid hex string\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Invalid -f.\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Invalid -t.\0A\00", align 1
@_s = common dso_local global i64 0, align 8
@s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.20 = private unnamed_addr constant [38 x i8] c"Invalid algorithm. See -E, -D maybe?\0A\00", align 1
@R_HASH_ALL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"rahash2: Invalid block size\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"malloc://%d\00", align 1
@R_PERM_R = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [36 x i8] c"rahash2: Cannot open malloc://1024\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"rahash2: Cannot hash directories\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"rahash2: Cannot open '%s'\0A\00", align 1
@INSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r_main_rahash2(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 -1, i32* %19, align 4
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i32 -1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i64 0, i64* %26, align 8
  br label %42

42:                                               ; preds = %104, %2
  %43 = load i32, i32* %4, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = call i32 @r_getopt(i32 %43, i8** %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %105

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  switch i32 %48, label %102 [
    i32 113, label %49
    i32 105, label %52
    i32 106, label %60
    i32 83, label %61
    i32 73, label %63
    i32 110, label %65
    i32 68, label %66
    i32 69, label %68
    i32 76, label %70
    i32 101, label %72
    i32 114, label %73
    i32 107, label %74
    i32 112, label %75
    i32 97, label %77
    i32 66, label %79
    i32 98, label %80
    i32 102, label %83
    i32 116, label %86
    i32 118, label %90
    i32 104, label %92
    i32 115, label %94
    i32 120, label %97
    i32 99, label %100
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* @quiet, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @quiet, align 4
  br label %104

52:                                               ; preds = %47
  %53 = load i8*, i8** @r_optarg, align 8
  %54 = call i32 @atoi(i8* %53)
  store i32 %54, i32* @iterations, align 4
  %55 = load i32, i32* @iterations, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %680

59:                                               ; preds = %52
  br label %104

60:                                               ; preds = %47
  store i32 106, i32* %9, align 4
  br label %104

61:                                               ; preds = %47
  %62 = load i8*, i8** @r_optarg, align 8
  store i8* %62, i8** %14, align 8
  br label %104

63:                                               ; preds = %47
  %64 = load i8*, i8** @r_optarg, align 8
  store i8* %64, i8** %20, align 8
  br label %104

65:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  br label %104

66:                                               ; preds = %47
  %67 = load i8*, i8** @r_optarg, align 8
  store i8* %67, i8** %15, align 8
  br label %104

68:                                               ; preds = %47
  %69 = load i8*, i8** @r_optarg, align 8
  store i8* %69, i8** %16, align 8
  br label %104

70:                                               ; preds = %47
  %71 = call i32 (...) @algolist()
  store i32 0, i32* %3, align 4
  br label %680

72:                                               ; preds = %47
  store i32 1, i32* %12, align 4
  br label %104

73:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %104

74:                                               ; preds = %47
  store i32 2, i32* %9, align 4
  br label %104

75:                                               ; preds = %47
  %76 = load i8*, i8** @r_optarg, align 8
  store i8* %76, i8** %22, align 8
  br label %104

77:                                               ; preds = %47
  %78 = load i8*, i8** @r_optarg, align 8
  store i8* %78, i8** %13, align 8
  br label %104

79:                                               ; preds = %47
  store i32 0, i32* @incremental, align 4
  br label %104

80:                                               ; preds = %47
  %81 = load i8*, i8** @r_optarg, align 8
  %82 = call i32 @r_num_math(i32* null, i8* %81)
  store i32 %82, i32* %10, align 4
  br label %104

83:                                               ; preds = %47
  %84 = load i8*, i8** @r_optarg, align 8
  %85 = call i32 @r_num_math(i32* null, i8* %84)
  store i32 %85, i32* @from, align 4
  br label %104

86:                                               ; preds = %47
  %87 = load i8*, i8** @r_optarg, align 8
  %88 = call i32 @r_num_math(i32* null, i8* %87)
  %89 = add nsw i32 1, %88
  store i32 %89, i32* @to, align 4
  br label %104

90:                                               ; preds = %47
  %91 = call i32 @r_main_version_print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %91, i32* %3, align 4
  br label %680

92:                                               ; preds = %47
  %93 = call i32 @do_help(i32 0)
  store i32 %93, i32* %3, align 4
  br label %680

94:                                               ; preds = %47
  %95 = load i8*, i8** @r_optarg, align 8
  %96 = call i32 @setHashString(i8* %95, i32 0)
  br label %104

97:                                               ; preds = %47
  %98 = load i8*, i8** @r_optarg, align 8
  %99 = call i32 @setHashString(i8* %98, i32 1)
  br label %104

100:                                              ; preds = %47
  %101 = load i8*, i8** @r_optarg, align 8
  store i8* %101, i8** %21, align 8
  br label %104

102:                                              ; preds = %47
  %103 = call i32 @do_help(i32 0)
  store i32 %103, i32* %3, align 4
  br label %680

104:                                              ; preds = %100, %97, %94, %86, %83, %80, %79, %77, %75, %74, %73, %72, %68, %66, %65, %63, %61, %60, %59, %49
  br label %42

105:                                              ; preds = %42
  %106 = load i8*, i8** %16, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i8*, i8** %15, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %680

113:                                              ; preds = %108, %105
  %114 = load i8*, i8** %21, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %201

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* @incremental, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %680

124:                                              ; preds = %119, %116
  store i32 0, i32* %31, align 4
  %125 = load i8*, i8** %16, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load i8*, i8** %16, align 8
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i8*, i8** %16, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  br label %136

136:                                              ; preds = %131, %127
  %137 = phi i1 [ true, %127 ], [ %135, %131 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %31, align 4
  br label %155

139:                                              ; preds = %124
  %140 = load i8*, i8** %15, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %139
  %143 = load i8*, i8** %15, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load i8*, i8** %15, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  br label %151

151:                                              ; preds = %146, %142
  %152 = phi i1 [ true, %142 ], [ %150, %146 ]
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %31, align 4
  br label %154

154:                                              ; preds = %151, %139
  br label %155

155:                                              ; preds = %154, %136
  %156 = load i32, i32* %31, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %680

160:                                              ; preds = %155
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @r_hash_name_to_bits(i8* %161)
  store i32 %162, i32* %27, align 4
  %163 = load i32, i32* %27, align 4
  %164 = call i32 @is_power_of_two(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %160
  %167 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %680

168:                                              ; preds = %160
  %169 = load i8*, i8** %21, align 8
  %170 = call i32 @strlen(i8* %169)
  %171 = add nsw i32 %170, 1
  %172 = mul nsw i32 %171, 2
  %173 = call i8* @malloc(i32 %172)
  store i8* %173, i8** %23, align 8
  %174 = load i8*, i8** %23, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %168
  store i32 1, i32* %3, align 4
  br label %680

177:                                              ; preds = %168
  %178 = load i8*, i8** %21, align 8
  %179 = load i8*, i8** %23, align 8
  %180 = call i32 @r_hex_str2bin(i8* %178, i8* %179)
  store i32 %180, i32* %30, align 4
  %181 = load i32, i32* %30, align 4
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %185 = load i8*, i8** %23, align 8
  %186 = call i32 @free(i8* %185)
  store i32 1, i32* %3, align 4
  br label %680

187:                                              ; preds = %177
  %188 = load i32, i32* %30, align 4
  %189 = load i32, i32* %27, align 4
  %190 = call i32 @r_hash_size(i32 %189)
  %191 = icmp ne i32 %188, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %187
  %193 = load i32, i32* %30, align 4
  %194 = load i32, i32* %27, align 4
  %195 = call i32 @r_hash_size(i32 %194)
  %196 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.11, i64 0, i64 0), i32 %193, i32 %195)
  %197 = load i8*, i8** %23, align 8
  %198 = call i32 @free(i8* %197)
  store i32 1, i32* %3, align 4
  br label %680

199:                                              ; preds = %187
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200, %113
  %202 = load i32, i32* @from, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp sge i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load i32, i32* @to, align 4
  %207 = sext i32 %206 to i64
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  store i32 0, i32* @to, align 4
  br label %210

210:                                              ; preds = %209, %205, %201
  %211 = load i32, i32* @from, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* @to, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %213, %210
  %217 = load i32, i32* @to, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = load i32, i32* @from, align 4
  %221 = load i32, i32* @to, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %680

225:                                              ; preds = %219, %216
  br label %226

226:                                              ; preds = %225, %213
  %227 = load i8*, i8** %22, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %253

229:                                              ; preds = %226
  %230 = load i32, i32* @r_optind, align 4
  store i32 %230, i32* %6, align 4
  br label %231

231:                                              ; preds = %249, %229
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %4, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %252

235:                                              ; preds = %231
  %236 = load i8**, i8*** %5, align 8
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %240)
  %242 = load i8*, i8** %22, align 8
  %243 = load i8**, i8*** %5, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %243, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @r_sys_cmdf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %242, i8* %247)
  br label %249

249:                                              ; preds = %235
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  br label %231

252:                                              ; preds = %231
  store i32 0, i32* %3, align 4
  br label %680

253:                                              ; preds = %226
  %254 = load i8*, i8** %20, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %286

256:                                              ; preds = %253
  %257 = load i8*, i8** %20, align 8
  %258 = call i32 @strlen(i8* %257)
  %259 = add nsw i32 %258, 128
  %260 = call i8* @malloc(i32 %259)
  store i8* %260, i8** %18, align 8
  %261 = load i8*, i8** %20, align 8
  %262 = call i32 @strncmp(i8* %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 2)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %256
  %265 = load i8*, i8** %18, align 8
  %266 = load i8*, i8** %20, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 2
  %268 = call i32 @strcpy(i8* %265, i8* %267)
  %269 = load i8*, i8** %20, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 2
  %271 = call i32 @strlen(i8* %270)
  store i32 %271, i32* %19, align 4
  br label %285

272:                                              ; preds = %256
  %273 = load i8*, i8** %20, align 8
  %274 = load i8*, i8** %18, align 8
  %275 = call i32 @r_hex_str2bin(i8* %273, i8* %274)
  store i32 %275, i32* %19, align 4
  %276 = load i32, i32* %19, align 4
  %277 = icmp slt i32 %276, 1
  br i1 %277, label %278, label %284

278:                                              ; preds = %272
  %279 = load i8*, i8** %18, align 8
  %280 = load i8*, i8** %20, align 8
  %281 = call i32 @strcpy(i8* %279, i8* %280)
  %282 = load i8*, i8** %20, align 8
  %283 = call i32 @strlen(i8* %282)
  store i32 %283, i32* %19, align 4
  br label %284

284:                                              ; preds = %278, %272
  br label %285

285:                                              ; preds = %284, %264
  br label %286

286:                                              ; preds = %285, %253
  %287 = load i8*, i8** %14, align 8
  %288 = call i32 @do_hash_seed(i8* %287)
  %289 = load i8*, i8** %17, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %518

291:                                              ; preds = %286
  store i32 0, i32* %7, align 4
  %292 = load i8*, i8** %17, align 8
  %293 = call i32 @strcmp(i8* %292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %315, label %295

295:                                              ; preds = %291
  %296 = call i8* @malloc(i32 32768)
  store i8* %296, i8** %17, align 8
  %297 = load i8*, i8** %17, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %302, label %299

299:                                              ; preds = %295
  %300 = load i8*, i8** %18, align 8
  %301 = call i32 @free(i8* %300)
  store i32 1, i32* %3, align 4
  br label %680

302:                                              ; preds = %295
  %303 = load i8*, i8** %17, align 8
  %304 = load i32, i32* @stdin, align 4
  %305 = call i64 @fread(i8* %303, i32 1, i32 32767, i32 %304)
  store i64 %305, i64* %26, align 8
  %306 = load i64, i64* %26, align 8
  %307 = icmp ult i64 %306, 1
  br i1 %307, label %308, label %309

308:                                              ; preds = %302
  store i64 0, i64* %26, align 8
  br label %309

309:                                              ; preds = %308, %302
  %310 = load i8*, i8** %17, align 8
  %311 = load i64, i64* %26, align 8
  %312 = getelementptr inbounds i8, i8* %310, i64 %311
  store i8 0, i8* %312, align 1
  %313 = load i64, i64* %26, align 8
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %24, align 4
  br label %315

315:                                              ; preds = %309, %291
  %316 = load i32, i32* %25, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %337

318:                                              ; preds = %315
  %319 = load i8*, i8** %17, align 8
  %320 = call i32 @strlen(i8* %319)
  %321 = add nsw i32 %320, 1
  %322 = mul nsw i32 %321, 2
  %323 = call i8* @malloc(i32 %322)
  store i8* %323, i8** %32, align 8
  %324 = load i8*, i8** %17, align 8
  %325 = load i8*, i8** %32, align 8
  %326 = call i32 @r_hex_str2bin(i8* %324, i8* %325)
  store i32 %326, i32* %24, align 4
  %327 = load i32, i32* %24, align 4
  %328 = icmp slt i32 %327, 1
  br i1 %328, label %329, label %335

329:                                              ; preds = %318
  %330 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %331 = load i8*, i8** %32, align 8
  %332 = call i32 @free(i8* %331)
  %333 = load i8*, i8** %18, align 8
  %334 = call i32 @free(i8* %333)
  store i32 1, i32* %3, align 4
  br label %680

335:                                              ; preds = %318
  %336 = load i8*, i8** %32, align 8
  store i8* %336, i8** %17, align 8
  br label %344

337:                                              ; preds = %315
  %338 = load i64, i64* %26, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %337
  %341 = load i8*, i8** %17, align 8
  %342 = call i32 @strlen(i8* %341)
  store i32 %342, i32* %24, align 4
  br label %343

343:                                              ; preds = %340, %337
  br label %344

344:                                              ; preds = %343, %335
  %345 = load i32, i32* @from, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %356

347:                                              ; preds = %344
  %348 = load i32, i32* @from, align 4
  %349 = load i32, i32* %24, align 4
  %350 = icmp sge i32 %348, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %347
  %352 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %353 = load i8*, i8** %18, align 8
  %354 = call i32 @free(i8* %353)
  store i32 1, i32* %3, align 4
  br label %680

355:                                              ; preds = %347
  br label %356

356:                                              ; preds = %355, %344
  %357 = load i32, i32* @to, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %356
  %360 = load i32, i32* @to, align 4
  %361 = load i32, i32* %24, align 4
  %362 = icmp sgt i32 %360, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %359
  %364 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %680

365:                                              ; preds = %359
  br label %368

366:                                              ; preds = %356
  %367 = load i32, i32* %24, align 4
  store i32 %367, i32* @to, align 4
  br label %368

368:                                              ; preds = %366, %365
  %369 = load i8*, i8** %17, align 8
  %370 = load i32, i32* @from, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %369, i64 %371
  store i8* %372, i8** %17, align 8
  %373 = load i32, i32* @to, align 4
  %374 = load i32, i32* @from, align 4
  %375 = sub nsw i32 %373, %374
  store i32 %375, i32* %24, align 4
  %376 = load i8*, i8** %17, align 8
  %377 = load i32, i32* %24, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %376, i64 %378
  store i8 0, i8* %379, align 1
  %380 = load i64, i64* %26, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %388, label %382

382:                                              ; preds = %368
  %383 = load i32, i32* %25, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %388, label %385

385:                                              ; preds = %382
  %386 = load i8*, i8** %17, align 8
  %387 = call i32 @r_str_unescape(i8* %386)
  store i32 %387, i32* %24, align 4
  br label %388

388:                                              ; preds = %385, %382, %368
  %389 = load i8*, i8** %16, align 8
  %390 = icmp ne i8* %389, null
  br i1 %390, label %391, label %398

391:                                              ; preds = %388
  %392 = load i8*, i8** %16, align 8
  %393 = load i8*, i8** %17, align 8
  %394 = load i32, i32* %24, align 4
  %395 = load i8*, i8** %18, align 8
  %396 = load i32, i32* %19, align 4
  %397 = call i32 @encrypt_or_decrypt(i8* %392, i32 0, i8* %393, i32 %394, i8* %395, i32 %396, i32 0)
  store i32 %397, i32* %3, align 4
  br label %680

398:                                              ; preds = %388
  %399 = load i8*, i8** %15, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %401, label %408

401:                                              ; preds = %398
  %402 = load i8*, i8** %15, align 8
  %403 = load i8*, i8** %17, align 8
  %404 = load i32, i32* %24, align 4
  %405 = load i8*, i8** %18, align 8
  %406 = load i32, i32* %19, align 4
  %407 = call i32 @encrypt_or_decrypt(i8* %402, i32 1, i8* %403, i32 %404, i8* %405, i32 %406, i32 0)
  store i32 %407, i32* %3, align 4
  br label %680

408:                                              ; preds = %398
  %409 = load i8*, i8** %17, align 8
  store i8* %409, i8** %33, align 8
  %410 = load i32, i32* %24, align 4
  store i32 %410, i32* %34, align 4
  %411 = load i64, i64* @_s, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %452

413:                                              ; preds = %408
  %414 = load i32, i32* %34, align 4
  %415 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  %416 = add nsw i32 %414, %415
  %417 = call i8* @malloc(i32 %416)
  store i8* %417, i8** %33, align 8
  %418 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 2), align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %432

420:                                              ; preds = %413
  %421 = load i8*, i8** %33, align 8
  %422 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 1), align 8
  %423 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  %424 = call i32 @memcpy(i8* %421, i8* %422, i32 %423)
  %425 = load i8*, i8** %33, align 8
  %426 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* %425, i64 %427
  %429 = load i8*, i8** %17, align 8
  %430 = load i32, i32* %24, align 4
  %431 = call i32 @memcpy(i8* %428, i8* %429, i32 %430)
  br label %444

432:                                              ; preds = %413
  %433 = load i8*, i8** %33, align 8
  %434 = load i8*, i8** %17, align 8
  %435 = load i32, i32* %24, align 4
  %436 = call i32 @memcpy(i8* %433, i8* %434, i32 %435)
  %437 = load i8*, i8** %33, align 8
  %438 = load i32, i32* %34, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %437, i64 %439
  %441 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 1), align 8
  %442 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  %443 = call i32 @memcpy(i8* %440, i8* %441, i32 %442)
  br label %444

444:                                              ; preds = %432, %420
  %445 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  %446 = load i32, i32* %34, align 4
  %447 = add nsw i32 %446, %445
  store i32 %447, i32* %34, align 4
  %448 = load i8*, i8** %33, align 8
  %449 = load i32, i32* %34, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8, i8* %448, i64 %450
  store i8 0, i8* %451, align 1
  br label %452

452:                                              ; preds = %444, %408
  %453 = load i8*, i8** %13, align 8
  %454 = call i32 @r_hash_name_to_bits(i8* %453)
  store i32 %454, i32* %27, align 4
  %455 = load i32, i32* %27, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %468

457:                                              ; preds = %452
  %458 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0))
  %459 = load i8*, i8** %33, align 8
  %460 = load i8*, i8** %17, align 8
  %461 = icmp ne i8* %459, %460
  br i1 %461, label %462, label %465

462:                                              ; preds = %457
  %463 = load i8*, i8** %33, align 8
  %464 = call i32 @free(i8* %463)
  br label %465

465:                                              ; preds = %462, %457
  %466 = load i8*, i8** %18, align 8
  %467 = call i32 @free(i8* %466)
  store i32 1, i32* %3, align 4
  br label %680

468:                                              ; preds = %452
  store i32 1, i32* %6, align 4
  br label %469

469:                                              ; preds = %500, %468
  %470 = load i32, i32* %6, align 4
  %471 = load i32, i32* @R_HASH_ALL, align 4
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %473, label %503

473:                                              ; preds = %469
  %474 = load i32, i32* %27, align 4
  %475 = load i32, i32* %6, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %499

478:                                              ; preds = %473
  %479 = load i32, i32* %6, align 4
  %480 = load i32, i32* %27, align 4
  %481 = and i32 %479, %480
  store i32 %481, i32* %35, align 4
  %482 = load i32, i32* %35, align 4
  %483 = call i32* @r_hash_new(i32 1, i32 %482)
  store i32* %483, i32** %28, align 8
  store i32 0, i32* @from, align 4
  %484 = load i32, i32* %34, align 4
  store i32 %484, i32* @to, align 4
  %485 = load i32*, i32** %28, align 8
  %486 = load i32, i32* %35, align 4
  %487 = load i8*, i8** %33, align 8
  %488 = load i32, i32* %34, align 4
  %489 = load i32, i32* %9, align 4
  %490 = load i32, i32* %12, align 4
  %491 = call i32 @do_hash_internal(i32* %485, i32 %486, i8* %487, i32 %488, i32 %489, i32 1, i32 %490)
  %492 = load i32*, i32** %28, align 8
  %493 = load i8*, i8** %23, align 8
  %494 = load i32, i32* %27, align 4
  %495 = call i32 @r_hash_size(i32 %494)
  %496 = call i32 @compare_hashes(i32* %492, i8* %493, i32 %495, i32* %7)
  %497 = load i32*, i32** %28, align 8
  %498 = call i32 @r_hash_free(i32* %497)
  br label %499

499:                                              ; preds = %478, %473
  br label %500

500:                                              ; preds = %499
  %501 = load i32, i32* %6, align 4
  %502 = shl i32 %501, 1
  store i32 %502, i32* %6, align 4
  br label %469

503:                                              ; preds = %469
  %504 = load i64, i64* @_s, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %516

506:                                              ; preds = %503
  %507 = load i8*, i8** %33, align 8
  %508 = load i8*, i8** %17, align 8
  %509 = icmp ne i8* %507, %508
  br i1 %509, label %510, label %513

510:                                              ; preds = %506
  %511 = load i8*, i8** %33, align 8
  %512 = call i32 @free(i8* %511)
  br label %513

513:                                              ; preds = %510, %506
  %514 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 1), align 8
  %515 = call i32 @free(i8* %514)
  br label %516

516:                                              ; preds = %513, %503
  %517 = load i32, i32* %7, align 4
  store i32 %517, i32* %3, align 4
  br label %680

518:                                              ; preds = %286
  %519 = load i32, i32* @r_optind, align 4
  %520 = load i32, i32* %4, align 4
  %521 = icmp sge i32 %519, %520
  br i1 %521, label %522, label %526

522:                                              ; preds = %518
  %523 = load i8*, i8** %18, align 8
  %524 = call i32 @free(i8* %523)
  %525 = call i32 @do_help(i32 1)
  store i32 %525, i32* %3, align 4
  br label %680

526:                                              ; preds = %518
  %527 = load i32, i32* %11, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %526
  %530 = load i32, i32* %10, align 4
  %531 = sub nsw i32 0, %530
  store i32 %531, i32* %10, align 4
  br label %540

532:                                              ; preds = %526
  %533 = load i32, i32* %10, align 4
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %535, label %539

535:                                              ; preds = %532
  %536 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %537 = load i8*, i8** %18, align 8
  %538 = call i32 @free(i8* %537)
  store i32 1, i32* %3, align 4
  br label %680

539:                                              ; preds = %532
  br label %540

540:                                              ; preds = %539, %529
  %541 = call i32* (...) @r_io_new()
  store i32* %541, i32** %29, align 8
  store i32 0, i32* %7, align 4
  %542 = load i32, i32* @r_optind, align 4
  store i32 %542, i32* %6, align 4
  br label %543

543:                                              ; preds = %669, %540
  %544 = load i32, i32* %6, align 4
  %545 = load i32, i32* %4, align 4
  %546 = icmp slt i32 %544, %545
  br i1 %546, label %547, label %672

547:                                              ; preds = %543
  %548 = load i8*, i8** %16, align 8
  %549 = icmp ne i8* %548, null
  br i1 %549, label %550, label %565

550:                                              ; preds = %547
  %551 = load i8*, i8** %16, align 8
  %552 = load i8**, i8*** %5, align 8
  %553 = load i32, i32* %6, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i8*, i8** %552, i64 %554
  %556 = load i8*, i8** %555, align 8
  %557 = load i8*, i8** %18, align 8
  %558 = load i32, i32* %19, align 4
  %559 = call i32 @encrypt_or_decrypt_file(i8* %551, i32 0, i8* %556, i8* %557, i32 %558, i32 0)
  store i32 %559, i32* %36, align 4
  %560 = load i32, i32* %36, align 4
  %561 = icmp eq i32 %560, -1
  br i1 %561, label %562, label %563

562:                                              ; preds = %550
  br label %669

563:                                              ; preds = %550
  %564 = load i32, i32* %36, align 4
  store i32 %564, i32* %3, align 4
  br label %680

565:                                              ; preds = %547
  %566 = load i8*, i8** %15, align 8
  %567 = icmp ne i8* %566, null
  br i1 %567, label %568, label %583

568:                                              ; preds = %565
  %569 = load i8*, i8** %15, align 8
  %570 = load i8**, i8*** %5, align 8
  %571 = load i32, i32* %6, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i8*, i8** %570, i64 %572
  %574 = load i8*, i8** %573, align 8
  %575 = load i8*, i8** %18, align 8
  %576 = load i32, i32* %19, align 4
  %577 = call i32 @encrypt_or_decrypt_file(i8* %569, i32 1, i8* %574, i8* %575, i32 %576, i32 0)
  store i32 %577, i32* %37, align 4
  %578 = load i32, i32* %37, align 4
  %579 = icmp eq i32 %578, -1
  br i1 %579, label %580, label %581

580:                                              ; preds = %568
  br label %669

581:                                              ; preds = %568
  %582 = load i32, i32* %37, align 4
  store i32 %582, i32* %3, align 4
  br label %680

583:                                              ; preds = %565
  store i32* null, i32** %38, align 8
  %584 = load i8**, i8*** %5, align 8
  %585 = load i32, i32* %6, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i8*, i8** %584, i64 %586
  %588 = load i8*, i8** %587, align 8
  %589 = call i32 @strcmp(i8* %588, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %617, label %591

591:                                              ; preds = %583
  store i32 0, i32* %39, align 4
  %592 = call i64 @r_stdin_slurp(i32* %39)
  %593 = inttoptr i64 %592 to i8*
  store i8* %593, i8** %40, align 8
  %594 = load i32, i32* %39, align 4
  %595 = call i8* @r_str_newf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %594)
  store i8* %595, i8** %41, align 8
  %596 = load i32, i32* %39, align 4
  %597 = icmp sgt i32 %596, 0
  br i1 %597, label %598, label %614

598:                                              ; preds = %591
  %599 = load i32*, i32** %29, align 8
  %600 = load i8*, i8** %41, align 8
  %601 = load i32, i32* @R_PERM_R, align 4
  %602 = call i32* @r_io_open_nomap(i32* %599, i8* %600, i32 %601, i32 0)
  store i32* %602, i32** %38, align 8
  %603 = load i32*, i32** %38, align 8
  %604 = icmp ne i32* %603, null
  br i1 %604, label %609, label %605

605:                                              ; preds = %598
  %606 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0))
  %607 = load i8*, i8** %18, align 8
  %608 = call i32 @free(i8* %607)
  store i32 1, i32* %3, align 4
  br label %680

609:                                              ; preds = %598
  %610 = load i32*, i32** %29, align 8
  %611 = load i8*, i8** %40, align 8
  %612 = load i32, i32* %39, align 4
  %613 = call i32 @r_io_pwrite_at(i32* %610, i32 0, i8* %611, i32 %612)
  br label %614

614:                                              ; preds = %609, %591
  %615 = load i8*, i8** %41, align 8
  %616 = call i32 @free(i8* %615)
  br label %650

617:                                              ; preds = %583
  %618 = load i8**, i8*** %5, align 8
  %619 = load i32, i32* %6, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8*, i8** %618, i64 %620
  %622 = load i8*, i8** %621, align 8
  %623 = call i64 @r_file_is_directory(i8* %622)
  %624 = icmp ne i64 %623, 0
  br i1 %624, label %625, label %629

625:                                              ; preds = %617
  %626 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0))
  %627 = load i8*, i8** %18, align 8
  %628 = call i32 @free(i8* %627)
  store i32 1, i32* %3, align 4
  br label %680

629:                                              ; preds = %617
  %630 = load i32*, i32** %29, align 8
  %631 = load i8**, i8*** %5, align 8
  %632 = load i32, i32* %6, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i8*, i8** %631, i64 %633
  %635 = load i8*, i8** %634, align 8
  %636 = load i32, i32* @R_PERM_R, align 4
  %637 = call i32* @r_io_open_nomap(i32* %630, i8* %635, i32 %636, i32 0)
  store i32* %637, i32** %38, align 8
  %638 = load i32*, i32** %38, align 8
  %639 = icmp ne i32* %638, null
  br i1 %639, label %649, label %640

640:                                              ; preds = %629
  %641 = load i8**, i8*** %5, align 8
  %642 = load i32, i32* %6, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i8*, i8** %641, i64 %643
  %645 = load i8*, i8** %644, align 8
  %646 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i8* %645)
  %647 = load i8*, i8** %18, align 8
  %648 = call i32 @free(i8* %647)
  store i32 1, i32* %3, align 4
  br label %680

649:                                              ; preds = %629
  br label %650

650:                                              ; preds = %649, %614
  %651 = load i8**, i8*** %5, align 8
  %652 = load i32, i32* %6, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i8*, i8** %651, i64 %653
  %655 = load i8*, i8** %654, align 8
  %656 = load i8*, i8** %13, align 8
  %657 = load i32*, i32** %29, align 8
  %658 = load i32, i32* %10, align 4
  %659 = load i32, i32* %9, align 4
  %660 = load i32, i32* %12, align 4
  %661 = load i8*, i8** %23, align 8
  %662 = call i32 @do_hash(i8* %655, i8* %656, i32* %657, i32 %658, i32 %659, i32 %660, i8* %661)
  %663 = load i32, i32* %7, align 4
  %664 = or i32 %663, %662
  store i32 %664, i32* %7, align 4
  store i32 0, i32* @to, align 4
  %665 = load i32*, i32** %38, align 8
  %666 = call i32 @r_io_desc_close(i32* %665)
  br label %667

667:                                              ; preds = %650
  br label %668

668:                                              ; preds = %667
  br label %669

669:                                              ; preds = %668, %580, %562
  %670 = load i32, i32* %6, align 4
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %6, align 4
  br label %543

672:                                              ; preds = %543
  %673 = load i8*, i8** %17, align 8
  %674 = call i32 @free(i8* %673)
  %675 = load i32*, i32** %29, align 8
  %676 = call i32 @r_io_free(i32* %675)
  %677 = load i8*, i8** %18, align 8
  %678 = call i32 @free(i8* %677)
  %679 = load i32, i32* %7, align 4
  store i32 %679, i32* %3, align 4
  br label %680

680:                                              ; preds = %672, %640, %625, %605, %581, %563, %535, %522, %516, %465, %401, %391, %363, %351, %329, %299, %252, %223, %192, %183, %176, %166, %158, %122, %111, %102, %92, %90, %70, %57
  %681 = load i32, i32* %3, align 4
  ret i32 %681
}

declare dso_local i32 @r_getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @algolist(...) #1

declare dso_local i32 @r_num_math(i32*, i8*) #1

declare dso_local i32 @r_main_version_print(i8*) #1

declare dso_local i32 @do_help(i32) #1

declare dso_local i32 @setHashString(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @r_hash_name_to_bits(i8*) #1

declare dso_local i32 @is_power_of_two(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_hex_str2bin(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_hash_size(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @r_sys_cmdf(i8*, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @do_hash_seed(i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @r_str_unescape(i8*) #1

declare dso_local i32 @encrypt_or_decrypt(i8*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32* @r_hash_new(i32, i32) #1

declare dso_local i32 @do_hash_internal(i32*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @compare_hashes(i32*, i8*, i32, i32*) #1

declare dso_local i32 @r_hash_free(i32*) #1

declare dso_local i32* @r_io_new(...) #1

declare dso_local i32 @encrypt_or_decrypt_file(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @r_stdin_slurp(i32*) #1

declare dso_local i8* @r_str_newf(i8*, i32) #1

declare dso_local i32* @r_io_open_nomap(i32*, i8*, i32, i32) #1

declare dso_local i32 @r_io_pwrite_at(i32*, i32, i8*, i32) #1

declare dso_local i64 @r_file_is_directory(i8*) #1

declare dso_local i32 @do_hash(i8*, i8*, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @r_io_desc_close(i32*) #1

declare dso_local i32 @r_io_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
