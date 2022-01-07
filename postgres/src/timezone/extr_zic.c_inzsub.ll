; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_inzsub.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_inzsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i8*, i8, i64, %struct.TYPE_3__, i8*, i32, i8*, i8*, i32* }
%struct.TYPE_3__ = type { i32, i8*, i8* }

@inzsub.z = internal global %struct.zone zeroinitializer, align 8
@ZFC_STDOFF = common dso_local global i32 0, align 4
@ZFC_RULE = common dso_local global i32 0, align 4
@ZFC_FORMAT = common dso_local global i32 0, align 4
@ZFC_TILYEAR = common dso_local global i32 0, align 4
@ZFC_TILMONTH = common dso_local global i32 0, align 4
@ZFC_TILDAY = common dso_local global i32 0, align 4
@ZFC_TILTIME = common dso_local global i32 0, align 4
@ZF_NAME = common dso_local global i64 0, align 8
@ZF_STDOFF = common dso_local global i32 0, align 4
@ZF_RULE = common dso_local global i32 0, align 4
@ZF_FORMAT = common dso_local global i32 0, align 4
@ZF_TILYEAR = common dso_local global i32 0, align 4
@ZF_TILMONTH = common dso_local global i32 0, align 4
@ZF_TILDAY = common dso_local global i32 0, align 4
@ZF_TILTIME = common dso_local global i32 0, align 4
@filename = common dso_local global i8* null, align 8
@linenum = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"invalid UT offset\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid abbreviation format\00", align 1
@noise = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"format '%s' not handled by pre-2015 versions of zic\00", align 1
@max_format_len = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nzones = common dso_local global i32 0, align 4
@min_time = common dso_local global i64 0, align 8
@max_time = common dso_local global i64 0, align 8
@zones = common dso_local global %struct.zone* null, align 8
@.str.8 = private unnamed_addr constant [71 x i8] c"Zone continuation line end time is not after end time of previous line\00", align 1
@nzones_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32)* @inzsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inzsub(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i32, i32* @ZFC_STDOFF, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @ZFC_RULE, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @ZFC_FORMAT, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @ZFC_TILYEAR, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @ZFC_TILMONTH, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @ZFC_TILDAY, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* @ZFC_TILTIME, align 4
  store i32 %27, i32* %16, align 4
  store i32* null, i32** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 8), align 8
  br label %51

28:                                               ; preds = %3
  %29 = load i8**, i8*** %5, align 8
  %30 = load i64, i64* @ZF_NAME, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @namecheck(i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %260

36:                                               ; preds = %28
  %37 = load i32, i32* @ZF_STDOFF, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @ZF_RULE, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @ZF_FORMAT, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @ZF_TILYEAR, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* @ZF_TILMONTH, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* @ZF_TILDAY, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* @ZF_TILTIME, align 4
  store i32 %43, i32* %16, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = load i64, i64* @ZF_NAME, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @ecpyalloc(i8* %47)
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 8), align 8
  br label %50

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %20
  %52 = load i8*, i8** @filename, align 8
  store i8* %52, i8** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 7), align 8
  %53 = load i8*, i8** @linenum, align 8
  store i8* %53, i8** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 6), align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @gethms(i8* %58, i32 %59)
  store i32 %60, i32* getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 5), align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 37)
  store i8* %66, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %95

68:                                               ; preds = %51
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 115
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 122
  br i1 %78, label %91, label %79

79:                                               ; preds = %74, %68
  %80 = load i8*, i8** %8, align 8
  %81 = call i8* @strchr(i8* %80, i8 signext 37)
  %82 = icmp ne i8* %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strchr(i8* %88, i8 signext 47)
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %83, %79, %74
  %92 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %93 = call i32 @error(i32 %92)
  store i32 0, i32* %4, align 4
  br label %260

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %51
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @ecpyalloc(i8* %100)
  store i8* %101, i8** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 4), align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @ecpyalloc(i8* %106)
  store i8* %107, i8** %9, align 8
  store i8* %107, i8** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 0), align 8
  %108 = load i8*, i8** %8, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %95
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  br label %115

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i32 [ %113, %110 ], [ 0, %114 ]
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 1), align 8
  %118 = load i8, i8* getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 1), align 8
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 122
  br i1 %120, label %121, label %140

121:                                              ; preds = %115
  %122 = load i64, i64* @noise, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i8*, i8** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 0), align 8
  %127 = call i32 @warning(i32 %125, i8* %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = ptrtoint i8* %130 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = getelementptr inbounds i8, i8* %129, i64 %138
  store i8 115, i8* %139, align 1
  br label %140

140:                                              ; preds = %128, %115
  %141 = load i64, i64* @max_format_len, align 8
  %142 = load i8*, i8** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 0), align 8
  %143 = call i64 @strlen(i8* %142)
  %144 = icmp slt i64 %141, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i8*, i8** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 0), align 8
  %147 = call i64 @strlen(i8* %146)
  store i64 %147, i64* @max_format_len, align 8
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp sgt i32 %149, %150
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %249

155:                                              ; preds = %148
  %156 = load i8*, i8** @filename, align 8
  store i8* %156, i8** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 3, i32 2), align 8
  %157 = load i8*, i8** @linenum, align 8
  store i8* %157, i8** getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 3, i32 1), align 8
  %158 = load i8**, i8*** %5, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %155
  %167 = load i8**, i8*** %5, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  br label %173

172:                                              ; preds = %155
  br label %173

173:                                              ; preds = %172, %166
  %174 = phi i8* [ %171, %166 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %172 ]
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load i8**, i8*** %5, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  br label %185

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184, %178
  %186 = phi i8* [ %183, %178 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %184 ]
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %16, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load i8**, i8*** %5, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  br label %197

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196, %190
  %198 = phi i8* [ %195, %190 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), %196 ]
  %199 = call i32 @rulesub(%struct.TYPE_3__* getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 3), i8* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %174, i8* %186, i8* %198)
  %200 = load i32, i32* getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 3, i32 0), align 8
  %201 = call i64 @rpytime(%struct.TYPE_3__* getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 3), i32 %200)
  store i64 %201, i64* getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 2), align 8
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %248

204:                                              ; preds = %197
  %205 = load i32, i32* @nzones, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %248

207:                                              ; preds = %204
  %208 = load i64, i64* getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 2), align 8
  %209 = load i64, i64* @min_time, align 8
  %210 = icmp sgt i64 %208, %209
  br i1 %210, label %211, label %248

211:                                              ; preds = %207
  %212 = load i64, i64* getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 2), align 8
  %213 = load i64, i64* @max_time, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %215, label %248

215:                                              ; preds = %211
  %216 = load %struct.zone*, %struct.zone** @zones, align 8
  %217 = load i32, i32* @nzones, align 4
  %218 = sub nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.zone, %struct.zone* %216, i64 %219
  %221 = getelementptr inbounds %struct.zone, %struct.zone* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @min_time, align 8
  %224 = icmp sgt i64 %222, %223
  br i1 %224, label %225, label %248

225:                                              ; preds = %215
  %226 = load %struct.zone*, %struct.zone** @zones, align 8
  %227 = load i32, i32* @nzones, align 4
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.zone, %struct.zone* %226, i64 %229
  %231 = getelementptr inbounds %struct.zone, %struct.zone* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @max_time, align 8
  %234 = icmp slt i64 %232, %233
  br i1 %234, label %235, label %248

235:                                              ; preds = %225
  %236 = load %struct.zone*, %struct.zone** @zones, align 8
  %237 = load i32, i32* @nzones, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.zone, %struct.zone* %236, i64 %239
  %241 = getelementptr inbounds %struct.zone, %struct.zone* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* getelementptr inbounds (%struct.zone, %struct.zone* @inzsub.z, i32 0, i32 2), align 8
  %244 = icmp sge i64 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %235
  %246 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0))
  %247 = call i32 @error(i32 %246)
  store i32 0, i32* %4, align 4
  br label %260

248:                                              ; preds = %235, %225, %215, %211, %207, %204, %197
  br label %249

249:                                              ; preds = %248, %148
  %250 = load %struct.zone*, %struct.zone** @zones, align 8
  %251 = load i32, i32* @nzones, align 4
  %252 = call %struct.zone* @growalloc(%struct.zone* %250, i32 88, i32 %251, i32* @nzones_alloc)
  store %struct.zone* %252, %struct.zone** @zones, align 8
  %253 = load %struct.zone*, %struct.zone** @zones, align 8
  %254 = load i32, i32* @nzones, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* @nzones, align 4
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds %struct.zone, %struct.zone* %253, i64 %256
  %258 = bitcast %struct.zone* %257 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %258, i8* align 8 bitcast (%struct.zone* @inzsub.z to i8*), i64 88, i1 false)
  %259 = load i32, i32* %17, align 4
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %249, %245, %91, %35
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @namecheck(i8*) #1

declare dso_local i8* @ecpyalloc(i8*) #1

declare dso_local i32 @gethms(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @rulesub(%struct.TYPE_3__*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @rpytime(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.zone* @growalloc(%struct.zone*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
