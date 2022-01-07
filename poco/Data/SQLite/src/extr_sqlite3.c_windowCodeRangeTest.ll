; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowCodeRangeTest.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowCodeRangeTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@OP_Add = common dso_local global i32 0, align 4
@OP_Le = common dso_local global i32 0, align 4
@OP_Lt = common dso_local global i32 0, align 4
@OP_Subtract = common dso_local global i32 0, align 4
@OP_String8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@P4_STATIC = common dso_local global i32 0, align 4
@SQLITE_NULLEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i32, i32, i32, i32)* @windowCodeRangeTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowCodeRangeTest(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %13, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %24 = call i32* @sqlite3GetVdbe(%struct.TYPE_15__* %23)
  store i32* %24, i32** %14, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %26 = call i32 @sqlite3GetTempReg(%struct.TYPE_15__* %25)
  store i32 %26, i32* %15, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %28 = call i32 @sqlite3GetTempReg(%struct.TYPE_15__* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* @OP_Add, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 129
  br i1 %35, label %43, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @OP_Le, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %39, %36, %6
  %44 = phi i1 [ true, %36 ], [ true, %6 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br label %62

62:                                               ; preds = %53, %43
  %63 = phi i1 [ false, %43 ], [ %61, %53 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %62
  %78 = load i32, i32* %8, align 4
  switch i32 %78, label %83 [
    i32 129, label %79
    i32 128, label %81
  ]

79:                                               ; preds = %77
  %80 = load i32, i32* @OP_Le, align 4
  store i32 %80, i32* %8, align 4
  br label %89

81:                                               ; preds = %77
  %82 = load i32, i32* @OP_Lt, align 4
  store i32 %82, i32* %8, align 4
  br label %89

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @OP_Le, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  store i32 129, i32* %8, align 4
  br label %89

89:                                               ; preds = %83, %81, %79
  %90 = load i32, i32* @OP_Subtract, align 4
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %89, %62
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @windowReadPeerValues(%struct.TYPE_14__* %92, i32 %93, i32 %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @windowReadPeerValues(%struct.TYPE_14__* %96, i32 %97, i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* @OP_String8, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* @P4_STATIC, align 4
  %104 = call i32 @sqlite3VdbeAddOp4(i32* %100, i32 %101, i32 0, i32 %102, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @sqlite3VdbeAddOp3(i32* %105, i32 129, i32 %106, i32 0, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @VdbeCoverage(i32* %109)
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @sqlite3VdbeAddOp3(i32* %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32*, i32** %14, align 8
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @sqlite3VdbeJumpHere(i32* %117, i32 %118)
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @sqlite3VdbeAddOp3(i32* %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @VdbeCoverage(i32* %126)
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* @SQLITE_NULLEQ, align 4
  %130 = call i32 @sqlite3VdbeChangeP5(i32* %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 129
  br i1 %132, label %144, label %133

133:                                              ; preds = %91
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 128
  br i1 %135, label %144, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @OP_Lt, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @OP_Le, align 4
  %143 = icmp eq i32 %141, %142
  br label %144

144:                                              ; preds = %140, %136, %133, %91
  %145 = phi i1 [ true, %136 ], [ true, %133 ], [ true, %91 ], [ %143, %140 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = icmp eq i32 %148, 129
  %150 = zext i1 %149 to i32
  %151 = call i32 @testcase(i32 %150)
  %152 = load i32*, i32** %14, align 8
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %153, 129
  %155 = zext i1 %154 to i32
  %156 = call i32 @VdbeCoverageIf(i32* %152, i32 %155)
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @OP_Lt, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @testcase(i32 %160)
  %162 = load i32*, i32** %14, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @OP_Lt, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @VdbeCoverageIf(i32* %162, i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @OP_Le, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @testcase(i32 %171)
  %173 = load i32*, i32** %14, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @OP_Le, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @VdbeCoverageIf(i32* %173, i32 %177)
  %179 = load i32, i32* %8, align 4
  %180 = icmp eq i32 %179, 128
  %181 = zext i1 %180 to i32
  %182 = call i32 @testcase(i32 %181)
  %183 = load i32*, i32** %14, align 8
  %184 = load i32, i32* %8, align 4
  %185 = icmp eq i32 %184, 128
  %186 = zext i1 %185 to i32
  %187 = call i32 @VdbeCoverageIf(i32* %183, i32 %186)
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %189 = load i32, i32* %15, align 4
  %190 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_15__* %188, i32 %189)
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_15__* %191, i32 %192)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_15__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @windowReadPeerValues(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
