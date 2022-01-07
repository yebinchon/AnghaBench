; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_exprCodeBetween.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_exprCodeBetween.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, %struct.TYPE_20__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }

@EP_xIsSelect = common dso_local global i32 0, align 4
@TK_AND = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_20__*, i32, void (i32*, %struct.TYPE_20__*, i32, i32)*, i32)* @exprCodeBetween to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exprCodeBetween(i32* %0, %struct.TYPE_20__* %1, i32 %2, void (i32*, %struct.TYPE_20__*, i32, i32)* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (i32*, %struct.TYPE_20__*, i32, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (i32*, %struct.TYPE_20__*, i32, i32)* %3, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %16 = call i32 @memset(%struct.TYPE_20__* %12, i32 0, i32 40)
  %17 = call i32 @memset(%struct.TYPE_20__* %13, i32 0, i32 40)
  %18 = call i32 @memset(%struct.TYPE_20__* %11, i32 0, i32 40)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = load i32, i32* @EP_xIsSelect, align 4
  %21 = call i32 @ExprHasProperty(%struct.TYPE_20__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = call i32 @exprNodeCopy(%struct.TYPE_20__* %14, %struct.TYPE_20__* %28)
  %30 = load i32, i32* @TK_AND, align 4
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 3
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %33, align 8
  %34 = load i32, i32* @TK_GE, align 4
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %36, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %46, align 8
  %47 = load i32, i32* @TK_LE, align 4
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 4
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 3
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %49, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @exprCodeVector(i32* %60, %struct.TYPE_20__* %14, i32* %15)
  %62 = call i32 @exprToRegister(%struct.TYPE_20__* %14, i32 %61)
  %63 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %64 = icmp ne void (i32*, %struct.TYPE_20__*, i32, i32)* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %5
  %66 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  call void %66(i32* %67, %struct.TYPE_20__* %11, i32 %68, i32 %69)
  br label %78

70:                                               ; preds = %5
  %71 = load i32, i32* @EP_FromJoin, align 4
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @sqlite3ExprCodeTarget(i32* %75, %struct.TYPE_20__* %11, i32 %76)
  br label %78

78:                                               ; preds = %70, %65
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @sqlite3ReleaseTempReg(i32* %79, i32 %80)
  %82 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %83 = icmp eq void (i32*, %struct.TYPE_20__*, i32, i32)* %82, @sqlite3ExprIfTrue
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 0
  br label %90

90:                                               ; preds = %87, %84, %78
  %91 = phi i1 [ false, %84 ], [ false, %78 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @testcase(i32 %92)
  %94 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %95 = icmp eq void (i32*, %struct.TYPE_20__*, i32, i32)* %94, @sqlite3ExprIfTrue
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %99, %96, %90
  %103 = phi i1 [ false, %96 ], [ false, %90 ], [ %101, %99 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @testcase(i32 %104)
  %106 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %107 = icmp eq void (i32*, %struct.TYPE_20__*, i32, i32)* %106, @sqlite3ExprIfTrue
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %112, 0
  br label %114

114:                                              ; preds = %111, %108, %102
  %115 = phi i1 [ false, %108 ], [ false, %102 ], [ %113, %111 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @testcase(i32 %116)
  %118 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %119 = icmp eq void (i32*, %struct.TYPE_20__*, i32, i32)* %118, @sqlite3ExprIfTrue
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br label %126

126:                                              ; preds = %123, %120, %114
  %127 = phi i1 [ false, %120 ], [ false, %114 ], [ %125, %123 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @testcase(i32 %128)
  %130 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %131 = icmp eq void (i32*, %struct.TYPE_20__*, i32, i32)* %130, @sqlite3ExprIfFalse
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* %15, align 4
  %137 = icmp eq i32 %136, 0
  br label %138

138:                                              ; preds = %135, %132, %126
  %139 = phi i1 [ false, %132 ], [ false, %126 ], [ %137, %135 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @testcase(i32 %140)
  %142 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %143 = icmp eq void (i32*, %struct.TYPE_20__*, i32, i32)* %142, @sqlite3ExprIfFalse
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br label %150

150:                                              ; preds = %147, %144, %138
  %151 = phi i1 [ false, %144 ], [ false, %138 ], [ %149, %147 ]
  %152 = zext i1 %151 to i32
  %153 = call i32 @testcase(i32 %152)
  %154 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %155 = icmp eq void (i32*, %struct.TYPE_20__*, i32, i32)* %154, @sqlite3ExprIfFalse
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %15, align 4
  %161 = icmp eq i32 %160, 0
  br label %162

162:                                              ; preds = %159, %156, %150
  %163 = phi i1 [ false, %156 ], [ false, %150 ], [ %161, %159 ]
  %164 = zext i1 %163 to i32
  %165 = call i32 @testcase(i32 %164)
  %166 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %167 = icmp eq void (i32*, %struct.TYPE_20__*, i32, i32)* %166, @sqlite3ExprIfFalse
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br label %174

174:                                              ; preds = %171, %168, %162
  %175 = phi i1 [ false, %168 ], [ false, %162 ], [ %173, %171 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @testcase(i32 %176)
  %178 = load void (i32*, %struct.TYPE_20__*, i32, i32)*, void (i32*, %struct.TYPE_20__*, i32, i32)** %9, align 8
  %179 = icmp eq void (i32*, %struct.TYPE_20__*, i32, i32)* %178, null
  %180 = zext i1 %179 to i32
  %181 = call i32 @testcase(i32 %180)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @exprNodeCopy(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @exprToRegister(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @exprCodeVector(i32*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @sqlite3ExprCodeTarget(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local void @sqlite3ExprIfTrue(i32*, %struct.TYPE_20__*, i32, i32) #1

declare dso_local void @sqlite3ExprIfFalse(i32*, %struct.TYPE_20__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
