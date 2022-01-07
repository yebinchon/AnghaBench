; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_ExecSimpleRelationInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_ExecSimpleRelationInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_26__*, i64, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { %struct.TYPE_24__*, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64 }

@RELKIND_RELATION = common dso_local global i64 0, align 8
@CMD_INSERT = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecSimpleRelationInsert(%struct.TYPE_27__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %6, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %7, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RELKIND_RELATION, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %25 = load i32, i32* @CMD_INSERT, align 4
  %26 = call i32 @CheckCmdReplicaIdentity(%struct.TYPE_26__* %24, i32 %25)
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %30 = icmp ne %struct.TYPE_22__* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %2
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @ExecBRInsertTriggers(%struct.TYPE_27__* %39, %struct.TYPE_25__* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %38
  br label %46

46:                                               ; preds = %45, %31, %2
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %115, label %49

49:                                               ; preds = %46
  %50 = load i32*, i32** @NIL, align 8
  store i32* %50, i32** %8, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %54, align 8
  %56 = icmp ne %struct.TYPE_23__* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @ExecComputeStoredGenerated(%struct.TYPE_27__* %67, i32* %68)
  br label %70

70:                                               ; preds = %66, %57, %49
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  %76 = icmp ne %struct.TYPE_23__* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %81 = call i32 @ExecConstraints(%struct.TYPE_25__* %78, i32* %79, %struct.TYPE_27__* %80)
  br label %82

82:                                               ; preds = %77, %70
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %91 = call i32 @ExecPartitionCheck(%struct.TYPE_25__* %88, i32* %89, %struct.TYPE_27__* %90, i32 1)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @simple_table_tuple_insert(%struct.TYPE_26__* %95, i32* %96)
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %105 = load i32*, i32** @NIL, align 8
  %106 = call i32* @ExecInsertIndexTuples(i32* %103, %struct.TYPE_27__* %104, i32 0, i32* null, i32* %105)
  store i32* %106, i32** %8, align 8
  br label %107

107:                                              ; preds = %102, %92
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @ExecARInsertTriggers(%struct.TYPE_27__* %108, %struct.TYPE_25__* %109, i32* %110, i32* %111, i32* null)
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @list_free(i32* %113)
  br label %115

115:                                              ; preds = %107, %46
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CheckCmdReplicaIdentity(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ExecBRInsertTriggers(%struct.TYPE_27__*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @ExecComputeStoredGenerated(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @ExecConstraints(%struct.TYPE_25__*, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @ExecPartitionCheck(%struct.TYPE_25__*, i32*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @simple_table_tuple_insert(%struct.TYPE_26__*, i32*) #1

declare dso_local i32* @ExecInsertIndexTuples(i32*, %struct.TYPE_27__*, i32, i32*, i32*) #1

declare dso_local i32 @ExecARInsertTriggers(%struct.TYPE_27__*, %struct.TYPE_25__*, i32*, i32*, i32*) #1

declare dso_local i32 @list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
