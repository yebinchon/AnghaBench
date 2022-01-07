; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_dshash.c_dshash_create.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_dshash.c_dshash_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i32, i8*, i8*, %struct.TYPE_11__, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }

@DSHASH_MAGIC = common dso_local global i32 0, align 4
@DSHASH_NUM_PARTITIONS = common dso_local global i32 0, align 4
@DSHASH_NUM_PARTITIONS_LOG2 = common dso_local global i32 0, align 4
@DSA_ALLOC_NO_OOM = common dso_local global i32 0, align 4
@DSA_ALLOC_ZERO = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed on DSA request of size %zu.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @dshash_create(i32* %0, %struct.TYPE_11__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = call %struct.TYPE_9__* @palloc(i32 56)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @dsa_allocate(i32* %13, i32 4)
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 7
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = bitcast %struct.TYPE_11__* %19 to i8*
  %22 = bitcast %struct.TYPE_11__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @dsa_get_address(i32* %26, i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_8__*
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @DSHASH_MAGIC, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  store i32 %37, i32* %41, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %9, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %76, %3
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @DSHASH_NUM_PARTITIONS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @LWLockInitialize(i32* %68, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %59

79:                                               ; preds = %59
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* @DSHASH_NUM_PARTITIONS_LOG2, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @DSHASH_NUM_PARTITIONS, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 4, %91
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* @DSA_ALLOC_NO_OOM, align 4
  %95 = load i32, i32* @DSA_ALLOC_ZERO, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @dsa_allocate_extended(i32* %89, i32 %93, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i32 %97, i32* %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @DsaPointerIsValid(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %79
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @dsa_free(i32* %110, i32 %111)
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %115 = call i32 @errcode(i32 %114)
  %116 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @DSHASH_NUM_PARTITIONS, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 4, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32 @errdetail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = call i32 @ereport(i32 %113, i32 %121)
  br label %123

123:                                              ; preds = %109, %79
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @dsa_get_address(i32* %124, i32 %129)
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %140
}

declare dso_local %struct.TYPE_9__* @palloc(i32) #1

declare dso_local i32 @dsa_allocate(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @dsa_get_address(i32*, i32) #1

declare dso_local i32 @LWLockInitialize(i32*, i32) #1

declare dso_local i32 @dsa_allocate_extended(i32*, i32, i32) #1

declare dso_local i32 @DsaPointerIsValid(i32) #1

declare dso_local i32 @dsa_free(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
