; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQgetResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQgetResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 (i32, %struct.TYPE_25__*, i32)* }
%struct.TYPE_25__ = type { %struct.TYPE_23__*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_26__, i64 }
%struct.TYPE_26__ = type { i32 }

@PGASYNC_BUSY = common dso_local global i64 0, align 8
@PGRES_COPY_IN = common dso_local global i32 0, align 4
@PGRES_COPY_OUT = common dso_local global i32 0, align 4
@PGRES_COPY_BOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unexpected asyncStatus: %d\0A\00", align 1
@PGRES_FATAL_ERROR = common dso_local global i32 0, align 4
@PGEVT_RESULTCREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"PGEventProc \22%s\22 failed during PGEVT_RESULTCREATE event\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @PQgetResult(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %9 = icmp ne %struct.TYPE_24__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %175

11:                                               ; preds = %1
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %13 = call i32 @parseInput(%struct.TYPE_24__* %12)
  br label %14

14:                                               ; preds = %69, %11
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PGASYNC_BUSY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %30, %20
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = call i32 @pqFlush(%struct.TYPE_24__* %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %27 = call i64 @pqWait(i32 0, i32 1, %struct.TYPE_24__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %31

30:                                               ; preds = %25
  br label %21

31:                                               ; preds = %29, %21
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %36 = call i64 @pqWait(i32 1, i32 0, %struct.TYPE_24__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %40 = call i64 @pqReadData(%struct.TYPE_24__* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %34, %31
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = call i32 @pqSaveErrorResult(%struct.TYPE_24__* %43)
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  store i64 129, i64* %46, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %48 = call %struct.TYPE_23__* @pqPrepareAsyncResult(%struct.TYPE_24__* %47)
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %2, align 8
  br label %175

49:                                               ; preds = %38
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = call i32 @parseInput(%struct.TYPE_24__* %50)
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PGASYNC_BUSY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %64 = call i32 @pqSaveWriteError(%struct.TYPE_24__* %63)
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  store i64 129, i64* %66, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = call %struct.TYPE_23__* @pqPrepareAsyncResult(%struct.TYPE_24__* %67)
  store %struct.TYPE_23__* %68, %struct.TYPE_23__** %2, align 8
  br label %175

69:                                               ; preds = %56, %49
  br label %14

70:                                               ; preds = %14
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  switch i64 %73, label %93 [
    i64 129, label %74
    i64 128, label %75
    i64 131, label %81
    i64 130, label %85
    i64 132, label %89
  ]

74:                                               ; preds = %70
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %4, align 8
  br label %105

75:                                               ; preds = %70
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %77 = call %struct.TYPE_23__* @pqPrepareAsyncResult(%struct.TYPE_24__* %76)
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %4, align 8
  %78 = load i64, i64* @PGASYNC_BUSY, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %105

81:                                               ; preds = %70
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %83 = load i32, i32* @PGRES_COPY_IN, align 4
  %84 = call %struct.TYPE_23__* @getCopyResult(%struct.TYPE_24__* %82, i32 %83)
  store %struct.TYPE_23__* %84, %struct.TYPE_23__** %4, align 8
  br label %105

85:                                               ; preds = %70
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %87 = load i32, i32* @PGRES_COPY_OUT, align 4
  %88 = call %struct.TYPE_23__* @getCopyResult(%struct.TYPE_24__* %86, i32 %87)
  store %struct.TYPE_23__* %88, %struct.TYPE_23__** %4, align 8
  br label %105

89:                                               ; preds = %70
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %91 = load i32, i32* @PGRES_COPY_BOTH, align 4
  %92 = call %struct.TYPE_23__* @getCopyResult(%struct.TYPE_24__* %90, i32 %91)
  store %struct.TYPE_23__* %92, %struct.TYPE_23__** %4, align 8
  br label %105

93:                                               ; preds = %70
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = call i32 @libpq_gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @printfPQExpBuffer(%struct.TYPE_26__* %95, i32 %96, i32 %100)
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %103 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  %104 = call %struct.TYPE_23__* @PQmakeEmptyPGresult(%struct.TYPE_24__* %102, i32 %103)
  store %struct.TYPE_23__* %104, %struct.TYPE_23__** %4, align 8
  br label %105

105:                                              ; preds = %93, %89, %85, %81, %75, %74
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %107 = icmp ne %struct.TYPE_23__* %106, null
  br i1 %107, label %108, label %173

108:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %169, %108
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %172

115:                                              ; preds = %109
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  store %struct.TYPE_24__* %116, %struct.TYPE_24__** %117, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  store %struct.TYPE_23__* %118, %struct.TYPE_23__** %119, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 3
  %127 = load i32 (i32, %struct.TYPE_25__*, i32)*, i32 (i32, %struct.TYPE_25__*, i32)** %126, align 8
  %128 = load i32, i32* @PGEVT_RESULTCREATE, align 4
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %127(i32 %128, %struct.TYPE_25__* %7, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %161, label %139

139:                                              ; preds = %115
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  %142 = call i32 @libpq_gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @printfPQExpBuffer(%struct.TYPE_26__* %141, i32 %142, i32 %150)
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @pqSetResultError(%struct.TYPE_23__* %152, i32 %156)
  %158 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  br label %172

161:                                              ; preds = %115
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 1
  store i32 1, i32* %168, align 4
  br label %169

169:                                              ; preds = %161
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %109

172:                                              ; preds = %139, %109
  br label %173

173:                                              ; preds = %172, %105
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %174, %struct.TYPE_23__** %2, align 8
  br label %175

175:                                              ; preds = %173, %62, %42, %10
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  ret %struct.TYPE_23__* %176
}

declare dso_local i32 @parseInput(%struct.TYPE_24__*) #1

declare dso_local i32 @pqFlush(%struct.TYPE_24__*) #1

declare dso_local i64 @pqWait(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @pqReadData(%struct.TYPE_24__*) #1

declare dso_local i32 @pqSaveErrorResult(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @pqPrepareAsyncResult(%struct.TYPE_24__*) #1

declare dso_local i32 @pqSaveWriteError(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @getCopyResult(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local %struct.TYPE_23__* @PQmakeEmptyPGresult(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @pqSetResultError(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
