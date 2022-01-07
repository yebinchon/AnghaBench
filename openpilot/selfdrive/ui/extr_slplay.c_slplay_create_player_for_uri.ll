; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/ui/extr_slplay.c_slplay_create_player_for_uri.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/ui/extr_slplay.c_slplay_create_player_for_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 (%struct.TYPE_18__**, %struct.TYPE_26__***, %struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32*, i32*)* }
%struct.TYPE_26__ = type { i64 (%struct.TYPE_26__**, i32)*, i64 (%struct.TYPE_26__**, i32, %struct.TYPE_25__***)* }
%struct.TYPE_25__ = type { i64 (%struct.TYPE_25__**, i32)* }
%struct.TYPE_20__ = type { %struct.TYPE_24__*, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i32, i32*, i32 }
%struct.TYPE_22__ = type { i32*, i32 }
%struct.TYPE_21__ = type { i32*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8*, i32*, %struct.TYPE_25__**, %struct.TYPE_26__**, i32*, i32* }

@SL_DATALOCATOR_URI = common dso_local global i32 0, align 4
@SL_DATAFORMAT_MIME = common dso_local global i32 0, align 4
@SL_CONTAINERTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@SL_DATALOCATOR_OUTPUTMIX = common dso_local global i32 0, align 4
@outputMix = common dso_local global i32 0, align 4
@engineInterface = common dso_local global %struct.TYPE_18__** null, align 8
@SL_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to create audio player\00", align 1
@SL_BOOLEAN_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to realize audio player\00", align 1
@SL_IID_PLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get player interface\00", align 1
@SL_PLAYSTATE_PAUSED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Failed to initialize playstate to SL_PLAYSTATE_PAUSED\00", align 1
@players = common dso_local global %struct.TYPE_19__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @slplay_create_player_for_uri(i8* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca %struct.TYPE_24__, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_23__, align 4
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = bitcast %struct.TYPE_19__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 48, i1 false)
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %18 = load i32, i32* @SL_DATALOCATOR_URI, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %22 = load i8*, i8** %4, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = ptrtoint i32* %23 to i32
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %26 = load i32, i32* @SL_DATAFORMAT_MIME, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 2
  %29 = load i32, i32* @SL_CONTAINERTYPE_UNSPECIFIED, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %31 = bitcast %struct.TYPE_22__* %8 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %33 = bitcast %struct.TYPE_24__* %9 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %35 = load i32, i32* @SL_DATALOCATOR_OUTPUTMIX, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  %37 = load i32, i32* @outputMix, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %39 = bitcast %struct.TYPE_23__* %11 to i32*
  store i32* %39, i32** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %40, align 8
  %41 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @engineInterface, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64 (%struct.TYPE_18__**, %struct.TYPE_26__***, %struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32*, i32*)*, i64 (%struct.TYPE_18__**, %struct.TYPE_26__***, %struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32*, i32*)** %43, align 8
  %45 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @engineInterface, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %47 = call i64 %44(%struct.TYPE_18__** %45, %struct.TYPE_26__*** %46, %struct.TYPE_20__* %10, %struct.TYPE_21__* %12, i32 0, i32* null, i32* null)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %114

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %55 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %54, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load i64 (%struct.TYPE_26__**, i32)*, i64 (%struct.TYPE_26__**, i32)** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %60 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %59, align 8
  %61 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  %62 = call i64 %58(%struct.TYPE_26__** %60, i32 %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %114

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %70 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %69, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 1
  %73 = load i64 (%struct.TYPE_26__**, i32, %struct.TYPE_25__***)*, i64 (%struct.TYPE_26__**, i32, %struct.TYPE_25__***)** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %75 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %74, align 8
  %76 = load i32, i32* @SL_IID_PLAY, align 4
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %78 = call i64 %73(%struct.TYPE_26__** %75, i32 %76, %struct.TYPE_25__*** %77)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %83, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %114

84:                                               ; preds = %68
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %86 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %85, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load i64 (%struct.TYPE_25__**, i32)*, i64 (%struct.TYPE_25__**, i32)** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %91 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %90, align 8
  %92 = load i32, i32* @SL_PLAYSTATE_PAUSED, align 4
  %93 = call i64 %89(%struct.TYPE_25__** %91, i32 %92)
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8** %98, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %114

99:                                               ; preds = %84
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** @players, align 8
  store %struct.TYPE_19__* %100, %struct.TYPE_19__** %13, align 8
  br label %101

101:                                              ; preds = %106, %99
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 1
  store %struct.TYPE_19__* %108, %struct.TYPE_19__** %13, align 8
  br label %101

109:                                              ; preds = %101
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %111 = bitcast %struct.TYPE_19__* %110 to i8*
  %112 = bitcast %struct.TYPE_19__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 48, i1 false)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %113, %struct.TYPE_19__** %3, align 8
  br label %114

114:                                              ; preds = %109, %97, %82, %66, %51
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
