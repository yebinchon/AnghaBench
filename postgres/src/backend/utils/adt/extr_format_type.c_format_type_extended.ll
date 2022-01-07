; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_format_type.c_format_type_extended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_format_type.c_format_type_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8, i32, i32, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@FORMAT_TYPE_ALLOW_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@TYPEOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"???[]\00", align 1
@FORMAT_TYPE_TYPEMOD_GIVEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"double precision\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"smallint\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"bigint\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"time without time zone\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"time with time zone\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"timestamp without time zone\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"timestamp with time zone\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"bit varying\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"character varying\00", align 1
@FORMAT_TYPE_FORCE_QUALIFY = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"%s[]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_type_extended(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @InvalidOid, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FORMAT_TYPE_ALLOW_INVALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i8* @pstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %4, align 8
  br label %294

26:                                               ; preds = %19, %3
  %27 = load i32, i32* @TYPEOID, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @ObjectIdGetDatum(i64 %28)
  %30 = call i32 @SearchSysCache1(i32 %27, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @HeapTupleIsValid(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FORMAT_TYPE_ALLOW_INVALID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i8* @pstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %4, align 8
  br label %294

41:                                               ; preds = %34
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @GETSTRUCT(i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %9, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @InvalidOid, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %46
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8, i8* %58, align 8
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 112
  br i1 %61, label %62, label %89

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ReleaseSysCache(i32 %63)
  %65 = load i32, i32* @TYPEOID, align 4
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @ObjectIdGetDatum(i64 %66)
  %68 = call i32 @SearchSysCache1(i32 %65, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @HeapTupleIsValid(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @FORMAT_TYPE_ALLOW_INVALID, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i8* @pstrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %78, i8** %4, align 8
  br label %294

79:                                               ; preds = %72
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @elog(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @GETSTRUCT(i32 %85)
  %87 = inttoptr i64 %86 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %87, %struct.TYPE_2__** %9, align 8
  %88 = load i64, i64* %10, align 8
  store i64 %88, i64* %5, align 8
  store i32 1, i32* %11, align 4
  br label %90

89:                                               ; preds = %56, %46
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @FORMAT_TYPE_TYPEMOD_GIVEN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = icmp sge i32 %96, 0
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi i1 [ false, %90 ], [ %97, %95 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %13, align 4
  store i8* null, i8** %12, align 8
  %101 = load i64, i64* %5, align 8
  switch i64 %101, label %248 [
    i64 143, label %102
    i64 142, label %121
    i64 141, label %123
    i64 140, label %142
    i64 139, label %144
    i64 138, label %146
    i64 137, label %148
    i64 136, label %150
    i64 134, label %152
    i64 135, label %164
    i64 133, label %176
    i64 130, label %188
    i64 132, label %200
    i64 131, label %212
    i64 129, label %224
    i64 128, label %236
  ]

102:                                              ; preds = %98
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @printTypmod(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %109)
  store i8* %110, i8** %12, align 8
  br label %120

111:                                              ; preds = %102
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @FORMAT_TYPE_TYPEMOD_GIVEN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %119

117:                                              ; preds = %111
  %118 = call i8* @pstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %118, i8** %12, align 8
  br label %119

119:                                              ; preds = %117, %116
  br label %120

120:                                              ; preds = %119, %105
  br label %248

121:                                              ; preds = %98
  %122 = call i8* @pstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8* %122, i8** %12, align 8
  br label %248

123:                                              ; preds = %98
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @printTypmod(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %127, i32 %130)
  store i8* %131, i8** %12, align 8
  br label %141

132:                                              ; preds = %123
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @FORMAT_TYPE_TYPEMOD_GIVEN, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %140

138:                                              ; preds = %132
  %139 = call i8* @pstrdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i8* %139, i8** %12, align 8
  br label %140

140:                                              ; preds = %138, %137
  br label %141

141:                                              ; preds = %140, %126
  br label %248

142:                                              ; preds = %98
  %143 = call i8* @pstrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i8* %143, i8** %12, align 8
  br label %248

144:                                              ; preds = %98
  %145 = call i8* @pstrdup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i8* %145, i8** %12, align 8
  br label %248

146:                                              ; preds = %98
  %147 = call i8* @pstrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i8* %147, i8** %12, align 8
  br label %248

148:                                              ; preds = %98
  %149 = call i8* @pstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i8* %149, i8** %12, align 8
  br label %248

150:                                              ; preds = %98
  %151 = call i8* @pstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i8* %151, i8** %12, align 8
  br label %248

152:                                              ; preds = %98
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @printTypmod(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %156, i32 %159)
  store i8* %160, i8** %12, align 8
  br label %163

161:                                              ; preds = %152
  %162 = call i8* @pstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  store i8* %162, i8** %12, align 8
  br label %163

163:                                              ; preds = %161, %155
  br label %248

164:                                              ; preds = %98
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @printTypmod(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %168, i32 %171)
  store i8* %172, i8** %12, align 8
  br label %175

173:                                              ; preds = %164
  %174 = call i8* @pstrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  store i8* %174, i8** %12, align 8
  br label %175

175:                                              ; preds = %173, %167
  br label %248

176:                                              ; preds = %98
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @printTypmod(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %180, i32 %183)
  store i8* %184, i8** %12, align 8
  br label %187

185:                                              ; preds = %176
  %186 = call i8* @pstrdup(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  store i8* %186, i8** %12, align 8
  br label %187

187:                                              ; preds = %185, %179
  br label %248

188:                                              ; preds = %98
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @printTypmod(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %192, i32 %195)
  store i8* %196, i8** %12, align 8
  br label %199

197:                                              ; preds = %188
  %198 = call i8* @pstrdup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  store i8* %198, i8** %12, align 8
  br label %199

199:                                              ; preds = %197, %191
  br label %248

200:                                              ; preds = %98
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @printTypmod(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %204, i32 %207)
  store i8* %208, i8** %12, align 8
  br label %211

209:                                              ; preds = %200
  %210 = call i8* @pstrdup(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  store i8* %210, i8** %12, align 8
  br label %211

211:                                              ; preds = %209, %203
  br label %248

212:                                              ; preds = %98
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load i32, i32* %6, align 4
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @printTypmod(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %216, i32 %219)
  store i8* %220, i8** %12, align 8
  br label %223

221:                                              ; preds = %212
  %222 = call i8* @pstrdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  store i8* %222, i8** %12, align 8
  br label %223

223:                                              ; preds = %221, %215
  br label %248

224:                                              ; preds = %98
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @printTypmod(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %228, i32 %231)
  store i8* %232, i8** %12, align 8
  br label %235

233:                                              ; preds = %224
  %234 = call i8* @pstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  store i8* %234, i8** %12, align 8
  br label %235

235:                                              ; preds = %233, %227
  br label %248

236:                                              ; preds = %98
  %237 = load i32, i32* %13, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = load i32, i32* %6, align 4
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @printTypmod(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %240, i32 %243)
  store i8* %244, i8** %12, align 8
  br label %247

245:                                              ; preds = %236
  %246 = call i8* @pstrdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  store i8* %246, i8** %12, align 8
  br label %247

247:                                              ; preds = %245, %239
  br label %248

248:                                              ; preds = %98, %247, %235, %223, %211, %199, %187, %175, %163, %150, %148, %146, %144, %142, %141, %121, %120
  %249 = load i8*, i8** %12, align 8
  %250 = icmp eq i8* %249, null
  br i1 %250, label %251, label %284

251:                                              ; preds = %248
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* @FORMAT_TYPE_FORCE_QUALIFY, align 4
  %254 = and i32 %252, %253
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load i64, i64* %5, align 8
  %258 = call i64 @TypeIsVisible(i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i8* null, i8** %14, align 8
  br label %266

261:                                              ; preds = %256, %251
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = call i8* @get_namespace_name_or_temp(i32 %264)
  store i8* %265, i8** %14, align 8
  br label %266

266:                                              ; preds = %261, %260
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = call i8* @NameStr(i32 %269)
  store i8* %270, i8** %15, align 8
  %271 = load i8*, i8** %14, align 8
  %272 = load i8*, i8** %15, align 8
  %273 = call i8* @quote_qualified_identifier(i8* %271, i8* %272)
  store i8* %273, i8** %12, align 8
  %274 = load i32, i32* %13, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %266
  %277 = load i8*, i8** %12, align 8
  %278 = load i32, i32* %6, align 4
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @printTypmod(i8* %277, i32 %278, i32 %281)
  store i8* %282, i8** %12, align 8
  br label %283

283:                                              ; preds = %276, %266
  br label %284

284:                                              ; preds = %283, %248
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i8*, i8** %12, align 8
  %289 = call i8* @psprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %288)
  store i8* %289, i8** %12, align 8
  br label %290

290:                                              ; preds = %287, %284
  %291 = load i32, i32* %8, align 4
  %292 = call i32 @ReleaseSysCache(i32 %291)
  %293 = load i8*, i8** %12, align 8
  store i8* %293, i8** %4, align 8
  br label %294

294:                                              ; preds = %290, %77, %39, %24
  %295 = load i8*, i8** %4, align 8
  ret i8* %295
}

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i8* @printTypmod(i8*, i32, i32) #1

declare dso_local i64 @TypeIsVisible(i64) #1

declare dso_local i8* @get_namespace_name_or_temp(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i8* @quote_qualified_identifier(i8*, i8*) #1

declare dso_local i8* @psprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
