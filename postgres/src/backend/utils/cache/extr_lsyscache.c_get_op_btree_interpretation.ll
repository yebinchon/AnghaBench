; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_op_btree_interpretation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_op_btree_interpretation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i64 }

@NIL = common dso_local global i32* null, align 8
@AMOPOPID = common dso_local global i32 0, align 4
@BTREE_AM_OID = common dso_local global i64 0, align 8
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@ROWCOMPARE_NE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_op_btree_interpretation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load i32*, i32** @NIL, align 8
  store i32* %14, i32** %3, align 8
  %15 = load i32, i32* @AMOPOPID, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call %struct.TYPE_11__* @SearchSysCacheList1(i32 %15, i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %81, %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %28, i64 %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @GETSTRUCT(i32* %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %8, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BTREE_AM_OID, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %81

44:                                               ; preds = %25
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  %53 = icmp sle i32 %52, 5
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i1 [ false, %44 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  %58 = call i64 @palloc(i32 16)
  %59 = inttoptr i64 %58 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %4, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = call i32* @lappend(i32* %78, %struct.TYPE_9__* %79)
  store i32* %80, i32** %3, align 8
  br label %81

81:                                               ; preds = %54, %43
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %19

84:                                               ; preds = %19
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = call i32 @ReleaseSysCacheList(%struct.TYPE_11__* %85)
  %87 = load i32*, i32** %3, align 8
  %88 = load i32*, i32** @NIL, align 8
  %89 = icmp eq i32* %87, %88
  br i1 %89, label %90, label %175

90:                                               ; preds = %84
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @get_negator(i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @OidIsValid(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %174

96:                                               ; preds = %90
  %97 = load i32, i32* @AMOPOPID, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @ObjectIdGetDatum(i32 %98)
  %100 = call %struct.TYPE_11__* @SearchSysCacheList1(i32 %97, i32 %99)
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %168, %96
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %171

107:                                              ; preds = %101
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %110, i64 %112
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i32* %115, i32** %11, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @GETSTRUCT(i32* %116)
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %12, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @BTREE_AM_OID, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %107
  br label %168

126:                                              ; preds = %107
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp sge i32 %131, 1
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* %13, align 4
  %135 = icmp sle i32 %134, 5
  br label %136

136:                                              ; preds = %133, %126
  %137 = phi i1 [ false, %126 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @Assert(i32 %138)
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @BTEqualStrategyNumber, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %168

144:                                              ; preds = %136
  %145 = call i64 @palloc(i32 16)
  %146 = inttoptr i64 %145 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %146, %struct.TYPE_9__** %4, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @ROWCOMPARE_NE, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32*, i32** %3, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %167 = call i32* @lappend(i32* %165, %struct.TYPE_9__* %166)
  store i32* %167, i32** %3, align 8
  br label %168

168:                                              ; preds = %144, %143, %125
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %101

171:                                              ; preds = %101
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %173 = call i32 @ReleaseSysCacheList(%struct.TYPE_11__* %172)
  br label %174

174:                                              ; preds = %171, %90
  br label %175

175:                                              ; preds = %174, %84
  %176 = load i32*, i32** %3, align 8
  ret i32* %176
}

declare dso_local %struct.TYPE_11__* @SearchSysCacheList1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ReleaseSysCacheList(%struct.TYPE_11__*) #1

declare dso_local i32 @get_negator(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
