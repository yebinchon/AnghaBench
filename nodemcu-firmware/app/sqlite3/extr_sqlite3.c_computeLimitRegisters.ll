; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_computeLimitRegisters.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_computeLimitRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32 }

@OP_Integer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"LIMIT counter\00", align 1
@SF_FixedLimit = common dso_local global i32 0, align 4
@OP_MustBeInt = common dso_local global i32 0, align 4
@OP_IfNot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"OFFSET counter\00", align 1
@OP_OffsetLimit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"LIMIT+OFFSET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32)* @computeLimitRegisters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computeLimitRegisters(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %152

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %23, %16
  %29 = phi i1 [ true, %16 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %152

36:                                               ; preds = %28
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = call i32* @sqlite3GetVdbe(%struct.TYPE_9__* %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @sqlite3ExprIsInteger(i32 %51, i32* %10)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %36
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @OP_Integer, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @sqlite3VdbeAddOp2(i32* %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @VdbeComment(i32* bitcast ([14 x i8]* @.str to i32*))
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @sqlite3VdbeGoto(i32* %65, i32 %66)
  br label %89

68:                                               ; preds = %54
  %69 = load i32, i32* %10, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i64 @sqlite3LogEst(i32 %75)
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @sqlite3LogEst(i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* @SF_FixedLimit, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %78, %71, %68
  br label %89

89:                                               ; preds = %88, %64
  br label %112

90:                                               ; preds = %36
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @sqlite3ExprCode(%struct.TYPE_9__* %91, i32 %94, i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @OP_MustBeInt, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @sqlite3VdbeAddOp1(i32* %97, i32 %98, i32 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @VdbeCoverage(i32* %101)
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @VdbeComment(i32* bitcast ([14 x i8]* @.str to i32*))
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @OP_IfNot, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @sqlite3VdbeAddOp2(i32* %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @VdbeCoverage(i32* %110)
  br label %112

112:                                              ; preds = %90, %89
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %151

117:                                              ; preds = %112
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  store i32 %121, i32* %9, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @sqlite3ExprCode(%struct.TYPE_9__* %128, i32 %131, i32 %132)
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* @OP_MustBeInt, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @sqlite3VdbeAddOp1(i32* %134, i32 %135, i32 %136)
  %138 = load i32*, i32** %7, align 8
  %139 = call i32 @VdbeCoverage(i32* %138)
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @VdbeComment(i32* bitcast ([15 x i8]* @.str.1 to i32*))
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* @OP_OffsetLimit, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @sqlite3VdbeAddOp3(i32* %142, i32 %143, i32 %144, i32 %146, i32 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @VdbeComment(i32* bitcast ([13 x i8]* @.str.2 to i32*))
  br label %151

151:                                              ; preds = %117, %112
  br label %152

152:                                              ; preds = %15, %151, %28
  ret void
}

declare dso_local i32 @sqlite3ExprCacheClear(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_9__*) #1

declare dso_local i64 @sqlite3ExprIsInteger(i32, i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i64 @sqlite3LogEst(i32) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
