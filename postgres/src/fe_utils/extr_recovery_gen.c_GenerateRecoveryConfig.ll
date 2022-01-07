; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_recovery_gen.c_GenerateRecoveryConfig.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_recovery_gen.c_GenerateRecoveryConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@MINIMUM_VERSION_FOR_RECOVERY_GUC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"standby_mode = 'on'\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"replication\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"fallback_application_name\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"primary_conninfo = '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"primary_slot_name = '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @GenerateRecoveryConfig(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = call %struct.TYPE_17__* (...) @createPQExpBuffer()
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %8, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = call i32 @pg_log_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @PQserverVersion(i32* %21)
  %23 = load i64, i64* @MINIMUM_VERSION_FOR_RECOVERY_GUC, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = call i32 @appendPQExpBufferStr(%struct.TYPE_17__* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32*, i32** %3, align 8
  %30 = call %struct.TYPE_16__* @PQconninfo(i32* %29)
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %5, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = icmp eq %struct.TYPE_16__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = call i32 @pg_log_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %28
  %37 = call i32 @initPQExpBuffer(%struct.TYPE_17__* %6)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %9, align 8
  br label %39

39:                                               ; preds = %101, %36
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %41 = icmp ne %struct.TYPE_16__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %49, label %104

49:                                               ; preds = %47
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %85, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77, %67, %61, %55, %49
  br label %101

86:                                               ; preds = %77, %72
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 @appendPQExpBufferChar(%struct.TYPE_17__* %6, i8 signext 32)
  br label %92

92:                                               ; preds = %90, %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @appendPQExpBuffer(%struct.TYPE_17__* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @appendConnStrVal(%struct.TYPE_17__* %6, i8* %99)
  br label %101

101:                                              ; preds = %92, %85
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 1
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %9, align 8
  br label %39

104:                                              ; preds = %47
  %105 = bitcast %struct.TYPE_17__* %6 to { i64, i32 }*
  %106 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %105, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @PQExpBufferDataBroken(i64 %107, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = call i32 @pg_log_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @escape_quotes(i32 %117)
  store i8* %118, i8** %7, align 8
  %119 = call i32 @termPQExpBuffer(%struct.TYPE_17__* %6)
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @appendPQExpBuffer(%struct.TYPE_17__* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %121)
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i8*, i8** %4, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %115
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 @appendPQExpBuffer(%struct.TYPE_17__* %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %127, %115
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %133 = call i64 @PQExpBufferBroken(%struct.TYPE_17__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = call i32 @pg_log_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %137 = call i32 @exit(i32 1) #3
  unreachable

138:                                              ; preds = %131
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = call i32 @PQconninfoFree(%struct.TYPE_16__* %139)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  ret %struct.TYPE_17__* %141
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_17__* @createPQExpBuffer(...) #1

declare dso_local i32 @pg_log_error(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @PQserverVersion(i32*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.TYPE_16__* @PQconninfo(i32*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_17__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_17__*, i8 signext) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_17__*, i8*, i8*) #1

declare dso_local i32 @appendConnStrVal(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @PQExpBufferDataBroken(i64, i32) #1

declare dso_local i8* @escape_quotes(i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_17__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @PQExpBufferBroken(%struct.TYPE_17__*) #1

declare dso_local i32 @PQconninfoFree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
