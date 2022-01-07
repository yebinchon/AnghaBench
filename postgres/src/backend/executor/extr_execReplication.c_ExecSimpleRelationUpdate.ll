; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_ExecSimpleRelationUpdate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_ExecSimpleRelationUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64, i64, %struct.TYPE_32__*, %struct.TYPE_37__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_37__ = type { %struct.TYPE_34__*, %struct.TYPE_31__* }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_35__ = type { i32 }

@RELKIND_RELATION = common dso_local global i64 0, align 8
@CMD_UPDATE = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecSimpleRelationUpdate(%struct.TYPE_38__* %0, i32* %1, %struct.TYPE_35__* %2, %struct.TYPE_35__* %3) #0 {
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_35__* %3, %struct.TYPE_35__** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  store %struct.TYPE_36__* %17, %struct.TYPE_36__** %10, align 8
  %18 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  store %struct.TYPE_37__* %20, %struct.TYPE_37__** %11, align 8
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %21, i32 0, i32 0
  store i32* %22, i32** %12, align 8
  %23 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RELKIND_RELATION, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %33 = load i32, i32* @CMD_UPDATE, align 4
  %34 = call i32 @CheckCmdReplicaIdentity(%struct.TYPE_37__* %32, i32 %33)
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %36, align 8
  %38 = icmp ne %struct.TYPE_32__* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %4
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %52 = call i32 @ExecBRUpdateTriggers(%struct.TYPE_38__* %47, i32* %48, %struct.TYPE_36__* %49, i32* %50, i32* null, %struct.TYPE_35__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %46
  br label %56

56:                                               ; preds = %55, %39, %4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %131, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** @NIL, align 8
  store i32* %60, i32** %13, align 8
  %61 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %64, align 8
  %66 = icmp ne %struct.TYPE_33__* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %59
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %79 = call i32 @ExecComputeStoredGenerated(%struct.TYPE_38__* %77, %struct.TYPE_35__* %78)
  br label %80

80:                                               ; preds = %76, %67, %59
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_34__*, %struct.TYPE_34__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %84, align 8
  %86 = icmp ne %struct.TYPE_33__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %89 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %90 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %91 = call i32 @ExecConstraints(%struct.TYPE_36__* %88, %struct.TYPE_35__* %89, %struct.TYPE_38__* %90)
  br label %92

92:                                               ; preds = %87, %80
  %93 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %101 = call i32 @ExecPartitionCheck(%struct.TYPE_36__* %98, %struct.TYPE_35__* %99, %struct.TYPE_38__* %100, i32 1)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %106 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @simple_table_tuple_update(%struct.TYPE_37__* %103, i32* %104, %struct.TYPE_35__* %105, i32 %108, i32* %14)
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %102
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %119 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %120 = load i32*, i32** @NIL, align 8
  %121 = call i32* @ExecInsertIndexTuples(%struct.TYPE_35__* %118, %struct.TYPE_38__* %119, i32 0, i32* null, i32* %120)
  store i32* %121, i32** %13, align 8
  br label %122

122:                                              ; preds = %117, %114, %102
  %123 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %124 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = call i32 @ExecARUpdateTriggers(%struct.TYPE_38__* %123, %struct.TYPE_36__* %124, i32* %125, i32* null, %struct.TYPE_35__* %126, i32* %127, i32* null)
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @list_free(i32* %129)
  br label %131

131:                                              ; preds = %122, %56
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CheckCmdReplicaIdentity(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @ExecBRUpdateTriggers(%struct.TYPE_38__*, i32*, %struct.TYPE_36__*, i32*, i32*, %struct.TYPE_35__*) #1

declare dso_local i32 @ExecComputeStoredGenerated(%struct.TYPE_38__*, %struct.TYPE_35__*) #1

declare dso_local i32 @ExecConstraints(%struct.TYPE_36__*, %struct.TYPE_35__*, %struct.TYPE_38__*) #1

declare dso_local i32 @ExecPartitionCheck(%struct.TYPE_36__*, %struct.TYPE_35__*, %struct.TYPE_38__*, i32) #1

declare dso_local i32 @simple_table_tuple_update(%struct.TYPE_37__*, i32*, %struct.TYPE_35__*, i32, i32*) #1

declare dso_local i32* @ExecInsertIndexTuples(%struct.TYPE_35__*, %struct.TYPE_38__*, i32, i32*, i32*) #1

declare dso_local i32 @ExecARUpdateTriggers(%struct.TYPE_38__*, %struct.TYPE_36__*, i32*, i32*, %struct.TYPE_35__*, i32*, i32*) #1

declare dso_local i32 @list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
