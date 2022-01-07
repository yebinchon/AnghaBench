; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_substExpr.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_substExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, i64, %struct.TYPE_19__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i32, %struct.TYPE_22__, %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i32, i32 }

@EP_FromJoin = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_NULL = common dso_local global i64 0, align 8
@TK_IF_NULL_ROW = common dso_local global i64 0, align 8
@EP_xIsSelect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_23__*, %struct.TYPE_24__*)* @substExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @substExpr(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %11 = icmp eq %struct.TYPE_24__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %220

13:                                               ; preds = %2
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = load i32, i32* @EP_FromJoin, align 4
  %16 = call i64 @ExprHasProperty(%struct.TYPE_24__* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %18, %13
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TK_COLUMN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %164

38:                                               ; preds = %32
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %164

46:                                               ; preds = %38
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i64, i64* @TK_NULL, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %163

55:                                               ; preds = %46
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %65, align 8
  store %struct.TYPE_24__* %66, %struct.TYPE_24__** %7, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = icmp ne %struct.TYPE_21__* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %55
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %74, %79
  br label %81

81:                                               ; preds = %71, %55
  %82 = phi i1 [ false, %55 ], [ %80, %71 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 7
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %86, align 8
  %88 = icmp eq %struct.TYPE_24__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %91, align 8
  %93 = icmp eq %struct.TYPE_24__* %92, null
  br label %94

94:                                               ; preds = %89, %81
  %95 = phi i1 [ false, %81 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %99 = call i64 @sqlite3ExprIsVector(%struct.TYPE_24__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %106 = call i32 @sqlite3VectorErrorMsg(%struct.TYPE_19__* %104, %struct.TYPE_24__* %105)
  br label %162

107:                                              ; preds = %94
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %9, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %107
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TK_COLUMN, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = call i32 @memset(%struct.TYPE_24__* %8, i32 0, i32 64)
  %125 = load i64, i64* @TK_IF_NULL_ROW, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  store i64 %125, i64* %126, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 7
  store %struct.TYPE_24__* %127, %struct.TYPE_24__** %128, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  store i64 %131, i64* %132, align 8
  store %struct.TYPE_24__* %8, %struct.TYPE_24__** %7, align 8
  br label %133

133:                                              ; preds = %123, %117, %107
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %136 = call %struct.TYPE_24__* @sqlite3ExprDup(i32* %134, %struct.TYPE_24__* %135, i32 0)
  store %struct.TYPE_24__* %136, %struct.TYPE_24__** %6, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %138 = icmp ne %struct.TYPE_24__* %137, null
  br i1 %138, label %139, label %157

139:                                              ; preds = %133
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @EP_FromJoin, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %139
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @EP_FromJoin, align 4
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %146, %139, %133
  %158 = load i32*, i32** %9, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %160 = call i32 @sqlite3ExprDelete(i32* %158, %struct.TYPE_24__* %159)
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %161, %struct.TYPE_24__** %5, align 8
  br label %162

162:                                              ; preds = %157, %101
  br label %163

163:                                              ; preds = %162, %51
  br label %218

164:                                              ; preds = %38, %32
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @TK_IF_NULL_ROW, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %173, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %170
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 2
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %178, %170, %164
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 7
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %187, align 8
  %189 = call %struct.TYPE_24__* @substExpr(%struct.TYPE_23__* %185, %struct.TYPE_24__* %188)
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 7
  store %struct.TYPE_24__* %189, %struct.TYPE_24__** %191, align 8
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 6
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %194, align 8
  %196 = call %struct.TYPE_24__* @substExpr(%struct.TYPE_23__* %192, %struct.TYPE_24__* %195)
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 6
  store %struct.TYPE_24__* %196, %struct.TYPE_24__** %198, align 8
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %200 = load i32, i32* @EP_xIsSelect, align 4
  %201 = call i64 @ExprHasProperty(%struct.TYPE_24__* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %184
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @substSelect(%struct.TYPE_23__* %204, i32 %208, i32 1)
  br label %217

210:                                              ; preds = %184
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @substExprList(%struct.TYPE_23__* %211, i32 %215)
  br label %217

217:                                              ; preds = %210, %203
  br label %218

218:                                              ; preds = %217, %163
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %219, %struct.TYPE_24__** %3, align 8
  br label %220

220:                                              ; preds = %218, %12
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  ret %struct.TYPE_24__* %221
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3ExprIsVector(%struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3VectorErrorMsg(%struct.TYPE_19__*, %struct.TYPE_24__*) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local %struct.TYPE_24__* @sqlite3ExprDup(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @substSelect(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @substExprList(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
