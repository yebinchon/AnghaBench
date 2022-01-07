; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_spgGetCache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_spgGetCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i32*, i32*, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64 }

@SPGIST_CONFIG_PROC = common dso_local global i32 0, align 4
@SPGIST_COMPRESS_PROC = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"compress method must be defined when leaf type is different from input type\00", align 1
@SPGIST_METAPAGE_BLKNO = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@SPGIST_MAGIC_NUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"index \22%s\22 is not an SP-GiST index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @spgGetCache(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %138

13:                                               ; preds = %1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_19__* @MemoryContextAllocZero(i32 %16, i32 56)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %3, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = call %struct.TYPE_21__* @TupleDescAttr(%struct.TYPE_16__* %28, i32 0)
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 3
  store i64 %32, i64* %33, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %35 = load i32, i32* @SPGIST_CONFIG_PROC, align 4
  %36 = call i32* @index_getprocinfo(%struct.TYPE_20__* %34, i32 1, i32 %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PointerGetDatum(%struct.TYPE_17__* %5)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = call i32 @PointerGetDatum(%struct.TYPE_17__* %45)
  %47 = call i32 @FunctionCall2Coll(i32* %37, i32 %42, i32 %43, i32 %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @fillTypeDesc(i32* %49, i64 %50)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @OidIsValid(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %13
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %58
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %67 = load i32, i32* @SPGIST_COMPRESS_PROC, align 4
  %68 = call i64 @index_getprocid(%struct.TYPE_20__* %66, i32 1, i32 %67)
  %69 = call i64 @OidIsValid(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = call i32 @errmsg(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 @ereport(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @fillTypeDesc(i32* %79, i64 %83)
  br label %91

85:                                               ; preds = %58, %13
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %77
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @fillTypeDesc(i32* %93, i64 %97)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @fillTypeDesc(i32* %100, i64 %104)
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %107 = load i32, i32* @SPGIST_METAPAGE_BLKNO, align 4
  %108 = call i32 @ReadBuffer(%struct.TYPE_20__* %106, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %111 = call i32 @LockBuffer(i32 %109, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @BufferGetPage(i32 %112)
  %114 = call %struct.TYPE_18__* @SpGistPageGetMeta(i32 %113)
  store %struct.TYPE_18__* %114, %struct.TYPE_18__** %8, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SPGIST_MAGIC_NUMBER, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %91
  %121 = load i32, i32* @ERROR, align 4
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %123 = call i32 @RelationGetRelationName(%struct.TYPE_20__* %122)
  %124 = call i32 @elog(i32 %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %120, %91
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @UnlockReleaseBuffer(i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %134 = bitcast %struct.TYPE_19__* %133 to i8*
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  store i32* %135, i32** %137, align 8
  br label %143

138:                                              ; preds = %1
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = bitcast i32* %141 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %3, align 8
  br label %143

143:                                              ; preds = %138, %125
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %144
}

declare dso_local %struct.TYPE_19__* @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_21__* @TupleDescAttr(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @index_getprocinfo(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_17__*) #1

declare dso_local i32 @fillTypeDesc(i32*, i64) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @index_getprocid(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ReadBuffer(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local %struct.TYPE_18__* @SpGistPageGetMeta(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_20__*) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
