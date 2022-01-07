; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_substExpr.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_substExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64, i64, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i64, i64, i64, %struct.TYPE_23__, %struct.TYPE_25__*, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i32, i32 }

@EP_FromJoin = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_NULL = common dso_local global i64 0, align 8
@TK_IF_NULL_ROW = common dso_local global i64 0, align 8
@EP_Subquery = common dso_local global i32 0, align 4
@EP_CanBeNull = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (%struct.TYPE_24__*, %struct.TYPE_25__*)* @substExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @substExpr(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %11 = icmp eq %struct.TYPE_25__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %3, align 8
  br label %225

13:                                               ; preds = %2
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %15 = load i32, i32* @EP_FromJoin, align 4
  %16 = call i64 @ExprHasProperty(%struct.TYPE_25__* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %18, %13
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TK_COLUMN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %169

38:                                               ; preds = %32
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %169

46:                                               ; preds = %38
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i64, i64* @TK_NULL, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %168

55:                                               ; preds = %46
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %65, align 8
  store %struct.TYPE_25__* %66, %struct.TYPE_25__** %7, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = icmp ne %struct.TYPE_22__* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %55
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %74, %79
  br label %81

81:                                               ; preds = %71, %55
  %82 = phi i1 [ false, %55 ], [ %80, %71 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %86, align 8
  %88 = icmp eq %struct.TYPE_25__* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %92 = call i64 @sqlite3ExprIsVector(%struct.TYPE_25__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %81
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %99 = call i32 @sqlite3VectorErrorMsg(%struct.TYPE_20__* %97, %struct.TYPE_25__* %98)
  br label %167

100:                                              ; preds = %81
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %9, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %100
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TK_COLUMN, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = call i32 @memset(%struct.TYPE_25__* %8, i32 0, i32 56)
  %118 = load i64, i64* @TK_IF_NULL_ROW, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  store i64 %118, i64* %119, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 6
  store %struct.TYPE_25__* %120, %struct.TYPE_25__** %121, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 2
  store i64 %124, i64* %125, align 8
  store %struct.TYPE_25__* %8, %struct.TYPE_25__** %7, align 8
  br label %126

126:                                              ; preds = %116, %110, %100
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %128 = load i32, i32* @EP_Subquery, align 4
  %129 = call i64 @ExprHasProperty(%struct.TYPE_25__* %127, i32 %128)
  %130 = call i32 @testcase(i64 %129)
  %131 = load i32*, i32** %9, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %133 = call %struct.TYPE_25__* @sqlite3ExprDup(i32* %131, %struct.TYPE_25__* %132, i32 0)
  store %struct.TYPE_25__* %133, %struct.TYPE_25__** %6, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %135 = icmp ne %struct.TYPE_25__* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %126
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %143 = load i32, i32* @EP_CanBeNull, align 4
  %144 = call i32 @ExprSetProperty(%struct.TYPE_25__* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %136, %126
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %147 = icmp ne %struct.TYPE_25__* %146, null
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %150 = load i32, i32* @EP_FromJoin, align 4
  %151 = call i64 @ExprHasProperty(%struct.TYPE_25__* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %160 = load i32, i32* @EP_FromJoin, align 4
  %161 = call i32 @ExprSetProperty(%struct.TYPE_25__* %159, i32 %160)
  br label %162

162:                                              ; preds = %153, %148, %145
  %163 = load i32*, i32** %9, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %165 = call i32 @sqlite3ExprDelete(i32* %163, %struct.TYPE_25__* %164)
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %166, %struct.TYPE_25__** %5, align 8
  br label %167

167:                                              ; preds = %162, %94
  br label %168

168:                                              ; preds = %167, %51
  br label %223

169:                                              ; preds = %38, %32
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @TK_IF_NULL_ROW, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %169
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %178, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %175
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %183, %175, %169
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 6
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %192, align 8
  %194 = call %struct.TYPE_25__* @substExpr(%struct.TYPE_24__* %190, %struct.TYPE_25__* %193)
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 6
  store %struct.TYPE_25__* %194, %struct.TYPE_25__** %196, align 8
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %199, align 8
  %201 = call %struct.TYPE_25__* @substExpr(%struct.TYPE_24__* %197, %struct.TYPE_25__* %200)
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 5
  store %struct.TYPE_25__* %201, %struct.TYPE_25__** %203, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %205 = load i32, i32* @EP_xIsSelect, align 4
  %206 = call i64 @ExprHasProperty(%struct.TYPE_25__* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %189
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @substSelect(%struct.TYPE_24__* %209, i32 %213, i32 1)
  br label %222

215:                                              ; preds = %189
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @substExprList(%struct.TYPE_24__* %216, i32 %220)
  br label %222

222:                                              ; preds = %215, %208
  br label %223

223:                                              ; preds = %222, %168
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %224, %struct.TYPE_25__** %3, align 8
  br label %225

225:                                              ; preds = %223, %12
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  ret %struct.TYPE_25__* %226
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3ExprIsVector(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VectorErrorMsg(%struct.TYPE_20__*, %struct.TYPE_25__*) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @testcase(i64) #1

declare dso_local %struct.TYPE_25__* @sqlite3ExprDup(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @substSelect(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @substExprList(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
