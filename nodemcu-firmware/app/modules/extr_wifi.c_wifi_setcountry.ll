; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_setcountry.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_setcountry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"country\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"country: country code must be 2 chars\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"country: must be string\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"start_ch\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"start_ch: Range:1-14\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"start_ch: must be a number\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"end_ch\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"end_ch: Range:1-14\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"end_ch: can't be less than start_ch\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"end_ch: must be a number\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@WIFI_COUNTRY_POLICY_AUTO = common dso_local global i32 0, align 4
@WIFI_COUNTRY_POLICY_MANUAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"policy: must be 0 or 1\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"policy: must be a number\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"\0A country_cfg:\09cc:\22%s\22\09schan:%d\09nchan:%d\09policy:%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Unable to set country info\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Table not found!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @wifi_setcountry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_setcountry(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @lua_istable(i32* %12, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %240

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_getfield(i32* %16, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_isnil(i32* %18, i32 -1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %86, label %21

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @lua_isstring(i32* %22, i32 -1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %82

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @luaL_checklstring(i32* %26, i32 -1, i64* %4)
  store i8* %27, i8** %8, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %29, 2
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isalpha(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @isalpha(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %37, %31, %25
  %44 = phi i1 [ false, %31 ], [ false, %25 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @luaL_argcheck(i32* %28, i32 %45, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @memcpy(i32* %48, i8* %49, i64 %50)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 97
  br i1 %56, label %57, label %66

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 32
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %57, %43
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %70, 97
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 32
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %72, %66
  br label %85

82:                                               ; preds = %21
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @luaL_argerror(i32* %83, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %84, i32* %2, align 4
  br label %244

85:                                               ; preds = %81
  br label %96

86:                                               ; preds = %15
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 67, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 78, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %86, %85
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @lua_pop(i32* %97, i32 1)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @lua_getfield(i32* %99, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @lua_isnil(i32* %101, i32 -1)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %128, label %104

104:                                              ; preds = %96
  %105 = load i32*, i32** %3, align 8
  %106 = call i64 @lua_isnumber(i32* %105, i32 -1)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load i32*, i32** %3, align 8
  %110 = call i64 @luaL_checknumber(i32* %109, i32 -1)
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %5, align 4
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* %5, align 4
  %114 = icmp sge i32 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* %5, align 4
  %117 = icmp sle i32 %116, 14
  br label %118

118:                                              ; preds = %115, %108
  %119 = phi i1 [ false, %108 ], [ %117, %115 ]
  %120 = zext i1 %119 to i32
  %121 = call i32 @luaL_argcheck(i32* %112, i32 %120, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* %5, align 4
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %122, i32* %123, align 8
  br label %127

124:                                              ; preds = %104
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @luaL_argerror(i32* %125, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %118
  br label %130

128:                                              ; preds = %96
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %128, %127
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @lua_pop(i32* %131, i32 1)
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @lua_getfield(i32* %133, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @lua_isnil(i32* %135, i32 -1)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %173, label %138

138:                                              ; preds = %130
  %139 = load i32*, i32** %3, align 8
  %140 = call i64 @lua_isnumber(i32* %139, i32 -1)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %169

142:                                              ; preds = %138
  %143 = load i32*, i32** %3, align 8
  %144 = call i64 @luaL_checknumber(i32* %143, i32 -1)
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %6, align 4
  %146 = load i32*, i32** %3, align 8
  %147 = load i32, i32* %6, align 4
  %148 = icmp sge i32 %147, 1
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, i32* %6, align 4
  %151 = icmp sle i32 %150, 14
  br label %152

152:                                              ; preds = %149, %142
  %153 = phi i1 [ false, %142 ], [ %151, %149 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @luaL_argcheck(i32* %146, i32 %154, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %156 = load i32*, i32** %3, align 8
  %157 = load i32, i32* %6, align 4
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp sge i32 %157, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @luaL_argcheck(i32* %156, i32 %161, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %163 = load i32, i32* %6, align 4
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %163, %165
  %167 = add nsw i32 %166, 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 %167, i32* %168, align 4
  br label %172

169:                                              ; preds = %138
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 @luaL_argerror(i32* %170, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %152
  br label %179

173:                                              ; preds = %130
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 13, %175
  %177 = add nsw i32 %176, 1
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %172
  %180 = load i32*, i32** %3, align 8
  %181 = call i32 @lua_pop(i32* %180, i32 1)
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @lua_getfield(i32* %182, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @lua_isnil(i32* %184, i32 -1)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %213, label %187

187:                                              ; preds = %179
  %188 = load i32*, i32** %3, align 8
  %189 = call i64 @lua_isnumber(i32* %188, i32 -1)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %187
  %192 = load i32*, i32** %3, align 8
  %193 = call i64 @luaL_checknumber(i32* %192, i32 -1)
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %9, align 4
  %195 = load i32*, i32** %3, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @WIFI_COUNTRY_POLICY_AUTO, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %191
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @WIFI_COUNTRY_POLICY_MANUAL, align 4
  %202 = icmp eq i32 %200, %201
  br label %203

203:                                              ; preds = %199, %191
  %204 = phi i1 [ true, %191 ], [ %202, %199 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @luaL_argcheck(i32* %195, i32 %205, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %207 = load i32, i32* %9, align 4
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32 %207, i32* %208, align 8
  br label %212

209:                                              ; preds = %187
  %210 = load i32*, i32** %3, align 8
  %211 = call i32 @luaL_argerror(i32* %210, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %203
  br label %216

213:                                              ; preds = %179
  %214 = load i32, i32* @WIFI_COUNTRY_POLICY_AUTO, align 4
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32 %214, i32* %215, align 8
  br label %216

216:                                              ; preds = %213, %212
  %217 = load i32*, i32** %3, align 8
  %218 = call i32 @lua_pop(i32* %217, i32 1)
  %219 = load i32*, i32** %3, align 8
  %220 = call i32 @lua_pop(i32* %219, i32 1)
  %221 = call i32 @wifi_set_country(%struct.TYPE_3__* %7)
  store i32 %221, i32* %10, align 4
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @WIFI_DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i32* %223, i32 %225, i32 %227, i32 %229)
  %231 = load i32, i32* %10, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %236

233:                                              ; preds = %216
  %234 = load i32*, i32** %3, align 8
  %235 = call i32 @lua_pushboolean(i32* %234, i32 1)
  br label %239

236:                                              ; preds = %216
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 @luaL_error(i32* %237, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  store i32 %238, i32* %2, align 4
  br label %244

239:                                              ; preds = %233
  br label %243

240:                                              ; preds = %1
  %241 = load i32*, i32** %3, align 8
  %242 = call i32 @luaL_argerror(i32* %241, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  store i32 %242, i32* %2, align 4
  br label %244

243:                                              ; preds = %239
  store i32 1, i32* %2, align 4
  br label %244

244:                                              ; preds = %243, %240, %236, %82
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @lua_istable(i32*, i32) #2

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #2

declare dso_local i32 @lua_isnil(i32*, i32) #2

declare dso_local i64 @lua_isstring(i32*, i32) #2

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #2

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #2

declare dso_local i64 @isalpha(i8 signext) #2

declare dso_local i32 @memcpy(i32*, i8*, i64) #2

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #2

declare dso_local i32 @lua_pop(i32*, i32) #2

declare dso_local i64 @lua_isnumber(i32*, i32) #2

declare dso_local i64 @luaL_checknumber(i32*, i32) #2

declare dso_local i32 @wifi_set_country(%struct.TYPE_3__*) #2

declare dso_local i32 @WIFI_DBG(i8*, i32*, i32, i32, i32) #2

declare dso_local i32 @lua_pushboolean(i32*, i32) #2

declare dso_local i32 @luaL_error(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
