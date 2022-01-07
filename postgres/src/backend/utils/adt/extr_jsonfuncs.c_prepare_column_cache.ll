; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_prepare_column_cache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_prepare_column_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, %struct.TYPE_12__, i8*, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i8*, i32, i8* }
%struct.TYPE_10__ = type { i32*, i8*, i64, i32*, i32* }
%struct.TYPE_9__ = type { i32*, i8*, i8*, i64 }
%struct.TYPE_14__ = type { i64, i32, i32 }

@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@TYPTYPE_COMPOSITE = common dso_local global i64 0, align 8
@TYPECAT_COMPOSITE_DOMAIN = common dso_local global i32 0, align 4
@TYPECAT_DOMAIN = common dso_local global i32 0, align 4
@RECORDOID = common dso_local global i64 0, align 8
@TYPECAT_COMPOSITE = common dso_local global i32 0, align 4
@TYPECAT_ARRAY = common dso_local global i32 0, align 4
@TYPECAT_SCALAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64, i8*, i32, i32)* @prepare_column_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_column_cache(%struct.TYPE_15__* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 4
  store i64 %16, i64* %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @TYPEOID, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @ObjectIdGetDatum(i64 %23)
  %25 = call i32 @SearchSysCache1(i32 %22, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @HeapTupleIsValid(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @elog(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %29, %5
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @GETSTRUCT(i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %12, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %101

42:                                               ; preds = %33
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %14, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @getBaseTypeAndTypmod(i64 %44, i8** %14)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i64 @get_typtype(i64 %46)
  %48 = load i64, i64* @TYPTYPE_COMPOSITE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %42
  %51 = load i32, i32* @TYPECAT_COMPOSITE_DOMAIN, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i64 %62, i64* %66, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i8* %67, i8** %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  br label %100

76:                                               ; preds = %42
  %77 = load i32, i32* @TYPECAT_DOMAIN, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  store i64 %80, i64* %84, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  store i8* %85, i8** %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i8* @MemoryContextAllocZero(i32 %90, i32 128)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i8* %91, i8** %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %76, %50
  br label %176

101:                                              ; preds = %33
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TYPTYPE_COMPOSITE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* @RECORDOID, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %137

111:                                              ; preds = %107, %101
  %112 = load i32, i32* @TYPECAT_COMPOSITE, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  store i32* null, i32** %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  store i32* null, i32** %122, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  store i64 %123, i64* %127, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  store i8* %128, i8** %132, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32* null, i32** %136, align 8
  br label %175

137:                                              ; preds = %107
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %170

142:                                              ; preds = %137
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @OidIsValid(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %142
  %149 = load i32, i32* @TYPECAT_ARRAY, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i8* @MemoryContextAllocZero(i32 %152, i32 128)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  store i8* %153, i8** %157, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  store i32 %160, i32* %164, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  store i8* %165, i8** %169, align 8
  br label %174

170:                                              ; preds = %142, %137
  %171 = load i32, i32* @TYPECAT_SCALAR, align 4
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  store i32 1, i32* %10, align 4
  br label %174

174:                                              ; preds = %170, %148
  br label %175

175:                                              ; preds = %174, %111
  br label %176

176:                                              ; preds = %175, %100
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %176
  %180 = load i64, i64* %7, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = call i32 @getTypeInputInfo(i64 %180, i64* %15, i32* %183)
  %185 = load i64, i64* %15, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @fmgr_info_cxt(i64 %185, i32* %188, i32 %189)
  br label %191

191:                                              ; preds = %179, %176
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @ReleaseSysCache(i32 %192)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @getBaseTypeAndTypmod(i64, i8**) #1

declare dso_local i64 @get_typtype(i64) #1

declare dso_local i8* @MemoryContextAllocZero(i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @getTypeInputInfo(i64, i64*, i32*) #1

declare dso_local i32 @fmgr_info_cxt(i64, i32*, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
