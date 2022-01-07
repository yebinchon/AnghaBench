; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_exprCodeBetween.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_exprCodeBetween.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }

@EP_xIsSelect = common dso_local global i32 0, align 4
@TK_AND = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@TK_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i32, i32, i32)* @exprCodeBetween to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exprCodeBetween(i32* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = load i32, i32* @EP_xIsSelect, align 4
  %18 = call i32 @ExprHasProperty(%struct.TYPE_13__* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = bitcast %struct.TYPE_13__* %14 to i8*
  %27 = bitcast %struct.TYPE_13__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 32, i1 false)
  %28 = load i32, i32* @TK_AND, align 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 4
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %31, align 8
  %32 = load i32, i32* @TK_GE, align 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 4
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %44, align 8
  %45 = load i32, i32* @TK_LE, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %57, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @sqlite3ExprCodeTemp(i32* %58, %struct.TYPE_13__* %14, i32* %15)
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @TK_REGISTER, align 4
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %5
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @sqlite3ExprIfTrue(i32* %66, %struct.TYPE_13__* %11, i32 %67, i32 %68)
  br label %75

70:                                               ; preds = %5
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @sqlite3ExprIfFalse(i32* %71, %struct.TYPE_13__* %11, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @sqlite3ReleaseTempReg(i32* %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, 0
  br label %87

87:                                               ; preds = %84, %81, %75
  %88 = phi i1 [ false, %81 ], [ false, %75 ], [ %86, %84 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @testcase(i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %96, %93, %87
  %100 = phi i1 [ false, %93 ], [ false, %87 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @testcase(i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 0
  br label %111

111:                                              ; preds = %108, %105, %99
  %112 = phi i1 [ false, %105 ], [ false, %99 ], [ %110, %108 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @testcase(i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br label %123

123:                                              ; preds = %120, %117, %111
  %124 = phi i1 [ false, %117 ], [ false, %111 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @testcase(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %15, align 4
  %134 = icmp eq i32 %133, 0
  br label %135

135:                                              ; preds = %132, %129, %123
  %136 = phi i1 [ false, %129 ], [ false, %123 ], [ %134, %132 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @testcase(i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load i32, i32* %10, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br label %147

147:                                              ; preds = %144, %141, %135
  %148 = phi i1 [ false, %141 ], [ false, %135 ], [ %146, %144 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @testcase(i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %15, align 4
  %158 = icmp eq i32 %157, 0
  br label %159

159:                                              ; preds = %156, %153, %147
  %160 = phi i1 [ false, %153 ], [ false, %147 ], [ %158, %156 ]
  %161 = zext i1 %160 to i32
  %162 = call i32 @testcase(i32 %161)
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br label %171

171:                                              ; preds = %168, %165, %159
  %172 = phi i1 [ false, %165 ], [ false, %159 ], [ %170, %168 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @testcase(i32 %173)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_13__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sqlite3ExprCodeTemp(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @sqlite3ExprIfTrue(i32*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprIfFalse(i32*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
