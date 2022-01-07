; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ads1115.c_ads1115_lua_setting.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ads1115.c_ads1115_lua_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"invalid number of arguments to 'setting'\00", align 1
@metatable_name = common dso_local global i32 0, align 4
@ADS1115_PGA_6_144V = common dso_local global i32 0, align 4
@ADS1115_PGA_4_096V = common dso_local global i32 0, align 4
@ADS1115_PGA_2_048V = common dso_local global i32 0, align 4
@ADS1115_PGA_1_024V = common dso_local global i32 0, align 4
@ADS1115_PGA_0_512V = common dso_local global i32 0, align 4
@ADS1115_PGA_0_256V = common dso_local global i32 0, align 4
@unexpected_value = common dso_local global i8* null, align 8
@ADS1115_ADS1115 = common dso_local global i64 0, align 8
@ADS1115_MODE_SINGLE = common dso_local global i32 0, align 4
@ADS1115_MODE_CONTIN = common dso_local global i32 0, align 4
@ADS1115_OS_SINGLE = common dso_local global i32 0, align 4
@ADS1115_OS_NON = common dso_local global i32 0, align 4
@ADS1115_CQUE_NONE = common dso_local global i32 0, align 4
@ADS1115_CQUE_1CONV = common dso_local global i32 0, align 4
@ADS1115_CQUE_2CONV = common dso_local global i32 0, align 4
@ADS1115_CQUE_4CONV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"threshold_low > threshold_hi\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ads1115 low: %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ads1115 hi : %04x\0A\00", align 1
@ADS1115_POINTER_THRESH_LOW = common dso_local global i32 0, align 4
@ADS1115_POINTER_THRESH_HI = common dso_local global i32 0, align 4
@ADS1115_CMODE_TRAD = common dso_local global i32 0, align 4
@ADS1115_CMODE_WINDOW = common dso_local global i32 0, align 4
@ADS1115_CPOL_ACTVLOW = common dso_local global i32 0, align 4
@ADS1115_CLAT_NONLAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"ads1115 config: %04x\0A\00", align 1
@ADS1115_POINTER_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ads1115_lua_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1115_lua_setting(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_gettop(i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 5
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 6
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 8
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 9
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @luaL_error(i32* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26, %23, %20, %1
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @metatable_name, align 4
  %35 = call %struct.TYPE_3__* @luaL_checkudata(i32* %33, i32 1, i32 %34)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %4, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @luaL_checkinteger(i32* %36, i32 2)
  store i32 %37, i32* %5, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ADS1115_PGA_6_144V, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %62, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ADS1115_PGA_4_096V, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ADS1115_PGA_2_048V, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ADS1115_PGA_1_024V, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @ADS1115_PGA_0_512V, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @ADS1115_PGA_0_256V, align 4
  %61 = icmp eq i32 %59, %60
  br label %62

62:                                               ; preds = %58, %54, %50, %46, %42, %32
  %63 = phi i1 [ true, %54 ], [ true, %50 ], [ true, %46 ], [ true, %42 ], [ true, %32 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = load i8*, i8** @unexpected_value, align 8
  %66 = call i32 @luaL_argcheck(i32* %38, i32 %64, i32 2, i8* %65)
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @luaL_checkinteger(i32* %70, i32 3)
  store i32 %71, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ADS1115_ADS1115, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %62
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %87 [
    i32 129, label %79
    i32 138, label %80
    i32 135, label %81
    i32 131, label %82
    i32 140, label %83
    i32 136, label %84
    i32 133, label %85
    i32 130, label %86
  ]

79:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  br label %91

80:                                               ; preds = %77
  store i32 32, i32* %7, align 4
  br label %91

81:                                               ; preds = %77
  store i32 64, i32* %7, align 4
  br label %91

82:                                               ; preds = %77
  store i32 96, i32* %7, align 4
  br label %91

83:                                               ; preds = %77
  store i32 128, i32* %7, align 4
  br label %91

84:                                               ; preds = %77
  store i32 160, i32* %7, align 4
  br label %91

85:                                               ; preds = %77
  store i32 192, i32* %7, align 4
  br label %91

86:                                               ; preds = %77
  store i32 224, i32* %7, align 4
  br label %91

87:                                               ; preds = %77
  %88 = load i32*, i32** %2, align 8
  %89 = load i8*, i8** @unexpected_value, align 8
  %90 = call i32 @luaL_argerror(i32* %88, i32 3, i8* %89)
  br label %91

91:                                               ; preds = %87, %86, %85, %84, %83, %82, %81, %80, %79
  br label %106

92:                                               ; preds = %62
  %93 = load i32, i32* %6, align 4
  switch i32 %93, label %101 [
    i32 140, label %94
    i32 136, label %95
    i32 132, label %96
    i32 128, label %97
    i32 139, label %98
    i32 137, label %99
    i32 134, label %100
  ]

94:                                               ; preds = %92
  store i32 0, i32* %7, align 4
  br label %105

95:                                               ; preds = %92
  store i32 32, i32* %7, align 4
  br label %105

96:                                               ; preds = %92
  store i32 64, i32* %7, align 4
  br label %105

97:                                               ; preds = %92
  store i32 96, i32* %7, align 4
  br label %105

98:                                               ; preds = %92
  store i32 128, i32* %7, align 4
  br label %105

99:                                               ; preds = %92
  store i32 160, i32* %7, align 4
  br label %105

100:                                              ; preds = %92
  store i32 192, i32* %7, align 4
  br label %105

101:                                              ; preds = %92
  %102 = load i32*, i32** %2, align 8
  %103 = load i8*, i8** @unexpected_value, align 8
  %104 = call i32 @luaL_argerror(i32* %102, i32 3, i8* %103)
  br label %105

105:                                              ; preds = %101, %100, %99, %98, %97, %96, %95, %94
  br label %106

106:                                              ; preds = %105, %91
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 @luaL_checkinteger(i32* %113, i32 4)
  store i32 %114, i32* %8, align 4
  %115 = load i32*, i32** %2, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @IS_CHANNEL_VALID(i32 %116)
  %118 = load i8*, i8** @unexpected_value, align 8
  %119 = call i32 @luaL_argcheck(i32* %115, i32 %117, i32 4, i8* %118)
  %120 = load i32*, i32** %2, align 8
  %121 = call i32 @luaL_checkinteger(i32* %120, i32 5)
  store i32 %121, i32* %9, align 4
  %122 = load i32*, i32** %2, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @ADS1115_MODE_SINGLE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %106
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @ADS1115_MODE_CONTIN, align 4
  %129 = icmp eq i32 %127, %128
  br label %130

130:                                              ; preds = %126, %106
  %131 = phi i1 [ true, %106 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  %133 = load i8*, i8** @unexpected_value, align 8
  %134 = call i32 @luaL_argcheck(i32* %122, i32 %132, i32 5, i8* %133)
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @ADS1115_MODE_SINGLE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %130
  %142 = load i32, i32* @ADS1115_OS_SINGLE, align 4
  br label %145

143:                                              ; preds = %130
  %144 = load i32, i32* @ADS1115_OS_NON, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* @ADS1115_CQUE_NONE, align 4
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %3, align 4
  %149 = icmp sgt i32 %148, 5
  br i1 %149, label %150, label %220

150:                                              ; preds = %145
  %151 = load i32*, i32** %2, align 8
  %152 = call i32 @luaL_checkinteger(i32* %151, i32 6)
  store i32 %152, i32* %11, align 4
  %153 = load i32*, i32** %2, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @ADS1115_CQUE_1CONV, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %165, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @ADS1115_CQUE_2CONV, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @ADS1115_CQUE_4CONV, align 4
  %164 = icmp eq i32 %162, %163
  br label %165

165:                                              ; preds = %161, %157, %150
  %166 = phi i1 [ true, %157 ], [ true, %150 ], [ %164, %161 ]
  %167 = zext i1 %166 to i32
  %168 = load i8*, i8** @unexpected_value, align 8
  %169 = call i32 @luaL_argcheck(i32* %153, i32 %167, i32 6, i8* %168)
  store i32 32767, i32* %12, align 4
  store i32 32768, i32* %13, align 4
  %170 = load i32, i32* %3, align 4
  %171 = icmp sgt i32 %170, 6
  br i1 %171, label %172, label %197

172:                                              ; preds = %165
  %173 = load i32*, i32** %2, align 8
  %174 = call i32 @luaL_checkinteger(i32* %173, i32 7)
  store i32 %174, i32* %12, align 4
  %175 = load i32*, i32** %2, align 8
  %176 = call i32 @luaL_checkinteger(i32* %175, i32 8)
  store i32 %176, i32* %13, align 4
  %177 = load i32*, i32** %2, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp sle i64 %179, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @luaL_argcheck(i32* %177, i32 %183, i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %185 = load i32*, i32** %2, align 8
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @get_value(i32 %186, i32 %187, i32* %12)
  %189 = load i8*, i8** @unexpected_value, align 8
  %190 = call i32 @luaL_argcheck(i32* %185, i32 %188, i32 7, i8* %189)
  %191 = load i32*, i32** %2, align 8
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @get_value(i32 %192, i32 %193, i32* %13)
  %195 = load i8*, i8** @unexpected_value, align 8
  %196 = call i32 @luaL_argcheck(i32* %191, i32 %194, i32 8, i8* %195)
  br label %197

197:                                              ; preds = %172, %165
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 6
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @NODE_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %13, align 4
  %207 = call i32 @NODE_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %206)
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @ADS1115_POINTER_THRESH_LOW, align 4
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @write_reg(i32 %210, i32 %211, i32 %212)
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @ADS1115_POINTER_THRESH_HI, align 4
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @write_reg(i32 %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %197, %145
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 7
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @ADS1115_CMODE_TRAD, align 4
  store i32 %224, i32* %14, align 4
  %225 = load i32, i32* %3, align 4
  %226 = icmp eq i32 %225, 9
  br i1 %226, label %227, label %243

227:                                              ; preds = %220
  %228 = load i32*, i32** %2, align 8
  %229 = call i32 @luaL_checkinteger(i32* %228, i32 9)
  store i32 %229, i32* %14, align 4
  %230 = load i32*, i32** %2, align 8
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* @ADS1115_CMODE_WINDOW, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %227
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* @ADS1115_CMODE_TRAD, align 4
  %237 = icmp eq i32 %235, %236
  br label %238

238:                                              ; preds = %234, %227
  %239 = phi i1 [ true, %227 ], [ %237, %234 ]
  %240 = zext i1 %239 to i32
  %241 = load i8*, i8** @unexpected_value, align 8
  %242 = call i32 @luaL_argcheck(i32* %230, i32 %240, i32 9, i8* %241)
  br label %243

243:                                              ; preds = %238, %220
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %8, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* %5, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* %9, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* %7, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* %14, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @ADS1115_CPOL_ACTVLOW, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @ADS1115_CLAT_NONLAT, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* %11, align 4
  %260 = or i32 %258, %259
  store i32 %260, i32* %15, align 4
  %261 = load i32, i32* %15, align 4
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 8
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @NODE_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %266)
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 9
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @ADS1115_POINTER_CONFIG, align 4
  %272 = load i32, i32* %15, align 4
  %273 = call i32 @write_reg(i32 %270, i32 %271, i32 %272)
  ret i32 0
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @luaL_checkudata(i32*, i32, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @IS_CHANNEL_VALID(i32) #1

declare dso_local i32 @get_value(i32, i32, i32*) #1

declare dso_local i32 @NODE_DBG(i8*, i32) #1

declare dso_local i32 @write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
