; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vac_update_relstats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vac_update_relstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i32, i32, i32, i32 }

@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"pg_class entry for relid %u vanished during vacuuming\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vac_update_relstats(%struct.TYPE_8__* %0, i64 %1, double %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i64 %1, i64* %10, align 8
  store double %2, double* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = call i32 @RelationGetRelid(%struct.TYPE_8__* %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* @RelationRelationId, align 4
  %25 = load i32, i32* @RowExclusiveLock, align 4
  %26 = call %struct.TYPE_8__* @table_open(i32 %24, i32 %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %18, align 8
  %27 = load i32, i32* @RELOID, align 4
  %28 = load i32, i32* %17, align 4
  %29 = call i32 @ObjectIdGetDatum(i32 %28)
  %30 = call i32 @SearchSysCacheCopy1(i32 %27, i32 %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = call i32 @HeapTupleIsValid(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %8
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %8
  %39 = load i32, i32* %19, align 4
  %40 = call i64 @GETSTRUCT(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %20, align 8
  store i32 0, i32* %21, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 1, i32* %21, align 4
  br label %51

51:                                               ; preds = %47, %38
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load double, double* %11, align 8
  %56 = fptosi double %55 to i64
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load double, double* %11, align 8
  %60 = fptosi double %59 to i64
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  store i32 1, i32* %21, align 4
  br label %63

63:                                               ; preds = %58, %51
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  store i32 1, i32* %21, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %114, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  store i32 0, i32* %86, align 8
  store i32 1, i32* %21, align 4
  br label %87

87:                                               ; preds = %84, %81, %76
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  store i32 0, i32* %99, align 4
  store i32 1, i32* %21, align 4
  br label %100

100:                                              ; preds = %97, %92, %87
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 5
  store i32 0, i32* %112, align 8
  store i32 1, i32* %21, align 4
  br label %113

113:                                              ; preds = %110, %105, %100
  br label %114

114:                                              ; preds = %113, %73
  %115 = load i32, i32* %14, align 4
  %116 = call i64 @TransactionIdIsNormal(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %114
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %118
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i64 @TransactionIdPrecedes(i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = call i32 (...) @ReadNewTransactionId()
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @TransactionIdPrecedes(i32 %132, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131, %124
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 7
  store i32 %139, i32* %141, align 8
  store i32 1, i32* %21, align 4
  br label %142

142:                                              ; preds = %138, %131, %118, %114
  %143 = load i32, i32* %15, align 4
  %144 = call i64 @MultiXactIdIsValid(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %142
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %146
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i64 @MultiXactIdPrecedes(i32 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %152
  %160 = call i32 (...) @ReadNextMultiXactId()
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @MultiXactIdPrecedes(i32 %160, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159, %152
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 4
  store i32 1, i32* %21, align 4
  br label %170

170:                                              ; preds = %166, %159, %146, %142
  %171 = load i32, i32* %21, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @heap_inplace_update(%struct.TYPE_8__* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %170
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %179 = load i32, i32* @RowExclusiveLock, align 4
  %180 = call i32 @table_close(%struct.TYPE_8__* %178, i32 %179)
  ret void
}

declare dso_local i32 @RelationGetRelid(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @table_open(i32, i32) #1

declare dso_local i32 @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @TransactionIdIsNormal(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @ReadNewTransactionId(...) #1

declare dso_local i64 @MultiXactIdIsValid(i32) #1

declare dso_local i64 @MultiXactIdPrecedes(i32, i32) #1

declare dso_local i32 @ReadNextMultiXactId(...) #1

declare dso_local i32 @heap_inplace_update(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @table_close(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
