; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_datum_to_jsonb.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_datum_to_jsonb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_25__*, i8* }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_23__ = type { i32 }

@jbvNull = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"key value must be scalar, not array, composite, or json\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@jbvString = common dso_local global i8* null, align 8
@jbvBool = common dso_local global i32 0, align 4
@jbvNumeric = common dso_local global i32 0, align 4
@numeric_in = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@DATEOID = common dso_local global i32 0, align 4
@TIMESTAMPOID = common dso_local global i32 0, align 4
@TIMESTAMPTZOID = common dso_local global i32 0, align 4
@jsonb_in_object_start = common dso_local global i32 0, align 4
@jsonb_in_array_start = common dso_local global i32 0, align 4
@jsonb_in_object_end = common dso_local global i32 0, align 4
@jsonb_in_array_end = common dso_local global i32 0, align 4
@jsonb_in_scalar = common dso_local global i32 0, align 4
@jsonb_in_object_field_start = common dso_local global i32 0, align 4
@WJB_DONE = common dso_local global i32 0, align 4
@WJB_END_ARRAY = common dso_local global i32 0, align 4
@WJB_END_OBJECT = common dso_local global i32 0, align 4
@WJB_BEGIN_ARRAY = common dso_local global i32 0, align 4
@WJB_BEGIN_OBJECT = common dso_local global i32 0, align 4
@WJB_ELEM = common dso_local global i32 0, align 4
@WJB_KEY = common dso_local global i32 0, align 4
@WJB_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"unexpected parent of nested structure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_22__*, i32, i32, i32)* @datum_to_jsonb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datum_to_jsonb(i32 %0, i32 %1, %struct.TYPE_22__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_24__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_21__, align 8
  %25 = alloca %struct.TYPE_21__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %26 = call i32 (...) @check_stack_depth()
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %6
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load i32, i32* @jbvNull, align 4
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  br label %321

37:                                               ; preds = %6
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 139
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 137
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 135
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 134
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 133
  br i1 %54, label %55, label %61

55:                                               ; preds = %52, %49, %46, %43, %40
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %56, i32 %59)
  br label %320

61:                                               ; preds = %52, %37
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 133
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @OidFunctionCall1(i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %10, align 4
  switch i32 %69, label %302 [
    i32 139, label %70
    i32 137, label %74
    i32 138, label %78
    i32 132, label %107
    i32 136, label %170
    i32 131, label %188
    i32 130, label %206
    i32 133, label %224
    i32 135, label %224
    i32 134, label %247
  ]

70:                                               ; preds = %68
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %73 = call i32 @array_to_jsonb_internal(i32 %71, %struct.TYPE_22__* %72)
  br label %319

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %77 = call i32 @composite_to_jsonb(i32 %75, %struct.TYPE_22__* %76)
  br label %319

78:                                               ; preds = %68
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @DatumGetBool(i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  store i8* %86, i8** %13, align 8
  %87 = load i8*, i8** @jbvString, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = call i8* @strlen(i8* %90)
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  br label %106

99:                                               ; preds = %78
  %100 = load i32, i32* @jbvBool, align 4
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @DatumGetBool(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %99, %81
  br label %319

107:                                              ; preds = %68
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i8* @OidOutputFunctionCall(i32 %108, i32 %109)
  store i8* %110, i8** %13, align 8
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load i8*, i8** @jbvString, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 %115, i32* %116, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = call i8* @strlen(i8* %117)
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  br label %169

126:                                              ; preds = %107
  %127 = load i8*, i8** %13, align 8
  %128 = call i32* @strchr(i8* %127, i8 signext 78)
  %129 = icmp ne i32* %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %13, align 8
  %132 = call i32* @strchr(i8* %131, i8 signext 110)
  %133 = icmp ne i32* %132, null
  br label %134

134:                                              ; preds = %130, %126
  %135 = phi i1 [ true, %126 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @jbvNumeric, align 4
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 %140, i32* %141, align 8
  %142 = load i32, i32* @numeric_in, align 4
  %143 = load i8*, i8** %13, align 8
  %144 = call i32 @CStringGetDatum(i8* %143)
  %145 = load i32, i32* @InvalidOid, align 4
  %146 = call i32 @ObjectIdGetDatum(i32 %145)
  %147 = call i32 @Int32GetDatum(i32 -1)
  %148 = call i32 @DirectFunctionCall3(i32 %142, i32 %144, i32 %146, i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = call i32 @DatumGetNumeric(i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = call i32 @pfree(i8* %153)
  br label %168

155:                                              ; preds = %134
  %156 = load i8*, i8** @jbvString, align 8
  %157 = ptrtoint i8* %156 to i32
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = call i8* @strlen(i8* %159)
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  %164 = load i8*, i8** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  store i8* %164, i8** %167, align 8
  br label %168

168:                                              ; preds = %155, %139
  br label %169

169:                                              ; preds = %168, %113
  br label %319

170:                                              ; preds = %68
  %171 = load i8*, i8** @jbvString, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 %172, i32* %173, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @DATEOID, align 4
  %176 = call i8* @JsonEncodeDateTime(i32* null, i32 %174, i32 %175, i32* null)
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  store i8* %176, i8** %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @strlen(i8* %183)
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  store i8* %184, i8** %187, align 8
  br label %319

188:                                              ; preds = %68
  %189 = load i8*, i8** @jbvString, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 %190, i32* %191, align 8
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @TIMESTAMPOID, align 4
  %194 = call i8* @JsonEncodeDateTime(i32* null, i32 %192, i32 %193, i32* null)
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  store i8* %194, i8** %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i8* @strlen(i8* %201)
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  store i8* %202, i8** %205, align 8
  br label %319

206:                                              ; preds = %68
  %207 = load i8*, i8** @jbvString, align 8
  %208 = ptrtoint i8* %207 to i32
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 %208, i32* %209, align 8
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @TIMESTAMPTZOID, align 4
  %212 = call i8* @JsonEncodeDateTime(i32* null, i32 %210, i32 %211, i32* null)
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  store i8* %212, i8** %215, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i8* @strlen(i8* %219)
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  store i8* %220, i8** %223, align 8
  br label %319

224:                                              ; preds = %68, %68
  %225 = load i32, i32* %7, align 4
  %226 = call i32* @DatumGetTextPP(i32 %225)
  store i32* %226, i32** %20, align 8
  %227 = load i32*, i32** %20, align 8
  %228 = call i32* @makeJsonLexContext(i32* %227, i32 1)
  store i32* %228, i32** %18, align 8
  %229 = call i32 @memset(%struct.TYPE_24__* %19, i32 0, i32 32)
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %231 = bitcast %struct.TYPE_22__* %230 to i8*
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 6
  store i8* %231, i8** %232, align 8
  %233 = load i32, i32* @jsonb_in_object_start, align 4
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 5
  store i32 %233, i32* %234, align 4
  %235 = load i32, i32* @jsonb_in_array_start, align 4
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 4
  store i32 %235, i32* %236, align 8
  %237 = load i32, i32* @jsonb_in_object_end, align 4
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  store i32 %237, i32* %238, align 4
  %239 = load i32, i32* @jsonb_in_array_end, align 4
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 2
  store i32 %239, i32* %240, align 8
  %241 = load i32, i32* @jsonb_in_scalar, align 4
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  store i32 %241, i32* %242, align 4
  %243 = load i32, i32* @jsonb_in_object_field_start, align 4
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  store i32 %243, i32* %244, align 8
  %245 = load i32*, i32** %18, align 8
  %246 = call i32 @pg_parse_json(i32* %245, %struct.TYPE_24__* %19)
  br label %319

247:                                              ; preds = %68
  %248 = load i32, i32* %7, align 4
  %249 = call %struct.TYPE_23__* @DatumGetJsonbP(i32 %248)
  store %struct.TYPE_23__* %249, %struct.TYPE_23__** %21, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 0
  %252 = call i32* @JsonbIteratorInit(i32* %251)
  store i32* %252, i32** %22, align 8
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %254 = call i32 @JB_ROOT_IS_SCALAR(%struct.TYPE_23__* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %247
  %257 = call i32 @JsonbIteratorNext(i32** %22, %struct.TYPE_21__* %15, i32 1)
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 129
  %261 = zext i1 %260 to i32
  %262 = call i32 @Assert(i32 %261)
  %263 = call i32 @JsonbIteratorNext(i32** %22, %struct.TYPE_21__* %15, i32 1)
  store i32 1, i32* %16, align 4
  br label %301

264:                                              ; preds = %247
  br label %265

265:                                              ; preds = %299, %264
  %266 = call i32 @JsonbIteratorNext(i32** %22, %struct.TYPE_21__* %15, i32 0)
  store i32 %266, i32* %23, align 4
  %267 = load i32, i32* @WJB_DONE, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %300

269:                                              ; preds = %265
  %270 = load i32, i32* %23, align 4
  %271 = load i32, i32* @WJB_END_ARRAY, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %285, label %273

273:                                              ; preds = %269
  %274 = load i32, i32* %23, align 4
  %275 = load i32, i32* @WJB_END_OBJECT, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %285, label %277

277:                                              ; preds = %273
  %278 = load i32, i32* %23, align 4
  %279 = load i32, i32* @WJB_BEGIN_ARRAY, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %23, align 4
  %283 = load i32, i32* @WJB_BEGIN_OBJECT, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %292

285:                                              ; preds = %281, %277, %273, %269
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 0
  %288 = load i32, i32* %23, align 4
  %289 = call i8* @pushJsonbValue(%struct.TYPE_25__** %287, i32 %288, %struct.TYPE_21__* null)
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 1
  store i8* %289, i8** %291, align 8
  br label %299

292:                                              ; preds = %281
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 0
  %295 = load i32, i32* %23, align 4
  %296 = call i8* @pushJsonbValue(%struct.TYPE_25__** %294, i32 %295, %struct.TYPE_21__* %15)
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 1
  store i8* %296, i8** %298, align 8
  br label %299

299:                                              ; preds = %292, %285
  br label %265

300:                                              ; preds = %265
  br label %301

301:                                              ; preds = %300, %256
  br label %319

302:                                              ; preds = %68
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* %7, align 4
  %305 = call i8* @OidOutputFunctionCall(i32 %303, i32 %304)
  store i8* %305, i8** %13, align 8
  %306 = load i8*, i8** @jbvString, align 8
  %307 = ptrtoint i8* %306 to i32
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i32 %307, i32* %308, align 8
  %309 = load i8*, i8** %13, align 8
  %310 = call i8* @strlen(i8* %309)
  %311 = call i8* @checkStringLen(i8* %310)
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 1
  store i8* %311, i8** %314, align 8
  %315 = load i8*, i8** %13, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 0
  store i8* %315, i8** %318, align 8
  br label %319

319:                                              ; preds = %302, %301, %224, %206, %188, %170, %169, %106, %74, %70
  br label %320

320:                                              ; preds = %319, %55
  br label %321

321:                                              ; preds = %320, %29
  %322 = load i32, i32* %8, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %334, label %324

324:                                              ; preds = %321
  %325 = load i32, i32* %16, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %334, label %327

327:                                              ; preds = %324
  %328 = load i32, i32* %10, align 4
  %329 = icmp sge i32 %328, 135
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i32, i32* %10, align 4
  %332 = icmp sle i32 %331, 133
  br i1 %332, label %333, label %334

333:                                              ; preds = %330
  br label %399

334:                                              ; preds = %330, %327, %324, %321
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_25__*, %struct.TYPE_25__** %336, align 8
  %338 = icmp eq %struct.TYPE_25__* %337, null
  br i1 %338, label %339, label %365

339:                                              ; preds = %334
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  store i32 129, i32* %340, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  store i32 1, i32* %343, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 1
  store i32 1, i32* %346, align 4
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 0
  %349 = load i32, i32* @WJB_BEGIN_ARRAY, align 4
  %350 = call i8* @pushJsonbValue(%struct.TYPE_25__** %348, i32 %349, %struct.TYPE_21__* %24)
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 1
  store i8* %350, i8** %352, align 8
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 0
  %355 = load i32, i32* @WJB_ELEM, align 4
  %356 = call i8* @pushJsonbValue(%struct.TYPE_25__** %354, i32 %355, %struct.TYPE_21__* %15)
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 1
  store i8* %356, i8** %358, align 8
  %359 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %359, i32 0, i32 0
  %361 = load i32, i32* @WJB_END_ARRAY, align 4
  %362 = call i8* @pushJsonbValue(%struct.TYPE_25__** %360, i32 %361, %struct.TYPE_21__* null)
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 1
  store i8* %362, i8** %364, align 8
  br label %398

365:                                              ; preds = %334
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 0
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 0
  store %struct.TYPE_21__* %369, %struct.TYPE_21__** %25, align 8
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  switch i32 %372, label %394 [
    i32 129, label %373
    i32 128, label %380
  ]

373:                                              ; preds = %365
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 0
  %376 = load i32, i32* @WJB_ELEM, align 4
  %377 = call i8* @pushJsonbValue(%struct.TYPE_25__** %375, i32 %376, %struct.TYPE_21__* %15)
  %378 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %378, i32 0, i32 1
  store i8* %377, i8** %379, align 8
  br label %397

380:                                              ; preds = %365
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 0
  %383 = load i32, i32* %12, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %380
  %386 = load i32, i32* @WJB_KEY, align 4
  br label %389

387:                                              ; preds = %380
  %388 = load i32, i32* @WJB_VALUE, align 4
  br label %389

389:                                              ; preds = %387, %385
  %390 = phi i32 [ %386, %385 ], [ %388, %387 ]
  %391 = call i8* @pushJsonbValue(%struct.TYPE_25__** %382, i32 %390, %struct.TYPE_21__* %15)
  %392 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %392, i32 0, i32 1
  store i8* %391, i8** %393, align 8
  br label %397

394:                                              ; preds = %365
  %395 = load i32, i32* @ERROR, align 4
  %396 = call i32 @elog(i32 %395, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %397

397:                                              ; preds = %394, %389, %373
  br label %398

398:                                              ; preds = %397, %339
  br label %399

399:                                              ; preds = %333, %398
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @OidFunctionCall1(i32, i32) #1

declare dso_local i32 @array_to_jsonb_internal(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @composite_to_jsonb(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @DirectFunctionCall3(i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @DatumGetNumeric(i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i8* @JsonEncodeDateTime(i32*, i32, i32, i32*) #1

declare dso_local i32* @DatumGetTextPP(i32) #1

declare dso_local i32* @makeJsonLexContext(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @pg_parse_json(i32*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @DatumGetJsonbP(i32) #1

declare dso_local i32* @JsonbIteratorInit(i32*) #1

declare dso_local i32 @JB_ROOT_IS_SCALAR(%struct.TYPE_23__*) #1

declare dso_local i32 @JsonbIteratorNext(i32**, %struct.TYPE_21__*, i32) #1

declare dso_local i8* @pushJsonbValue(%struct.TYPE_25__**, i32, %struct.TYPE_21__*) #1

declare dso_local i8* @checkStringLen(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
