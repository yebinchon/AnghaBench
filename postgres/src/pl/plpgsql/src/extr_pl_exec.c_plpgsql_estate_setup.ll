; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_estate_setup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_estate_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)*, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32*, i32*, i32*, i32*, i64, i32*, i8*, i32*, i8*, i32*, i32*, i32, %struct.TYPE_16__*, i8*, i32*, i32, %struct.TYPE_18__*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i64, i32*, i32*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, i32*, i64, i32*, i32, i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, i32, i8* }

@InvalidOid = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32* null, align 8
@CurrentMemoryContext = common dso_local global i8* null, align 8
@plpgsql_param_fetch = common dso_local global i32 0, align 4
@plpgsql_param_compile = common dso_local global i32 0, align 4
@plpgsql_parser_setup = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"PLpgSQL private cast cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@shared_simple_eval_estate = common dso_local global i32* null, align 8
@shared_cast_hash = common dso_local global i32* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"PLpgSQL cast info\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@shared_cast_context = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"PLpgSQL cast cache\00", align 1
@plpgsql_plugin_ptr = common dso_local global %struct.TYPE_22__** null, align 8
@plpgsql_exec_error_callback = common dso_local global i32 0, align 4
@exec_assign_expr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32*)* @plpgsql_estate_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plpgsql_estate_setup(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 6
  store %struct.TYPE_20__* %10, %struct.TYPE_20__** %12, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 33
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %15, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 32
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 31
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 30
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @InvalidOid, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 29
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 28
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 27
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 26
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 25
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 24
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 23
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 22
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 21
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %58 = icmp ne %struct.TYPE_18__* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 20
  store i32* %64, i32** %66, align 8
  %67 = load i32*, i32** @CurrentResourceOwner, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 19
  store i32* %67, i32** %69, align 8
  br label %75

70:                                               ; preds = %4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 20
  store i32* null, i32** %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 19
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %70, %59
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 18
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %78, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 17
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 13
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 16
  store i32* null, i32** %90, align 8
  %91 = load i8*, i8** @CurrentMemoryContext, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 15
  store i8* %91, i8** %93, align 8
  %94 = call %struct.TYPE_16__* @makeParamList(i32 0)
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 14
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %96, align 8
  %97 = load i32, i32* @plpgsql_param_fetch, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 14
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 6
  store i32 %97, i32* %101, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = bitcast %struct.TYPE_20__* %102 to i8*
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 14
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 5
  store i8* %103, i8** %107, align 8
  %108 = load i32, i32* @plpgsql_param_compile, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 14
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  store i32 %108, i32* %112, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 14
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  store i32* null, i32** %116, align 8
  %117 = load i64, i64* @plpgsql_parser_setup, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 14
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  store i64 %117, i64* %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 14
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  store i32* null, i32** %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 13
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 14
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %156

135:                                              ; preds = %75
  %136 = load i32*, i32** %8, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 12
  store i32* %136, i32** %138, align 8
  %139 = call i32 @memset(%struct.TYPE_21__* %9, i32 0, i32 16)
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  store i32 4, i32* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  store i32 4, i32* %141, align 4
  %142 = load i8*, i8** @CurrentMemoryContext, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 2
  store i8* %142, i8** %143, align 8
  %144 = load i32, i32* @HASH_ELEM, align 4
  %145 = load i32, i32* @HASH_BLOBS, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @HASH_CONTEXT, align 4
  %148 = or i32 %146, %147
  %149 = call i8* @hash_create(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 16, %struct.TYPE_21__* %9, i32 %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 11
  store i32* %150, i32** %152, align 8
  %153 = load i8*, i8** @CurrentMemoryContext, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 10
  store i8* %153, i8** %155, align 8
  br label %185

156:                                              ; preds = %75
  %157 = load i32*, i32** @shared_simple_eval_estate, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 12
  store i32* %157, i32** %159, align 8
  %160 = load i32*, i32** @shared_cast_hash, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %178

162:                                              ; preds = %156
  %163 = load i32, i32* @TopMemoryContext, align 4
  %164 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %165 = call i8* @AllocSetContextCreate(i32 %163, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  store i8* %165, i8** @shared_cast_context, align 8
  %166 = call i32 @memset(%struct.TYPE_21__* %9, i32 0, i32 16)
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  store i32 4, i32* %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  store i32 4, i32* %168, align 4
  %169 = load i8*, i8** @shared_cast_context, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 2
  store i8* %169, i8** %170, align 8
  %171 = load i32, i32* @HASH_ELEM, align 4
  %172 = load i32, i32* @HASH_BLOBS, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @HASH_CONTEXT, align 4
  %175 = or i32 %173, %174
  %176 = call i8* @hash_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 16, %struct.TYPE_21__* %9, i32 %175)
  %177 = bitcast i8* %176 to i32*
  store i32* %177, i32** @shared_cast_hash, align 8
  br label %178

178:                                              ; preds = %162, %156
  %179 = load i32*, i32** @shared_cast_hash, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 11
  store i32* %179, i32** %181, align 8
  %182 = load i8*, i8** @shared_cast_context, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 10
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %178, %135
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 9
  store i32* null, i32** %187, align 8
  %188 = load i8*, i8** @CurrentMemoryContext, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 8
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 7
  store i32* null, i32** %192, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 6
  store i64 0, i64* %194, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 5
  store i32* null, i32** %196, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 4
  store i32* null, i32** %198, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 3
  store i32* null, i32** %200, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 2
  store i32* null, i32** %202, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %204 = call i32 @plpgsql_create_econtext(%struct.TYPE_20__* %203)
  %205 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @plpgsql_plugin_ptr, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %205, align 8
  %207 = icmp ne %struct.TYPE_22__* %206, null
  br i1 %207, label %208, label %231

208:                                              ; preds = %185
  %209 = load i32, i32* @plpgsql_exec_error_callback, align 4
  %210 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @plpgsql_plugin_ptr, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 2
  store i32 %209, i32* %212, align 4
  %213 = load i32, i32* @exec_assign_expr, align 4
  %214 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @plpgsql_plugin_ptr, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 8
  %217 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @plpgsql_plugin_ptr, align 8
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  %220 = load i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)** %219, align 8
  %221 = icmp ne i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* %220, null
  br i1 %221, label %222, label %230

222:                                              ; preds = %208
  %223 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @plpgsql_plugin_ptr, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  %226 = load i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)** %225, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %229 = call i32 %226(%struct.TYPE_20__* %227, %struct.TYPE_19__* %228)
  br label %230

230:                                              ; preds = %222, %208
  br label %231

231:                                              ; preds = %230, %185
  ret void
}

declare dso_local %struct.TYPE_16__* @makeParamList(i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i8* @hash_create(i8*, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i8* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @plpgsql_create_econtext(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
