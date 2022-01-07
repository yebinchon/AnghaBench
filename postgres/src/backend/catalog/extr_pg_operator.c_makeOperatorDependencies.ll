; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_makeOperatorDependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_makeOperatorDependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OperatorRelationId = common dso_local global i8* null, align 8
@NamespaceRelationId = common dso_local global i8* null, align 8
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i8* null, align 8
@ProcedureRelationId = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeOperatorDependencies(%struct.TYPE_7__* noalias sret %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store i32 %1, i32* %4, align 4
  store i32 %2, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GETSTRUCT(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load i8*, i8** @OperatorRelationId, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @deleteDependencyRecordsFor(i8* %23, i32 %25, i32 1)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @deleteSharedDependencyRecordsFor(i8* %28, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %21, %3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @OidIsValid(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i8*, i8** @NamespaceRelationId, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %47 = call i32 @recordDependencyOn(%struct.TYPE_7__* %0, %struct.TYPE_7__* %7, i32 %46)
  br label %48

48:                                               ; preds = %38, %32
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @OidIsValid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i8*, i8** @TypeRelationId, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %63 = call i32 @recordDependencyOn(%struct.TYPE_7__* %0, %struct.TYPE_7__* %7, i32 %62)
  br label %64

64:                                               ; preds = %54, %48
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @OidIsValid(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i8*, i8** @TypeRelationId, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %79 = call i32 @recordDependencyOn(%struct.TYPE_7__* %0, %struct.TYPE_7__* %7, i32 %78)
  br label %80

80:                                               ; preds = %70, %64
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @OidIsValid(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load i8*, i8** @TypeRelationId, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %87, i8** %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %95 = call i32 @recordDependencyOn(%struct.TYPE_7__* %0, %struct.TYPE_7__* %7, i32 %94)
  br label %96

96:                                               ; preds = %86, %80
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @OidIsValid(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load i8*, i8** @ProcedureRelationId, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %103, i8** %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %111 = call i32 @recordDependencyOn(%struct.TYPE_7__* %0, %struct.TYPE_7__* %7, i32 %110)
  br label %112

112:                                              ; preds = %102, %96
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @OidIsValid(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %112
  %119 = load i8*, i8** @ProcedureRelationId, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %119, i8** %120, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %127 = call i32 @recordDependencyOn(%struct.TYPE_7__* %0, %struct.TYPE_7__* %7, i32 %126)
  br label %128

128:                                              ; preds = %118, %112
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @OidIsValid(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load i8*, i8** @ProcedureRelationId, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %135, i8** %136, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %139, i32* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %143 = call i32 @recordDependencyOn(%struct.TYPE_7__* %0, %struct.TYPE_7__* %7, i32 %142)
  br label %144

144:                                              ; preds = %134, %128
  %145 = load i8*, i8** @OperatorRelationId, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @recordDependencyOnOwner(i8* %145, i32 %148, i32 %151)
  %153 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_7__* %0, i32 1)
  ret void
}

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @deleteDependencyRecordsFor(i8*, i32, i32) #1

declare dso_local i32 @deleteSharedDependencyRecordsFor(i8*, i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @recordDependencyOnOwner(i8*, i32, i32) #1

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
