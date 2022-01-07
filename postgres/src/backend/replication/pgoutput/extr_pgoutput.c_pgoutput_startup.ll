; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_pgoutput_startup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_pgoutput_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"logical replication output context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@OUTPUT_PLUGIN_BINARY_OUTPUT = common dso_local global i32 0, align 4
@LOGICALREP_PROTO_VERSION_NUM = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"client sent proto_version=%d but we only support protocol %d or lower\00", align 1
@LOGICALREP_PROTO_MIN_VERSION_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"client sent proto_version=%d but we only support protocol %d or higher\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"publication_names parameter missing\00", align 1
@NIL = common dso_local global i32 0, align 4
@publications_valid = common dso_local global i32 0, align 4
@PUBLICATIONOID = common dso_local global i32 0, align 4
@publication_invalidation_cb = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32)* @pgoutput_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgoutput_startup(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call %struct.TYPE_7__* @palloc0(i32 24)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %13 = call i32 @AllocSetContextCreate(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %18, align 8
  %19 = load i32, i32* @OUTPUT_PLUGIN_BINARY_OUTPUT, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %85, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = call i32 @parse_output_parameters(i32 %27, i64* %29, i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LOGICALREP_PROTO_VERSION_NUM, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LOGICALREP_PROTO_VERSION_NUM, align 8
  %46 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %45)
  %47 = call i32 @ereport(i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %38, %24
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LOGICALREP_PROTO_MIN_VERSION_NUM, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LOGICALREP_PROTO_MIN_VERSION_NUM, align 8
  %62 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %60, i64 %61)
  %63 = call i32 @ereport(i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %54, %48
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @list_length(i32 %67)
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32 @ereport(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %64
  %77 = load i32, i32* @NIL, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  store i32 0, i32* @publications_valid, align 4
  %80 = load i32, i32* @PUBLICATIONOID, align 4
  %81 = load i32, i32* @publication_invalidation_cb, align 4
  %82 = call i32 @CacheRegisterSyscacheCallback(i32 %80, i32 %81, i32 0)
  %83 = load i32, i32* @CacheMemoryContext, align 4
  %84 = call i32 @init_rel_sync_cache(i32 %83)
  br label %85

85:                                               ; preds = %76, %3
  ret void
}

declare dso_local %struct.TYPE_7__* @palloc0(i32) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @parse_output_parameters(i32, i64*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

declare dso_local i32 @init_rel_sync_cache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
