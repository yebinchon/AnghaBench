; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_yank.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_yank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Invalid length\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: ywx [hexpairs]\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Cannot dump to '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Usage: wt[f] [arg] ..\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Usage: yf[xa] [arg]\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"yf [file]     - copy blocksize from file into the clipboard\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"yfa [path]    - yank the whole file\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"yfx [hexpair] - yank from hexpair string\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"y*\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"wx 10203040\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"y%s\00", align 1
@help_msg_y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_yank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_yank(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %259 [
    i32 32, label %20
    i32 108, label %32
    i32 121, label %41
    i32 120, label %73
    i32 122, label %82
    i32 119, label %94
    i32 112, label %145
    i32 115, label %154
    i32 116, label %163
    i32 102, label %201
    i32 33, label %227
    i32 42, label %253
    i32 106, label %253
    i32 113, label %253
    i32 0, label %253
  ]

20:                                               ; preds = %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i32 @r_num_math(%struct.TYPE_20__* %27, i8* %29)
  %31 = call i32 @r_core_yank(%struct.TYPE_19__* %21, i32 %24, i32 %30)
  br label %263

32:                                               ; preds = %2
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @r_buf_size(i32 %35)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  br label %263

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %48, %41
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %4, align 8
  br label %42

51:                                               ; preds = %42
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i32 @r_num_math(%struct.TYPE_20__* %60, i8* %62)
  br label %68

64:                                               ; preds = %51
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  br label %68

68:                                               ; preds = %64, %57
  %69 = phi i32 [ %63, %57 ], [ %67, %64 ]
  store i32 %69, i32* %5, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @r_core_yank_paste(%struct.TYPE_19__* %70, i32 %71, i32 0)
  br label %263

73:                                               ; preds = %2
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @r_num_math(%struct.TYPE_20__* %77, i8* %79)
  %81 = call i32 @r_core_yank_hexdump(%struct.TYPE_19__* %74, i32 %80)
  br label %263

82:                                               ; preds = %2
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = call i32 @r_num_math(%struct.TYPE_20__* %89, i8* %91)
  %93 = call i32 @r_core_yank_string(%struct.TYPE_19__* %83, i32 %86, i32 %92)
  br label %263

94:                                               ; preds = %2
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  switch i32 %98, label %142 [
    i32 32, label %99
    i32 120, label %108
  ]

99:                                               ; preds = %94
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = call i32 @strlen(i8* %105)
  %107 = call i32 @r_core_yank_set(%struct.TYPE_19__* %100, i32 0, i32* %103, i32 %106)
  br label %144

108:                                              ; preds = %94
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 32
  br i1 %113, label %114, label %139

114:                                              ; preds = %108
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = call i8* @strdup(i8* %116)
  store i8* %117, i8** %7, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 3
  %120 = load i8*, i8** %7, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = call i32 @r_hex_str2bin(i8* %119, i32* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %114
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = bitcast i8* %130 to i32*
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @r_core_yank_set(%struct.TYPE_19__* %126, i32 %129, i32* %131, i32 %132)
  br label %136

134:                                              ; preds = %114
  %135 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %125
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @free(i8* %137)
  br label %141

139:                                              ; preds = %108
  %140 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %136
  br label %144

142:                                              ; preds = %94
  %143 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %141, %99
  br label %263

145:                                              ; preds = %2
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %148, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = call i32 @r_num_math(%struct.TYPE_20__* %149, i8* %151)
  %153 = call i32 @r_core_yank_cat(%struct.TYPE_19__* %146, i32 %152)
  br label %263

154:                                              ; preds = %2
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = call i32 @r_num_math(%struct.TYPE_20__* %158, i8* %160)
  %162 = call i32 @r_core_yank_cat_string(%struct.TYPE_19__* %155, i32 %161)
  br label %263

163:                                              ; preds = %2
  %164 = load i8*, i8** %4, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 102
  br i1 %168, label %169, label %186

169:                                              ; preds = %163
  %170 = load i8*, i8** %4, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = call i8* @r_str_trim_ro(i8* %171)
  store i8* %172, i8** %10, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32* @r_buf_data(i32 %175, i32* %9)
  store i32* %176, i32** %11, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @r_file_dump(i8* %177, i32* %178, i32 %179, i32 0)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %169
  %183 = load i8*, i8** %10, align 8
  %184 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %182, %169
  br label %200

186:                                              ; preds = %163
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 32
  br i1 %191, label %192, label %197

192:                                              ; preds = %186
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %194 = load i8*, i8** %4, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = call i32 @r_core_yank_to(%struct.TYPE_19__* %193, i8* %195)
  br label %199

197:                                              ; preds = %186
  %198 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %192
  br label %200

200:                                              ; preds = %199, %185
  br label %263

201:                                              ; preds = %2
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  switch i32 %205, label %221 [
    i32 32, label %206
    i32 120, label %211
    i32 97, label %216
  ]

206:                                              ; preds = %201
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = call i32 @r_core_yank_file_ex(%struct.TYPE_19__* %207, i8* %209)
  br label %226

211:                                              ; preds = %201
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 2
  %215 = call i32 @r_core_yank_hexpair(%struct.TYPE_19__* %212, i8* %214)
  br label %226

216:                                              ; preds = %201
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %218 = load i8*, i8** %4, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 2
  %220 = call i32 @r_core_yank_file_all(%struct.TYPE_19__* %217, i8* %219)
  br label %226

221:                                              ; preds = %201
  %222 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %223 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %224 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %225 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %226

226:                                              ; preds = %221, %216, %211, %206
  br label %263

227:                                              ; preds = %2
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %229 = call i8* @r_core_cmd_str(%struct.TYPE_19__* %228, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i8* %229, i8** %12, align 8
  %230 = load i8*, i8** %12, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load i8*, i8** %12, align 8
  %234 = load i8, i8* %233, align 1
  %235 = icmp ne i8 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %232, %227
  %237 = load i8*, i8** %12, align 8
  %238 = call i32 @free(i8* %237)
  %239 = call i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  store i8* %239, i8** %12, align 8
  br label %240

240:                                              ; preds = %236, %232
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %242 = load i8*, i8** %12, align 8
  %243 = call i8* @r_core_editor(%struct.TYPE_19__* %241, i32* null, i8* %242)
  store i8* %243, i8** %13, align 8
  %244 = load i8*, i8** %13, align 8
  %245 = call i32 @strtok(i8* %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %247 = load i8*, i8** %13, align 8
  %248 = call i32 @r_core_cmdf(%struct.TYPE_19__* %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %247)
  %249 = load i8*, i8** %12, align 8
  %250 = call i32 @free(i8* %249)
  %251 = load i8*, i8** %13, align 8
  %252 = call i32 @free(i8* %251)
  br label %263

253:                                              ; preds = %2, %2, %2, %2
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %255 = load i8*, i8** %4, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = call i32 @r_core_yank_dump(%struct.TYPE_19__* %254, i32 0, i8 signext %257)
  br label %263

259:                                              ; preds = %2
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %261 = load i32, i32* @help_msg_y, align 4
  %262 = call i32 @r_core_cmd_help(%struct.TYPE_19__* %260, i32 %261)
  br label %263

263:                                              ; preds = %259, %253, %240, %226, %200, %154, %145, %144, %82, %73, %68, %32, %20
  ret i32 1
}

declare dso_local i32 @r_core_yank(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @r_num_math(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @r_buf_size(i32) #1

declare dso_local i32 @r_core_yank_paste(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @r_core_yank_hexdump(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @r_core_yank_string(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @r_core_yank_set(%struct.TYPE_19__*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_hex_str2bin(i8*, i32*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_core_yank_cat(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @r_core_yank_cat_string(%struct.TYPE_19__*, i32) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32* @r_buf_data(i32, i32*) #1

declare dso_local i32 @r_file_dump(i8*, i32*, i32, i32) #1

declare dso_local i32 @r_core_yank_to(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @r_core_yank_file_ex(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @r_core_yank_hexpair(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @r_core_yank_file_all(%struct.TYPE_19__*, i8*) #1

declare dso_local i8* @r_core_cmd_str(%struct.TYPE_19__*, i8*) #1

declare dso_local i8* @r_core_editor(%struct.TYPE_19__*, i32*, i8*) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local i32 @r_core_cmdf(%struct.TYPE_19__*, i8*, i8*) #1

declare dso_local i32 @r_core_yank_dump(%struct.TYPE_19__*, i32, i8 signext) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
