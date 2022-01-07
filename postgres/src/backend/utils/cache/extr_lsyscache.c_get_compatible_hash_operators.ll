; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_compatible_hash_operators.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_compatible_hash_operators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@AMOPOPID = common dso_local global i32 0, align 4
@HASH_AM_OID = common dso_local global i64 0, align 8
@HTEqualStrategyNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_compatible_hash_operators(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @InvalidOid, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @InvalidOid, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @AMOPOPID, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ObjectIdGetDatum(i32 %25)
  %27 = call %struct.TYPE_8__* @SearchSysCacheList1(i32 %24, i32 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %135, %23
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %138

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @GETSTRUCT(i32* %43)
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %11, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HASH_AM_OID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %134

52:                                               ; preds = %34
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HTEqualStrategyNumber, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %134

58:                                               ; preds = %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %58
  %67 = load i32*, i32** %5, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  store i32 1, i32* %7, align 4
  br label %138

79:                                               ; preds = %58
  %80 = load i32*, i32** %5, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @HTEqualStrategyNumber, align 8
  %93 = call i32 @get_opfamily_member(i32 %85, i64 %88, i64 %91, i64 %92)
  %94 = load i32*, i32** %5, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @OidIsValid(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %82
  br label %135

100:                                              ; preds = %82
  %101 = load i32*, i32** %6, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  br label %138

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %79
  %106 = load i32*, i32** %6, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %133

108:                                              ; preds = %105
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @HTEqualStrategyNumber, align 8
  %119 = call i32 @get_opfamily_member(i32 %111, i64 %114, i64 %117, i64 %118)
  %120 = load i32*, i32** %6, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @OidIsValid(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %108
  %126 = load i32*, i32** %5, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @InvalidOid, align 4
  %130 = load i32*, i32** %5, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %125
  br label %135

132:                                              ; preds = %108
  store i32 1, i32* %7, align 4
  br label %138

133:                                              ; preds = %105
  br label %134

134:                                              ; preds = %133, %52, %34
  br label %135

135:                                              ; preds = %134, %131, %99
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %28

138:                                              ; preds = %132, %103, %78, %28
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %140 = call i32 @ReleaseSysCacheList(%struct.TYPE_8__* %139)
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_8__* @SearchSysCacheList1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @get_opfamily_member(i32, i64, i64, i64) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ReleaseSysCacheList(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
