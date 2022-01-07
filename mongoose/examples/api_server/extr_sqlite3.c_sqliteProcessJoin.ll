; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqliteProcessJoin.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqliteProcessJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i32, %struct.TYPE_21__*, i64, i32, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }

@JT_OUTER = common dso_local global i32 0, align 4
@JT_NATURAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"a NATURAL join may not have an ON or USING clause\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"cannot have both ON and USING clauses in the same join\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"cannot join using column %s - column not present in both tables\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @sqliteProcessJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqliteProcessJoin(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.SrcList_item*, align 8
  %10 = alloca %struct.SrcList_item*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %6, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load %struct.SrcList_item*, %struct.SrcList_item** %26, align 8
  %28 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %27, i64 0
  store %struct.SrcList_item* %28, %struct.SrcList_item** %9, align 8
  %29 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %30 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %29, i64 1
  store %struct.SrcList_item* %30, %struct.SrcList_item** %10, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %223, %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %230

38:                                               ; preds = %31
  %39 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %40 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %39, i32 0, i32 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %11, align 8
  %42 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %43 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %42, i32 0, i32 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %12, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %46 = icmp eq %struct.TYPE_17__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %49 = icmp eq %struct.TYPE_17__* %48, null
  br label %50

50:                                               ; preds = %47, %38
  %51 = phi i1 [ true, %38 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @NEVER(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %223

56:                                               ; preds = %50
  %57 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %58 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @JT_OUTER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %65 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @JT_NATURAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %122

70:                                               ; preds = %56
  %71 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %72 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %77 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %76, i32 0, i32 1
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = icmp ne %struct.TYPE_21__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %70
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = call i32 (%struct.TYPE_20__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_20__* %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 1, i32* %3, align 4
  br label %231

83:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %118, %83
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %84
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %14, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i8*, i8** %14, align 8
  %103 = call i64 @tableAndColumnIndex(%struct.TYPE_18__* %99, i32 %101, i8* %102, i32* %15, i32* %16)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %90
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = call i32 @addWhereTerm(%struct.TYPE_20__* %106, %struct.TYPE_18__* %107, i32 %108, i32 %109, i32 %111, i32 %112, i32 %113, i32* %115)
  br label %117

117:                                              ; preds = %105, %90
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %84

121:                                              ; preds = %84
  br label %122

122:                                              ; preds = %121, %56
  %123 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %124 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %129 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %128, i32 0, i32 1
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  %131 = icmp ne %struct.TYPE_21__* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %134 = call i32 (%struct.TYPE_20__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_20__* %133, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %231

135:                                              ; preds = %127, %122
  %136 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %137 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %166

140:                                              ; preds = %135
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %145 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %148 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @setJoinExpr(i64 %146, i32 %149)
  br label %151

151:                                              ; preds = %143, %140
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %159 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @sqlite3ExprAnd(i32 %154, i32 %157, i64 %160)
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %165 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %164, i32 0, i32 2
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %151, %135
  %167 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %168 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %167, i32 0, i32 1
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = icmp ne %struct.TYPE_21__* %169, null
  br i1 %170, label %171, label %222

171:                                              ; preds = %166
  %172 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %173 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %172, i32 0, i32 1
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  store %struct.TYPE_21__* %174, %struct.TYPE_21__** %17, align 8
  store i32 0, i32* %8, align 4
  br label %175

175:                                              ; preds = %218, %171
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %221

181:                                              ; preds = %175
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %18, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %191 = load i8*, i8** %18, align 8
  %192 = call i32 @columnIndex(%struct.TYPE_17__* %190, i8* %191)
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %21, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %181
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  %199 = load i8*, i8** %18, align 8
  %200 = call i64 @tableAndColumnIndex(%struct.TYPE_18__* %196, i32 %198, i8* %199, i32* %19, i32* %20)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %195, %181
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %204 = load i8*, i8** %18, align 8
  %205 = call i32 (%struct.TYPE_20__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_20__* %203, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %204)
  store i32 1, i32* %3, align 4
  br label %231

206:                                              ; preds = %195
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %209 = load i32, i32* %19, align 4
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* %13, align 4
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = call i32 @addWhereTerm(%struct.TYPE_20__* %207, %struct.TYPE_18__* %208, i32 %209, i32 %210, i32 %212, i32 %213, i32 %214, i32* %216)
  br label %218

218:                                              ; preds = %206
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %175

221:                                              ; preds = %175
  br label %222

222:                                              ; preds = %221, %166
  br label %223

223:                                              ; preds = %222, %55
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %7, align 4
  %226 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %227 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %226, i32 1
  store %struct.SrcList_item* %227, %struct.SrcList_item** %10, align 8
  %228 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %229 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %228, i32 1
  store %struct.SrcList_item* %229, %struct.SrcList_item** %9, align 8
  br label %31

230:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %202, %132, %80
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_20__*, i8*, ...) #1

declare dso_local i64 @tableAndColumnIndex(%struct.TYPE_18__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @addWhereTerm(%struct.TYPE_20__*, %struct.TYPE_18__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @setJoinExpr(i64, i32) #1

declare dso_local i32 @sqlite3ExprAnd(i32, i32, i64) #1

declare dso_local i32 @columnIndex(%struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
