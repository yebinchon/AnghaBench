; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_build_datatype.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_build_datatype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i64, %struct.TYPE_6__*, i32*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32* }
%struct.TYPE_8__ = type { i64, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"type \22%s\22 is only a shell\00", align 1
@PLPGSQL_TTYPE_SCALAR = common dso_local global i8* null, align 8
@PLPGSQL_TTYPE_REC = common dso_local global i64 0, align 8
@RECORDOID = common dso_local global i64 0, align 8
@PLPGSQL_TTYPE_PSEUDO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"unrecognized typtype: %d\00", align 1
@TYPECACHE_TUPDESC = common dso_local global i32 0, align 4
@TYPECACHE_DOMAIN_BASE_INFO = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"type %s is not composite\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, i32, i32, i32*)* @build_datatype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @build_datatype(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GETSTRUCT(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @NameStr(i32 %26)
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i32 @ereport(i32 %21, i32 %28)
  br label %30

30:                                               ; preds = %20, %4
  %31 = call i64 @palloc(i32 72)
  %32 = inttoptr i64 %31 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %10, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NameStr(i32 %35)
  %37 = call i32 @pstrdup(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %88 [
    i32 133, label %48
    i32 130, label %48
    i32 128, label %48
    i32 132, label %53
    i32 131, label %57
    i32 129, label %73
  ]

48:                                               ; preds = %30, %30, %30
  %49 = load i8*, i8** @PLPGSQL_TTYPE_SCALAR, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %94

53:                                               ; preds = %30
  %54 = load i64, i64* @PLPGSQL_TTYPE_REC, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %94

57:                                               ; preds = %30
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @type_is_rowtype(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i64, i64* @PLPGSQL_TTYPE_REC, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %72

67:                                               ; preds = %57
  %68 = load i8*, i8** @PLPGSQL_TTYPE_SCALAR, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %67, %63
  br label %94

73:                                               ; preds = %30
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RECORDOID, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i64, i64* @PLPGSQL_TTYPE_REC, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %87

83:                                               ; preds = %73
  %84 = load i64, i64* @PLPGSQL_TTYPE_PSEUDO, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %79
  br label %94

88:                                               ; preds = %30
  %89 = load i32, i32* @ERROR, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @elog(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %87, %72, %53, %48
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 10
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @OidIsValid(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %94
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @OidIsValid(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %118, %94
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 133
  br i1 %132, label %133, label %155

133:                                              ; preds = %128
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @OidIsValid(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  %147 = load i8, i8* %146, align 8
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 112
  br label %150

150:                                              ; preds = %144, %138, %133
  %151 = phi i1 [ false, %138 ], [ false, %133 ], [ %149, %144 ]
  %152 = zext i1 %151 to i32
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  br label %187

155:                                              ; preds = %128
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 131
  br i1 %159, label %160, label %183

160:                                              ; preds = %155
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i8, i8* %167, align 8
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 112
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @get_base_element_type(i32 %174)
  %176 = call i64 @OidIsValid(i32 %175)
  %177 = icmp ne i64 %176, 0
  br label %178

178:                                              ; preds = %171, %165, %160
  %179 = phi i1 [ false, %165 ], [ false, %160 ], [ %177, %171 ]
  %180 = zext i1 %179 to i32
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 8
  br label %186

183:                                              ; preds = %155
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 4
  store i32 0, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %178
  br label %187

187:                                              ; preds = %186, %150
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 8
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @PLPGSQL_TTYPE_REC, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %247

196:                                              ; preds = %187
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @RECORDOID, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %247

202:                                              ; preds = %196
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* @TYPECACHE_TUPDESC, align 4
  %207 = load i32, i32* @TYPECACHE_DOMAIN_BASE_INFO, align 4
  %208 = or i32 %206, %207
  %209 = call %struct.TYPE_6__* @lookup_type_cache(i64 %205, i32 %208)
  store %struct.TYPE_6__* %209, %struct.TYPE_6__** %11, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 131
  br i1 %213, label %214, label %220

214:                                              ; preds = %202
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @TYPECACHE_TUPDESC, align 4
  %219 = call %struct.TYPE_6__* @lookup_type_cache(i64 %217, i32 %218)
  store %struct.TYPE_6__* %219, %struct.TYPE_6__** %11, align 8
  br label %220

220:                                              ; preds = %214, %202
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = icmp eq i32* %223, null
  br i1 %224, label %225, label %235

225:                                              ; preds = %220
  %226 = load i32, i32* @ERROR, align 4
  %227 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %228 = call i32 @errcode(i32 %227)
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @format_type_be(i64 %231)
  %233 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %232)
  %234 = call i32 @ereport(i32 %226, i32 %233)
  br label %235

235:                                              ; preds = %225, %220
  %236 = load i32*, i32** %8, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 7
  store i32* %236, i32** %238, align 8
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 6
  store %struct.TYPE_6__* %239, %struct.TYPE_6__** %241, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 5
  store i64 %244, i64* %246, align 8
  br label %254

247:                                              ; preds = %196, %187
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 7
  store i32* null, i32** %249, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 6
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %251, align 8
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 5
  store i64 0, i64* %253, align 8
  br label %254

254:                                              ; preds = %247, %235
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  ret %struct.TYPE_7__* %255
}

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @type_is_rowtype(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @get_base_element_type(i32) #1

declare dso_local %struct.TYPE_6__* @lookup_type_cache(i64, i32) #1

declare dso_local i32 @format_type_be(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
