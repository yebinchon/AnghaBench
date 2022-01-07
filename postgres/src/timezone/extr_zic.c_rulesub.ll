; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_rulesub.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_rulesub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i32, i32, i32, i32, i32, i64, i32, i32, i32*, i32, i32, i32 }
%struct.lookup = type { i32 }

@mon_names = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid month name\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid time of day\00", align 1
@begin_years = common dso_local global i32 0, align 4
@ZIC_MIN = common dso_local global i8* null, align 8
@ZIC_MAX = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: panic: Invalid l_value %d\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid starting year\00", align 1
@end_years = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid ending year\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"starting year greater than ending year\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"typed single year\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"year type \22%s\22 is obsolete; use \22-\22 instead\00", align 1
@lasts = common dso_local global i32 0, align 4
@DC_DOWLEQ = common dso_local global i8* null, align 8
@len_months = common dso_local global i64** null, align 8
@DC_DOWGEQ = common dso_local global i64 0, align 8
@DC_DOM = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"invalid day of month\00", align 1
@wday_names = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"invalid weekday name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rule*, i8*, i8*, i8*, i8*, i8*, i8*)* @rulesub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rulesub(%struct.rule* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.rule*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.lookup*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  store %struct.rule* %0, %struct.rule** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* @mon_names, align 4
  %23 = call %struct.lookup* @byword(i8* %21, i32 %22)
  store %struct.lookup* %23, %struct.lookup** %15, align 8
  %24 = icmp eq %struct.lookup* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @error(i8* %26)
  br label %349

28:                                               ; preds = %7
  %29 = load %struct.lookup*, %struct.lookup** %15, align 8
  %30 = getelementptr inbounds %struct.lookup, %struct.lookup* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rule*, %struct.rule** %8, align 8
  %33 = getelementptr inbounds %struct.rule, %struct.rule* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.rule*, %struct.rule** %8, align 8
  %35 = getelementptr inbounds %struct.rule, %struct.rule* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.rule*, %struct.rule** %8, align 8
  %37 = getelementptr inbounds %struct.rule, %struct.rule* %36, i32 0, i32 2
  store i32 0, i32* %37, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i8* @ecpyalloc(i8* %38)
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %28
  %45 = load i8*, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %50, i8** %18, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @lowerit(i8 signext %52)
  switch i32 %53, label %72 [
    i32 115, label %54
    i32 119, label %60
    i32 103, label %66
    i32 117, label %66
    i32 122, label %66
  ]

54:                                               ; preds = %44
  %55 = load %struct.rule*, %struct.rule** %8, align 8
  %56 = getelementptr inbounds %struct.rule, %struct.rule* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.rule*, %struct.rule** %8, align 8
  %58 = getelementptr inbounds %struct.rule, %struct.rule* %57, i32 0, i32 2
  store i32 0, i32* %58, align 8
  %59 = load i8*, i8** %18, align 8
  store i8 0, i8* %59, align 1
  br label %72

60:                                               ; preds = %44
  %61 = load %struct.rule*, %struct.rule** %8, align 8
  %62 = getelementptr inbounds %struct.rule, %struct.rule* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.rule*, %struct.rule** %8, align 8
  %64 = getelementptr inbounds %struct.rule, %struct.rule* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load i8*, i8** %18, align 8
  store i8 0, i8* %65, align 1
  br label %72

66:                                               ; preds = %44, %44, %44
  %67 = load %struct.rule*, %struct.rule** %8, align 8
  %68 = getelementptr inbounds %struct.rule, %struct.rule* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.rule*, %struct.rule** %8, align 8
  %70 = getelementptr inbounds %struct.rule, %struct.rule* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load i8*, i8** %18, align 8
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %44, %66, %60, %54
  br label %73

73:                                               ; preds = %72, %28
  %74 = load i8*, i8** %17, align 8
  %75 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @gethms(i8* %74, i8* %75)
  %77 = load %struct.rule*, %struct.rule** %8, align 8
  %78 = getelementptr inbounds %struct.rule, %struct.rule* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** %17, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i8*, i8** %9, align 8
  store i8* %81, i8** %16, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = load i32, i32* @begin_years, align 4
  %84 = call %struct.lookup* @byword(i8* %82, i32 %83)
  store %struct.lookup* %84, %struct.lookup** %15, align 8
  %85 = load %struct.lookup*, %struct.lookup** %15, align 8
  %86 = icmp eq %struct.lookup* %85, null
  %87 = zext i1 %86 to i32
  %88 = load %struct.rule*, %struct.rule** %8, align 8
  %89 = getelementptr inbounds %struct.rule, %struct.rule* %88, i32 0, i32 10
  store i32 %87, i32* %89, align 4
  %90 = load %struct.rule*, %struct.rule** %8, align 8
  %91 = getelementptr inbounds %struct.rule, %struct.rule* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %73
  %95 = load %struct.lookup*, %struct.lookup** %15, align 8
  %96 = getelementptr inbounds %struct.lookup, %struct.lookup* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %108 [
    i32 129, label %98
    i32 130, label %103
  ]

98:                                               ; preds = %94
  %99 = load i8*, i8** @ZIC_MIN, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.rule*, %struct.rule** %8, align 8
  %102 = getelementptr inbounds %struct.rule, %struct.rule* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  br label %118

103:                                              ; preds = %94
  %104 = load i8*, i8** @ZIC_MAX, align 8
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.rule*, %struct.rule** %8, align 8
  %107 = getelementptr inbounds %struct.rule, %struct.rule* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %118

108:                                              ; preds = %94
  %109 = load i32, i32* @stderr, align 4
  %110 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i8*, i8** @progname, align 8
  %112 = load %struct.lookup*, %struct.lookup** %15, align 8
  %113 = getelementptr inbounds %struct.lookup, %struct.lookup* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fprintf(i32 %109, i8* %110, i8* %111, i32 %114)
  %116 = load i32, i32* @EXIT_FAILURE, align 4
  %117 = call i32 @exit(i32 %116) #3
  unreachable

118:                                              ; preds = %103, %98
  br label %131

119:                                              ; preds = %73
  %120 = load i8*, i8** %16, align 8
  %121 = call i32 @sscanf(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %20, i8* %19)
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %20, align 4
  %125 = load %struct.rule*, %struct.rule** %8, align 8
  %126 = getelementptr inbounds %struct.rule, %struct.rule* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  br label %130

127:                                              ; preds = %119
  %128 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %129 = call i32 @error(i8* %128)
  br label %349

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %118
  %132 = load i8*, i8** %10, align 8
  store i8* %132, i8** %16, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = load i32, i32* @end_years, align 4
  %135 = call %struct.lookup* @byword(i8* %133, i32 %134)
  store %struct.lookup* %135, %struct.lookup** %15, align 8
  %136 = load %struct.lookup*, %struct.lookup** %15, align 8
  %137 = icmp eq %struct.lookup* %136, null
  %138 = zext i1 %137 to i32
  %139 = load %struct.rule*, %struct.rule** %8, align 8
  %140 = getelementptr inbounds %struct.rule, %struct.rule* %139, i32 0, i32 9
  store i32 %138, i32* %140, align 8
  %141 = load %struct.rule*, %struct.rule** %8, align 8
  %142 = getelementptr inbounds %struct.rule, %struct.rule* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %176, label %145

145:                                              ; preds = %131
  %146 = load %struct.lookup*, %struct.lookup** %15, align 8
  %147 = getelementptr inbounds %struct.lookup, %struct.lookup* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  switch i32 %148, label %165 [
    i32 129, label %149
    i32 130, label %154
    i32 128, label %159
  ]

149:                                              ; preds = %145
  %150 = load i8*, i8** @ZIC_MIN, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.rule*, %struct.rule** %8, align 8
  %153 = getelementptr inbounds %struct.rule, %struct.rule* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  br label %175

154:                                              ; preds = %145
  %155 = load i8*, i8** @ZIC_MAX, align 8
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.rule*, %struct.rule** %8, align 8
  %158 = getelementptr inbounds %struct.rule, %struct.rule* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  br label %175

159:                                              ; preds = %145
  %160 = load %struct.rule*, %struct.rule** %8, align 8
  %161 = getelementptr inbounds %struct.rule, %struct.rule* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.rule*, %struct.rule** %8, align 8
  %164 = getelementptr inbounds %struct.rule, %struct.rule* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  br label %175

165:                                              ; preds = %145
  %166 = load i32, i32* @stderr, align 4
  %167 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %168 = load i8*, i8** @progname, align 8
  %169 = load %struct.lookup*, %struct.lookup** %15, align 8
  %170 = getelementptr inbounds %struct.lookup, %struct.lookup* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @fprintf(i32 %166, i8* %167, i8* %168, i32 %171)
  %173 = load i32, i32* @EXIT_FAILURE, align 4
  %174 = call i32 @exit(i32 %173) #3
  unreachable

175:                                              ; preds = %159, %154, %149
  br label %188

176:                                              ; preds = %131
  %177 = load i8*, i8** %16, align 8
  %178 = call i32 @sscanf(i8* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %20, i8* %19)
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i32, i32* %20, align 4
  %182 = load %struct.rule*, %struct.rule** %8, align 8
  %183 = getelementptr inbounds %struct.rule, %struct.rule* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  br label %187

184:                                              ; preds = %176
  %185 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %186 = call i32 @error(i8* %185)
  br label %349

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187, %175
  %189 = load %struct.rule*, %struct.rule** %8, align 8
  %190 = getelementptr inbounds %struct.rule, %struct.rule* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.rule*, %struct.rule** %8, align 8
  %193 = getelementptr inbounds %struct.rule, %struct.rule* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = icmp sgt i32 %191, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %198 = call i32 @error(i8* %197)
  br label %349

199:                                              ; preds = %188
  %200 = load i8*, i8** %11, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load %struct.rule*, %struct.rule** %8, align 8
  %206 = getelementptr inbounds %struct.rule, %struct.rule* %205, i32 0, i32 8
  store i32* null, i32** %206, align 8
  br label %227

207:                                              ; preds = %199
  %208 = load %struct.rule*, %struct.rule** %8, align 8
  %209 = getelementptr inbounds %struct.rule, %struct.rule* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.rule*, %struct.rule** %8, align 8
  %212 = getelementptr inbounds %struct.rule, %struct.rule* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %210, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %217 = call i32 @error(i8* %216)
  br label %349

218:                                              ; preds = %207
  %219 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %220 = load i8*, i8** %11, align 8
  %221 = call i32 @warning(i8* %219, i8* %220)
  %222 = load i8*, i8** %11, align 8
  %223 = call i8* @ecpyalloc(i8* %222)
  %224 = bitcast i8* %223 to i32*
  %225 = load %struct.rule*, %struct.rule** %8, align 8
  %226 = getelementptr inbounds %struct.rule, %struct.rule* %225, i32 0, i32 8
  store i32* %224, i32** %226, align 8
  br label %227

227:                                              ; preds = %218, %204
  %228 = load i8*, i8** %13, align 8
  %229 = call i8* @ecpyalloc(i8* %228)
  store i8* %229, i8** %17, align 8
  %230 = load i8*, i8** %17, align 8
  %231 = load i32, i32* @lasts, align 4
  %232 = call %struct.lookup* @byword(i8* %230, i32 %231)
  store %struct.lookup* %232, %struct.lookup** %15, align 8
  %233 = icmp ne %struct.lookup* %232, null
  br i1 %233, label %234, label %256

234:                                              ; preds = %227
  %235 = load i8*, i8** @DC_DOWLEQ, align 8
  %236 = ptrtoint i8* %235 to i64
  %237 = load %struct.rule*, %struct.rule** %8, align 8
  %238 = getelementptr inbounds %struct.rule, %struct.rule* %237, i32 0, i32 5
  store i64 %236, i64* %238, align 8
  %239 = load %struct.lookup*, %struct.lookup** %15, align 8
  %240 = getelementptr inbounds %struct.lookup, %struct.lookup* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.rule*, %struct.rule** %8, align 8
  %243 = getelementptr inbounds %struct.rule, %struct.rule* %242, i32 0, i32 6
  store i32 %241, i32* %243, align 8
  %244 = load i64**, i64*** @len_months, align 8
  %245 = getelementptr inbounds i64*, i64** %244, i64 1
  %246 = load i64*, i64** %245, align 8
  %247 = load %struct.rule*, %struct.rule** %8, align 8
  %248 = getelementptr inbounds %struct.rule, %struct.rule* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %246, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = load %struct.rule*, %struct.rule** %8, align 8
  %255 = getelementptr inbounds %struct.rule, %struct.rule* %254, i32 0, i32 7
  store i32 %253, i32* %255, align 4
  br label %346

256:                                              ; preds = %227
  %257 = load i8*, i8** %17, align 8
  %258 = call i8* @strchr(i8* %257, i8 signext 60)
  store i8* %258, i8** %18, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = load i8*, i8** @DC_DOWLEQ, align 8
  %262 = ptrtoint i8* %261 to i64
  %263 = load %struct.rule*, %struct.rule** %8, align 8
  %264 = getelementptr inbounds %struct.rule, %struct.rule* %263, i32 0, i32 5
  store i64 %262, i64* %264, align 8
  br label %279

265:                                              ; preds = %256
  %266 = load i8*, i8** %17, align 8
  %267 = call i8* @strchr(i8* %266, i8 signext 62)
  store i8* %267, i8** %18, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = load i64, i64* @DC_DOWGEQ, align 8
  %271 = load %struct.rule*, %struct.rule** %8, align 8
  %272 = getelementptr inbounds %struct.rule, %struct.rule* %271, i32 0, i32 5
  store i64 %270, i64* %272, align 8
  br label %278

273:                                              ; preds = %265
  %274 = load i8*, i8** %17, align 8
  store i8* %274, i8** %18, align 8
  %275 = load i64, i64* @DC_DOM, align 8
  %276 = load %struct.rule*, %struct.rule** %8, align 8
  %277 = getelementptr inbounds %struct.rule, %struct.rule* %276, i32 0, i32 5
  store i64 %275, i64* %277, align 8
  br label %278

278:                                              ; preds = %273, %269
  br label %279

279:                                              ; preds = %278, %260
  %280 = load %struct.rule*, %struct.rule** %8, align 8
  %281 = getelementptr inbounds %struct.rule, %struct.rule* %280, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @DC_DOM, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %314

285:                                              ; preds = %279
  %286 = load i8*, i8** %18, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %18, align 8
  store i8 0, i8* %286, align 1
  %288 = load i8*, i8** %18, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %18, align 8
  %290 = load i8, i8* %288, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp ne i32 %291, 61
  br i1 %292, label %293, label %298

293:                                              ; preds = %285
  %294 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %295 = call i32 @error(i8* %294)
  %296 = load i8*, i8** %17, align 8
  %297 = call i32 @free(i8* %296)
  br label %349

298:                                              ; preds = %285
  %299 = load i8*, i8** %17, align 8
  %300 = load i32, i32* @wday_names, align 4
  %301 = call %struct.lookup* @byword(i8* %299, i32 %300)
  store %struct.lookup* %301, %struct.lookup** %15, align 8
  %302 = icmp eq %struct.lookup* %301, null
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %305 = call i32 @error(i8* %304)
  %306 = load i8*, i8** %17, align 8
  %307 = call i32 @free(i8* %306)
  br label %349

308:                                              ; preds = %298
  %309 = load %struct.lookup*, %struct.lookup** %15, align 8
  %310 = getelementptr inbounds %struct.lookup, %struct.lookup* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.rule*, %struct.rule** %8, align 8
  %313 = getelementptr inbounds %struct.rule, %struct.rule* %312, i32 0, i32 6
  store i32 %311, i32* %313, align 8
  br label %314

314:                                              ; preds = %308, %279
  %315 = load i8*, i8** %18, align 8
  %316 = load %struct.rule*, %struct.rule** %8, align 8
  %317 = getelementptr inbounds %struct.rule, %struct.rule* %316, i32 0, i32 7
  %318 = call i32 @sscanf(i8* %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %317, i8* %19)
  %319 = icmp ne i32 %318, 1
  br i1 %319, label %340, label %320

320:                                              ; preds = %314
  %321 = load %struct.rule*, %struct.rule** %8, align 8
  %322 = getelementptr inbounds %struct.rule, %struct.rule* %321, i32 0, i32 7
  %323 = load i32, i32* %322, align 4
  %324 = icmp sle i32 %323, 0
  br i1 %324, label %340, label %325

325:                                              ; preds = %320
  %326 = load %struct.rule*, %struct.rule** %8, align 8
  %327 = getelementptr inbounds %struct.rule, %struct.rule* %326, i32 0, i32 7
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = load i64**, i64*** @len_months, align 8
  %331 = getelementptr inbounds i64*, i64** %330, i64 1
  %332 = load i64*, i64** %331, align 8
  %333 = load %struct.rule*, %struct.rule** %8, align 8
  %334 = getelementptr inbounds %struct.rule, %struct.rule* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i64, i64* %332, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = icmp sgt i64 %329, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %325, %320, %314
  %341 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %342 = call i32 @error(i8* %341)
  %343 = load i8*, i8** %17, align 8
  %344 = call i32 @free(i8* %343)
  br label %349

345:                                              ; preds = %325
  br label %346

346:                                              ; preds = %345, %234
  %347 = load i8*, i8** %17, align 8
  %348 = call i32 @free(i8* %347)
  br label %349

349:                                              ; preds = %346, %340, %303, %293, %215, %196, %184, %127, %25
  ret void
}

declare dso_local %struct.lookup* @byword(i8*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @ecpyalloc(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lowerit(i8 signext) #1

declare dso_local i32 @gethms(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
