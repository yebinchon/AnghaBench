; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_is_type_an_array.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_is_type_an_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statement = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ECPGtype_information_cache*, i32 }
%struct.ECPGtype_information_cache = type { i32, i32, %struct.ECPGtype_information_cache* }
%struct.variable = type { i32 }

@ECPG_ARRAY_NOT_SET = common dso_local global i32 0, align 4
@BOOLOID = common dso_local global i32 0, align 4
@ECPG_ARRAY_NONE = common dso_local global i32 0, align 4
@ECPG_ARRAY_ERROR = common dso_local global i32 0, align 4
@BYTEAOID = common dso_local global i32 0, align 4
@CHAROID = common dso_local global i32 0, align 4
@NAMEOID = common dso_local global i32 0, align 4
@INT8OID = common dso_local global i32 0, align 4
@INT2OID = common dso_local global i32 0, align 4
@INT2VECTOROID = common dso_local global i32 0, align 4
@ECPG_ARRAY_VECTOR = common dso_local global i32 0, align 4
@INT4OID = common dso_local global i32 0, align 4
@REGPROCOID = common dso_local global i32 0, align 4
@TEXTOID = common dso_local global i32 0, align 4
@OIDOID = common dso_local global i32 0, align 4
@TIDOID = common dso_local global i32 0, align 4
@XIDOID = common dso_local global i32 0, align 4
@CIDOID = common dso_local global i32 0, align 4
@OIDVECTOROID = common dso_local global i32 0, align 4
@POINTOID = common dso_local global i32 0, align 4
@LSEGOID = common dso_local global i32 0, align 4
@PATHOID = common dso_local global i32 0, align 4
@BOXOID = common dso_local global i32 0, align 4
@POLYGONOID = common dso_local global i32 0, align 4
@LINEOID = common dso_local global i32 0, align 4
@FLOAT4OID = common dso_local global i32 0, align 4
@FLOAT8OID = common dso_local global i32 0, align 4
@UNKNOWNOID = common dso_local global i32 0, align 4
@CIRCLEOID = common dso_local global i32 0, align 4
@CASHOID = common dso_local global i32 0, align 4
@INETOID = common dso_local global i32 0, align 4
@CIDROID = common dso_local global i32 0, align 4
@BPCHAROID = common dso_local global i32 0, align 4
@VARCHAROID = common dso_local global i32 0, align 4
@DATEOID = common dso_local global i32 0, align 4
@TIMEOID = common dso_local global i32 0, align 4
@TIMESTAMPOID = common dso_local global i32 0, align 4
@TIMESTAMPTZOID = common dso_local global i32 0, align 4
@INTERVALOID = common dso_local global i32 0, align 4
@TIMETZOID = common dso_local global i32 0, align 4
@BITOID = common dso_local global i32 0, align 4
@VARBITOID = common dso_local global i32 0, align 4
@NUMERICOID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"select typlen from pg_type where oid= and typelem<>0\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"select typlen from pg_type where oid=%d and typelem<>0\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@ECPG_ARRAY_ARRAY = common dso_local global i32 0, align 4
@SQL3_CHARACTER = common dso_local global i64 0, align 8
@SQL3_CHARACTER_VARYING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"ecpg_is_type_an_array on line %d: type (%d); C (%d); array (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@not_an_array_in_ecpg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.statement*, %struct.variable*)* @ecpg_is_type_an_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecpg_is_type_an_array(i32 %0, %struct.statement* %1, %struct.variable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.statement*, align 8
  %7 = alloca %struct.variable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ECPGtype_information_cache*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.statement* %1, %struct.statement** %6, align 8
  store %struct.variable* %2, %struct.variable** %7, align 8
  %12 = load i32, i32* @ECPG_ARRAY_NOT_SET, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.statement*, %struct.statement** %6, align 8
  %14 = getelementptr inbounds %struct.statement, %struct.statement* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %16, align 8
  %18 = icmp eq %struct.ECPGtype_information_cache* %17, null
  br i1 %18, label %19, label %566

19:                                               ; preds = %3
  %20 = load %struct.statement*, %struct.statement** %6, align 8
  %21 = getelementptr inbounds %struct.statement, %struct.statement* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @BOOLOID, align 4
  %25 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %26 = load %struct.statement*, %struct.statement** %6, align 8
  %27 = getelementptr inbounds %struct.statement, %struct.statement* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %23, i32 %24, i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %697

33:                                               ; preds = %19
  %34 = load %struct.statement*, %struct.statement** %6, align 8
  %35 = getelementptr inbounds %struct.statement, %struct.statement* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* @BYTEAOID, align 4
  %39 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %40 = load %struct.statement*, %struct.statement** %6, align 8
  %41 = getelementptr inbounds %struct.statement, %struct.statement* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %37, i32 %38, i32 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %46, i32* %4, align 4
  br label %697

47:                                               ; preds = %33
  %48 = load %struct.statement*, %struct.statement** %6, align 8
  %49 = getelementptr inbounds %struct.statement, %struct.statement* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* @CHAROID, align 4
  %53 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %54 = load %struct.statement*, %struct.statement** %6, align 8
  %55 = getelementptr inbounds %struct.statement, %struct.statement* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %51, i32 %52, i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %60, i32* %4, align 4
  br label %697

61:                                               ; preds = %47
  %62 = load %struct.statement*, %struct.statement** %6, align 8
  %63 = getelementptr inbounds %struct.statement, %struct.statement* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* @NAMEOID, align 4
  %67 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %68 = load %struct.statement*, %struct.statement** %6, align 8
  %69 = getelementptr inbounds %struct.statement, %struct.statement* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %65, i32 %66, i32 %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %74, i32* %4, align 4
  br label %697

75:                                               ; preds = %61
  %76 = load %struct.statement*, %struct.statement** %6, align 8
  %77 = getelementptr inbounds %struct.statement, %struct.statement* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* @INT8OID, align 4
  %81 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %82 = load %struct.statement*, %struct.statement** %6, align 8
  %83 = getelementptr inbounds %struct.statement, %struct.statement* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %79, i32 %80, i32 %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %88, i32* %4, align 4
  br label %697

89:                                               ; preds = %75
  %90 = load %struct.statement*, %struct.statement** %6, align 8
  %91 = getelementptr inbounds %struct.statement, %struct.statement* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* @INT2OID, align 4
  %95 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %96 = load %struct.statement*, %struct.statement** %6, align 8
  %97 = getelementptr inbounds %struct.statement, %struct.statement* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %93, i32 %94, i32 %95, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %89
  %102 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %102, i32* %4, align 4
  br label %697

103:                                              ; preds = %89
  %104 = load %struct.statement*, %struct.statement** %6, align 8
  %105 = getelementptr inbounds %struct.statement, %struct.statement* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* @INT2VECTOROID, align 4
  %109 = load i32, i32* @ECPG_ARRAY_VECTOR, align 4
  %110 = load %struct.statement*, %struct.statement** %6, align 8
  %111 = getelementptr inbounds %struct.statement, %struct.statement* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %107, i32 %108, i32 %109, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %103
  %116 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %116, i32* %4, align 4
  br label %697

117:                                              ; preds = %103
  %118 = load %struct.statement*, %struct.statement** %6, align 8
  %119 = getelementptr inbounds %struct.statement, %struct.statement* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* @INT4OID, align 4
  %123 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %124 = load %struct.statement*, %struct.statement** %6, align 8
  %125 = getelementptr inbounds %struct.statement, %struct.statement* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %121, i32 %122, i32 %123, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %117
  %130 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %130, i32* %4, align 4
  br label %697

131:                                              ; preds = %117
  %132 = load %struct.statement*, %struct.statement** %6, align 8
  %133 = getelementptr inbounds %struct.statement, %struct.statement* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* @REGPROCOID, align 4
  %137 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %138 = load %struct.statement*, %struct.statement** %6, align 8
  %139 = getelementptr inbounds %struct.statement, %struct.statement* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %135, i32 %136, i32 %137, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %131
  %144 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %144, i32* %4, align 4
  br label %697

145:                                              ; preds = %131
  %146 = load %struct.statement*, %struct.statement** %6, align 8
  %147 = getelementptr inbounds %struct.statement, %struct.statement* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* @TEXTOID, align 4
  %151 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %152 = load %struct.statement*, %struct.statement** %6, align 8
  %153 = getelementptr inbounds %struct.statement, %struct.statement* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %149, i32 %150, i32 %151, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %145
  %158 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %158, i32* %4, align 4
  br label %697

159:                                              ; preds = %145
  %160 = load %struct.statement*, %struct.statement** %6, align 8
  %161 = getelementptr inbounds %struct.statement, %struct.statement* %160, i32 0, i32 1
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* @OIDOID, align 4
  %165 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %166 = load %struct.statement*, %struct.statement** %6, align 8
  %167 = getelementptr inbounds %struct.statement, %struct.statement* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %163, i32 %164, i32 %165, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %159
  %172 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %172, i32* %4, align 4
  br label %697

173:                                              ; preds = %159
  %174 = load %struct.statement*, %struct.statement** %6, align 8
  %175 = getelementptr inbounds %struct.statement, %struct.statement* %174, i32 0, i32 1
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* @TIDOID, align 4
  %179 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %180 = load %struct.statement*, %struct.statement** %6, align 8
  %181 = getelementptr inbounds %struct.statement, %struct.statement* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %177, i32 %178, i32 %179, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %173
  %186 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %186, i32* %4, align 4
  br label %697

187:                                              ; preds = %173
  %188 = load %struct.statement*, %struct.statement** %6, align 8
  %189 = getelementptr inbounds %struct.statement, %struct.statement* %188, i32 0, i32 1
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* @XIDOID, align 4
  %193 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %194 = load %struct.statement*, %struct.statement** %6, align 8
  %195 = getelementptr inbounds %struct.statement, %struct.statement* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %191, i32 %192, i32 %193, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %187
  %200 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %200, i32* %4, align 4
  br label %697

201:                                              ; preds = %187
  %202 = load %struct.statement*, %struct.statement** %6, align 8
  %203 = getelementptr inbounds %struct.statement, %struct.statement* %202, i32 0, i32 1
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* @CIDOID, align 4
  %207 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %208 = load %struct.statement*, %struct.statement** %6, align 8
  %209 = getelementptr inbounds %struct.statement, %struct.statement* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %205, i32 %206, i32 %207, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %201
  %214 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %214, i32* %4, align 4
  br label %697

215:                                              ; preds = %201
  %216 = load %struct.statement*, %struct.statement** %6, align 8
  %217 = getelementptr inbounds %struct.statement, %struct.statement* %216, i32 0, i32 1
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32, i32* @OIDVECTOROID, align 4
  %221 = load i32, i32* @ECPG_ARRAY_VECTOR, align 4
  %222 = load %struct.statement*, %struct.statement** %6, align 8
  %223 = getelementptr inbounds %struct.statement, %struct.statement* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %219, i32 %220, i32 %221, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %215
  %228 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %228, i32* %4, align 4
  br label %697

229:                                              ; preds = %215
  %230 = load %struct.statement*, %struct.statement** %6, align 8
  %231 = getelementptr inbounds %struct.statement, %struct.statement* %230, i32 0, i32 1
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i32, i32* @POINTOID, align 4
  %235 = load i32, i32* @ECPG_ARRAY_VECTOR, align 4
  %236 = load %struct.statement*, %struct.statement** %6, align 8
  %237 = getelementptr inbounds %struct.statement, %struct.statement* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %233, i32 %234, i32 %235, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %229
  %242 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %242, i32* %4, align 4
  br label %697

243:                                              ; preds = %229
  %244 = load %struct.statement*, %struct.statement** %6, align 8
  %245 = getelementptr inbounds %struct.statement, %struct.statement* %244, i32 0, i32 1
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i32, i32* @LSEGOID, align 4
  %249 = load i32, i32* @ECPG_ARRAY_VECTOR, align 4
  %250 = load %struct.statement*, %struct.statement** %6, align 8
  %251 = getelementptr inbounds %struct.statement, %struct.statement* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %247, i32 %248, i32 %249, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %243
  %256 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %256, i32* %4, align 4
  br label %697

257:                                              ; preds = %243
  %258 = load %struct.statement*, %struct.statement** %6, align 8
  %259 = getelementptr inbounds %struct.statement, %struct.statement* %258, i32 0, i32 1
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load i32, i32* @PATHOID, align 4
  %263 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %264 = load %struct.statement*, %struct.statement** %6, align 8
  %265 = getelementptr inbounds %struct.statement, %struct.statement* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %261, i32 %262, i32 %263, i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %257
  %270 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %270, i32* %4, align 4
  br label %697

271:                                              ; preds = %257
  %272 = load %struct.statement*, %struct.statement** %6, align 8
  %273 = getelementptr inbounds %struct.statement, %struct.statement* %272, i32 0, i32 1
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = load i32, i32* @BOXOID, align 4
  %277 = load i32, i32* @ECPG_ARRAY_VECTOR, align 4
  %278 = load %struct.statement*, %struct.statement** %6, align 8
  %279 = getelementptr inbounds %struct.statement, %struct.statement* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %275, i32 %276, i32 %277, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %271
  %284 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %284, i32* %4, align 4
  br label %697

285:                                              ; preds = %271
  %286 = load %struct.statement*, %struct.statement** %6, align 8
  %287 = getelementptr inbounds %struct.statement, %struct.statement* %286, i32 0, i32 1
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i32, i32* @POLYGONOID, align 4
  %291 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %292 = load %struct.statement*, %struct.statement** %6, align 8
  %293 = getelementptr inbounds %struct.statement, %struct.statement* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %289, i32 %290, i32 %291, i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %285
  %298 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %298, i32* %4, align 4
  br label %697

299:                                              ; preds = %285
  %300 = load %struct.statement*, %struct.statement** %6, align 8
  %301 = getelementptr inbounds %struct.statement, %struct.statement* %300, i32 0, i32 1
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 0
  %304 = load i32, i32* @LINEOID, align 4
  %305 = load i32, i32* @ECPG_ARRAY_VECTOR, align 4
  %306 = load %struct.statement*, %struct.statement** %6, align 8
  %307 = getelementptr inbounds %struct.statement, %struct.statement* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %303, i32 %304, i32 %305, i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %299
  %312 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %312, i32* %4, align 4
  br label %697

313:                                              ; preds = %299
  %314 = load %struct.statement*, %struct.statement** %6, align 8
  %315 = getelementptr inbounds %struct.statement, %struct.statement* %314, i32 0, i32 1
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 0
  %318 = load i32, i32* @FLOAT4OID, align 4
  %319 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %320 = load %struct.statement*, %struct.statement** %6, align 8
  %321 = getelementptr inbounds %struct.statement, %struct.statement* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %317, i32 %318, i32 %319, i32 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %327, label %325

325:                                              ; preds = %313
  %326 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %326, i32* %4, align 4
  br label %697

327:                                              ; preds = %313
  %328 = load %struct.statement*, %struct.statement** %6, align 8
  %329 = getelementptr inbounds %struct.statement, %struct.statement* %328, i32 0, i32 1
  %330 = load %struct.TYPE_2__*, %struct.TYPE_2__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  %332 = load i32, i32* @FLOAT8OID, align 4
  %333 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %334 = load %struct.statement*, %struct.statement** %6, align 8
  %335 = getelementptr inbounds %struct.statement, %struct.statement* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %331, i32 %332, i32 %333, i32 %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %341, label %339

339:                                              ; preds = %327
  %340 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %340, i32* %4, align 4
  br label %697

341:                                              ; preds = %327
  %342 = load %struct.statement*, %struct.statement** %6, align 8
  %343 = getelementptr inbounds %struct.statement, %struct.statement* %342, i32 0, i32 1
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 0
  %346 = load i32, i32* @UNKNOWNOID, align 4
  %347 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %348 = load %struct.statement*, %struct.statement** %6, align 8
  %349 = getelementptr inbounds %struct.statement, %struct.statement* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %345, i32 %346, i32 %347, i32 %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %355, label %353

353:                                              ; preds = %341
  %354 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %354, i32* %4, align 4
  br label %697

355:                                              ; preds = %341
  %356 = load %struct.statement*, %struct.statement** %6, align 8
  %357 = getelementptr inbounds %struct.statement, %struct.statement* %356, i32 0, i32 1
  %358 = load %struct.TYPE_2__*, %struct.TYPE_2__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 0
  %360 = load i32, i32* @CIRCLEOID, align 4
  %361 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %362 = load %struct.statement*, %struct.statement** %6, align 8
  %363 = getelementptr inbounds %struct.statement, %struct.statement* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %359, i32 %360, i32 %361, i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %369, label %367

367:                                              ; preds = %355
  %368 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %368, i32* %4, align 4
  br label %697

369:                                              ; preds = %355
  %370 = load %struct.statement*, %struct.statement** %6, align 8
  %371 = getelementptr inbounds %struct.statement, %struct.statement* %370, i32 0, i32 1
  %372 = load %struct.TYPE_2__*, %struct.TYPE_2__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 0
  %374 = load i32, i32* @CASHOID, align 4
  %375 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %376 = load %struct.statement*, %struct.statement** %6, align 8
  %377 = getelementptr inbounds %struct.statement, %struct.statement* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %373, i32 %374, i32 %375, i32 %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %383, label %381

381:                                              ; preds = %369
  %382 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %382, i32* %4, align 4
  br label %697

383:                                              ; preds = %369
  %384 = load %struct.statement*, %struct.statement** %6, align 8
  %385 = getelementptr inbounds %struct.statement, %struct.statement* %384, i32 0, i32 1
  %386 = load %struct.TYPE_2__*, %struct.TYPE_2__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i32 0, i32 0
  %388 = load i32, i32* @INETOID, align 4
  %389 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %390 = load %struct.statement*, %struct.statement** %6, align 8
  %391 = getelementptr inbounds %struct.statement, %struct.statement* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %387, i32 %388, i32 %389, i32 %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %397, label %395

395:                                              ; preds = %383
  %396 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %396, i32* %4, align 4
  br label %697

397:                                              ; preds = %383
  %398 = load %struct.statement*, %struct.statement** %6, align 8
  %399 = getelementptr inbounds %struct.statement, %struct.statement* %398, i32 0, i32 1
  %400 = load %struct.TYPE_2__*, %struct.TYPE_2__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 0
  %402 = load i32, i32* @CIDROID, align 4
  %403 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %404 = load %struct.statement*, %struct.statement** %6, align 8
  %405 = getelementptr inbounds %struct.statement, %struct.statement* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %401, i32 %402, i32 %403, i32 %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %411, label %409

409:                                              ; preds = %397
  %410 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %410, i32* %4, align 4
  br label %697

411:                                              ; preds = %397
  %412 = load %struct.statement*, %struct.statement** %6, align 8
  %413 = getelementptr inbounds %struct.statement, %struct.statement* %412, i32 0, i32 1
  %414 = load %struct.TYPE_2__*, %struct.TYPE_2__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 0
  %416 = load i32, i32* @BPCHAROID, align 4
  %417 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %418 = load %struct.statement*, %struct.statement** %6, align 8
  %419 = getelementptr inbounds %struct.statement, %struct.statement* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %415, i32 %416, i32 %417, i32 %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %425, label %423

423:                                              ; preds = %411
  %424 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %424, i32* %4, align 4
  br label %697

425:                                              ; preds = %411
  %426 = load %struct.statement*, %struct.statement** %6, align 8
  %427 = getelementptr inbounds %struct.statement, %struct.statement* %426, i32 0, i32 1
  %428 = load %struct.TYPE_2__*, %struct.TYPE_2__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i32 0, i32 0
  %430 = load i32, i32* @VARCHAROID, align 4
  %431 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %432 = load %struct.statement*, %struct.statement** %6, align 8
  %433 = getelementptr inbounds %struct.statement, %struct.statement* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %429, i32 %430, i32 %431, i32 %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %439, label %437

437:                                              ; preds = %425
  %438 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %438, i32* %4, align 4
  br label %697

439:                                              ; preds = %425
  %440 = load %struct.statement*, %struct.statement** %6, align 8
  %441 = getelementptr inbounds %struct.statement, %struct.statement* %440, i32 0, i32 1
  %442 = load %struct.TYPE_2__*, %struct.TYPE_2__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i32 0, i32 0
  %444 = load i32, i32* @DATEOID, align 4
  %445 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %446 = load %struct.statement*, %struct.statement** %6, align 8
  %447 = getelementptr inbounds %struct.statement, %struct.statement* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %443, i32 %444, i32 %445, i32 %448)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %453, label %451

451:                                              ; preds = %439
  %452 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %452, i32* %4, align 4
  br label %697

453:                                              ; preds = %439
  %454 = load %struct.statement*, %struct.statement** %6, align 8
  %455 = getelementptr inbounds %struct.statement, %struct.statement* %454, i32 0, i32 1
  %456 = load %struct.TYPE_2__*, %struct.TYPE_2__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %456, i32 0, i32 0
  %458 = load i32, i32* @TIMEOID, align 4
  %459 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %460 = load %struct.statement*, %struct.statement** %6, align 8
  %461 = getelementptr inbounds %struct.statement, %struct.statement* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %457, i32 %458, i32 %459, i32 %462)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %467, label %465

465:                                              ; preds = %453
  %466 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %466, i32* %4, align 4
  br label %697

467:                                              ; preds = %453
  %468 = load %struct.statement*, %struct.statement** %6, align 8
  %469 = getelementptr inbounds %struct.statement, %struct.statement* %468, i32 0, i32 1
  %470 = load %struct.TYPE_2__*, %struct.TYPE_2__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %470, i32 0, i32 0
  %472 = load i32, i32* @TIMESTAMPOID, align 4
  %473 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %474 = load %struct.statement*, %struct.statement** %6, align 8
  %475 = getelementptr inbounds %struct.statement, %struct.statement* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %471, i32 %472, i32 %473, i32 %476)
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %481, label %479

479:                                              ; preds = %467
  %480 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %480, i32* %4, align 4
  br label %697

481:                                              ; preds = %467
  %482 = load %struct.statement*, %struct.statement** %6, align 8
  %483 = getelementptr inbounds %struct.statement, %struct.statement* %482, i32 0, i32 1
  %484 = load %struct.TYPE_2__*, %struct.TYPE_2__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %484, i32 0, i32 0
  %486 = load i32, i32* @TIMESTAMPTZOID, align 4
  %487 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %488 = load %struct.statement*, %struct.statement** %6, align 8
  %489 = getelementptr inbounds %struct.statement, %struct.statement* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %485, i32 %486, i32 %487, i32 %490)
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %495, label %493

493:                                              ; preds = %481
  %494 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %494, i32* %4, align 4
  br label %697

495:                                              ; preds = %481
  %496 = load %struct.statement*, %struct.statement** %6, align 8
  %497 = getelementptr inbounds %struct.statement, %struct.statement* %496, i32 0, i32 1
  %498 = load %struct.TYPE_2__*, %struct.TYPE_2__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %498, i32 0, i32 0
  %500 = load i32, i32* @INTERVALOID, align 4
  %501 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %502 = load %struct.statement*, %struct.statement** %6, align 8
  %503 = getelementptr inbounds %struct.statement, %struct.statement* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %499, i32 %500, i32 %501, i32 %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %509, label %507

507:                                              ; preds = %495
  %508 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %508, i32* %4, align 4
  br label %697

509:                                              ; preds = %495
  %510 = load %struct.statement*, %struct.statement** %6, align 8
  %511 = getelementptr inbounds %struct.statement, %struct.statement* %510, i32 0, i32 1
  %512 = load %struct.TYPE_2__*, %struct.TYPE_2__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %512, i32 0, i32 0
  %514 = load i32, i32* @TIMETZOID, align 4
  %515 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %516 = load %struct.statement*, %struct.statement** %6, align 8
  %517 = getelementptr inbounds %struct.statement, %struct.statement* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %513, i32 %514, i32 %515, i32 %518)
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %523, label %521

521:                                              ; preds = %509
  %522 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %522, i32* %4, align 4
  br label %697

523:                                              ; preds = %509
  %524 = load %struct.statement*, %struct.statement** %6, align 8
  %525 = getelementptr inbounds %struct.statement, %struct.statement* %524, i32 0, i32 1
  %526 = load %struct.TYPE_2__*, %struct.TYPE_2__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %526, i32 0, i32 0
  %528 = load i32, i32* @BITOID, align 4
  %529 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %530 = load %struct.statement*, %struct.statement** %6, align 8
  %531 = getelementptr inbounds %struct.statement, %struct.statement* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %527, i32 %528, i32 %529, i32 %532)
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %537, label %535

535:                                              ; preds = %523
  %536 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %536, i32* %4, align 4
  br label %697

537:                                              ; preds = %523
  %538 = load %struct.statement*, %struct.statement** %6, align 8
  %539 = getelementptr inbounds %struct.statement, %struct.statement* %538, i32 0, i32 1
  %540 = load %struct.TYPE_2__*, %struct.TYPE_2__** %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %540, i32 0, i32 0
  %542 = load i32, i32* @VARBITOID, align 4
  %543 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %544 = load %struct.statement*, %struct.statement** %6, align 8
  %545 = getelementptr inbounds %struct.statement, %struct.statement* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %541, i32 %542, i32 %543, i32 %546)
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %551, label %549

549:                                              ; preds = %537
  %550 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %550, i32* %4, align 4
  br label %697

551:                                              ; preds = %537
  %552 = load %struct.statement*, %struct.statement** %6, align 8
  %553 = getelementptr inbounds %struct.statement, %struct.statement* %552, i32 0, i32 1
  %554 = load %struct.TYPE_2__*, %struct.TYPE_2__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %554, i32 0, i32 0
  %556 = load i32, i32* @NUMERICOID, align 4
  %557 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %558 = load %struct.statement*, %struct.statement** %6, align 8
  %559 = getelementptr inbounds %struct.statement, %struct.statement* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %555, i32 %556, i32 %557, i32 %560)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %565, label %563

563:                                              ; preds = %551
  %564 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %564, i32* %4, align 4
  br label %697

565:                                              ; preds = %551
  br label %566

566:                                              ; preds = %565, %3
  %567 = load %struct.statement*, %struct.statement** %6, align 8
  %568 = getelementptr inbounds %struct.statement, %struct.statement* %567, i32 0, i32 1
  %569 = load %struct.TYPE_2__*, %struct.TYPE_2__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %569, i32 0, i32 0
  %571 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %570, align 8
  store %struct.ECPGtype_information_cache* %571, %struct.ECPGtype_information_cache** %11, align 8
  br label %572

572:                                              ; preds = %586, %566
  %573 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %11, align 8
  %574 = icmp ne %struct.ECPGtype_information_cache* %573, null
  br i1 %574, label %575, label %590

575:                                              ; preds = %572
  %576 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %11, align 8
  %577 = getelementptr inbounds %struct.ECPGtype_information_cache, %struct.ECPGtype_information_cache* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = load i32, i32* %5, align 4
  %580 = icmp eq i32 %578, %579
  br i1 %580, label %581, label %585

581:                                              ; preds = %575
  %582 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %11, align 8
  %583 = getelementptr inbounds %struct.ECPGtype_information_cache, %struct.ECPGtype_information_cache* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  store i32 %584, i32* %4, align 4
  br label %697

585:                                              ; preds = %575
  br label %586

586:                                              ; preds = %585
  %587 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %11, align 8
  %588 = getelementptr inbounds %struct.ECPGtype_information_cache, %struct.ECPGtype_information_cache* %587, i32 0, i32 2
  %589 = load %struct.ECPGtype_information_cache*, %struct.ECPGtype_information_cache** %588, align 8
  store %struct.ECPGtype_information_cache* %589, %struct.ECPGtype_information_cache** %11, align 8
  br label %572

590:                                              ; preds = %572
  %591 = call i64 @strlen(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %592 = add nsw i64 %591, 11
  %593 = load %struct.statement*, %struct.statement** %6, align 8
  %594 = getelementptr inbounds %struct.statement, %struct.statement* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 8
  %596 = call i64 @ecpg_alloc(i64 %592, i32 %595)
  %597 = inttoptr i64 %596 to i8*
  store i8* %597, i8** %8, align 8
  %598 = load i8*, i8** %8, align 8
  %599 = icmp eq i8* %598, null
  br i1 %599, label %600, label %602

600:                                              ; preds = %590
  %601 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %601, i32* %4, align 4
  br label %697

602:                                              ; preds = %590
  %603 = load i8*, i8** %8, align 8
  %604 = load i32, i32* %5, align 4
  %605 = call i32 @sprintf(i8* %603, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %604)
  %606 = load %struct.statement*, %struct.statement** %6, align 8
  %607 = getelementptr inbounds %struct.statement, %struct.statement* %606, i32 0, i32 1
  %608 = load %struct.TYPE_2__*, %struct.TYPE_2__** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %608, i32 0, i32 1
  %610 = load i32, i32* %609, align 8
  %611 = load i8*, i8** %8, align 8
  %612 = call i32* @PQexec(i32 %610, i8* %611)
  store i32* %612, i32** %10, align 8
  %613 = load i8*, i8** %8, align 8
  %614 = call i32 @ecpg_free(i8* %613)
  %615 = load i32*, i32** %10, align 8
  %616 = load %struct.statement*, %struct.statement** %6, align 8
  %617 = getelementptr inbounds %struct.statement, %struct.statement* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = load %struct.statement*, %struct.statement** %6, align 8
  %620 = getelementptr inbounds %struct.statement, %struct.statement* %619, i32 0, i32 1
  %621 = load %struct.TYPE_2__*, %struct.TYPE_2__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %621, i32 0, i32 1
  %623 = load i32, i32* %622, align 8
  %624 = load %struct.statement*, %struct.statement** %6, align 8
  %625 = getelementptr inbounds %struct.statement, %struct.statement* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 8
  %627 = call i32 @ecpg_check_PQresult(i32* %615, i32 %618, i32 %623, i32 %626)
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %631, label %629

629:                                              ; preds = %602
  %630 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %630, i32* %4, align 4
  br label %697

631:                                              ; preds = %602
  %632 = load i32*, i32** %10, align 8
  %633 = call i64 @PQresultStatus(i32* %632)
  %634 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %635 = icmp eq i64 %633, %634
  br i1 %635, label %636, label %669

636:                                              ; preds = %631
  %637 = load i32*, i32** %10, align 8
  %638 = call i64 @PQntuples(i32* %637)
  %639 = icmp eq i64 %638, 0
  br i1 %639, label %640, label %642

640:                                              ; preds = %636
  %641 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  store i32 %641, i32* %9, align 4
  br label %666

642:                                              ; preds = %636
  %643 = load i32*, i32** %10, align 8
  %644 = call i64 @PQgetvalue(i32* %643, i32 0, i32 0)
  %645 = inttoptr i64 %644 to i8*
  %646 = call i32 @atol(i8* %645)
  %647 = icmp eq i32 %646, -1
  br i1 %647, label %648, label %650

648:                                              ; preds = %642
  %649 = load i32, i32* @ECPG_ARRAY_ARRAY, align 4
  br label %652

650:                                              ; preds = %642
  %651 = load i32, i32* @ECPG_ARRAY_VECTOR, align 4
  br label %652

652:                                              ; preds = %650, %648
  %653 = phi i32 [ %649, %648 ], [ %651, %650 ]
  store i32 %653, i32* %9, align 4
  %654 = load i32, i32* %5, align 4
  %655 = call i64 @ecpg_dynamic_type(i32 %654)
  %656 = load i64, i64* @SQL3_CHARACTER, align 8
  %657 = icmp eq i64 %655, %656
  br i1 %657, label %663, label %658

658:                                              ; preds = %652
  %659 = load i32, i32* %5, align 4
  %660 = call i64 @ecpg_dynamic_type(i32 %659)
  %661 = load i64, i64* @SQL3_CHARACTER_VARYING, align 8
  %662 = icmp eq i64 %660, %661
  br i1 %662, label %663, label %665

663:                                              ; preds = %658, %652
  %664 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  store i32 %664, i32* %9, align 4
  br label %665

665:                                              ; preds = %663, %658
  br label %666

666:                                              ; preds = %665, %640
  %667 = load i32*, i32** %10, align 8
  %668 = call i32 @PQclear(i32* %667)
  br label %671

669:                                              ; preds = %631
  %670 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  store i32 %670, i32* %4, align 4
  br label %697

671:                                              ; preds = %666
  br label %672

672:                                              ; preds = %671
  %673 = load %struct.statement*, %struct.statement** %6, align 8
  %674 = getelementptr inbounds %struct.statement, %struct.statement* %673, i32 0, i32 1
  %675 = load %struct.TYPE_2__*, %struct.TYPE_2__** %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %675, i32 0, i32 0
  %677 = load i32, i32* %5, align 4
  %678 = load i32, i32* %9, align 4
  %679 = load %struct.statement*, %struct.statement** %6, align 8
  %680 = getelementptr inbounds %struct.statement, %struct.statement* %679, i32 0, i32 0
  %681 = load i32, i32* %680, align 8
  %682 = call i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache** %676, i32 %677, i32 %678, i32 %681)
  %683 = load %struct.statement*, %struct.statement** %6, align 8
  %684 = getelementptr inbounds %struct.statement, %struct.statement* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 8
  %686 = load i32, i32* %5, align 4
  %687 = load %struct.variable*, %struct.variable** %7, align 8
  %688 = getelementptr inbounds %struct.variable, %struct.variable* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 4
  %690 = load i32, i32* %9, align 4
  %691 = call i64 @ECPG_IS_ARRAY(i32 %690)
  %692 = icmp ne i64 %691, 0
  %693 = zext i1 %692 to i64
  %694 = select i1 %692, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %695 = call i32 @ecpg_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %685, i32 %686, i32 %689, i8* %694)
  %696 = load i32, i32* %9, align 4
  store i32 %696, i32* %4, align 4
  br label %697

697:                                              ; preds = %672, %669, %629, %600, %581, %563, %549, %535, %521, %507, %493, %479, %465, %451, %437, %423, %409, %395, %381, %367, %353, %339, %325, %311, %297, %283, %269, %255, %241, %227, %213, %199, %185, %171, %157, %143, %129, %115, %101, %87, %73, %59, %45, %31
  %698 = load i32, i32* %4, align 4
  ret i32 %698
}

declare dso_local i32 @ecpg_type_infocache_push(%struct.ECPGtype_information_cache**, i32, i32, i32) #1

declare dso_local i64 @ecpg_alloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i32 @ecpg_free(i8*) #1

declare dso_local i32 @ecpg_check_PQresult(i32*, i32, i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i64 @PQntuples(i32*) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i64 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @ecpg_dynamic_type(i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ecpg_log(i8*, i32, i32, i32, i8*) #1

declare dso_local i64 @ECPG_IS_ARRAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
