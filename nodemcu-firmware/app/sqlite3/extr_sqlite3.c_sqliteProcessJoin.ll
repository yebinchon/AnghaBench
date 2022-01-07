; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqliteProcessJoin.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqliteProcessJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { %struct.TYPE_23__*, i64, i32, %struct.TYPE_16__, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* }

@JT_OUTER = common dso_local global i32 0, align 4
@JT_NATURAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"a NATURAL join may not have an ON or USING clause\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"cannot have both ON and USING clauses in the same join\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"cannot join using column %s - column not present in both tables\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @sqliteProcessJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqliteProcessJoin(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.SrcList_item*, align 8
  %10 = alloca %struct.SrcList_item*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %6, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load %struct.SrcList_item*, %struct.SrcList_item** %26, align 8
  %28 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %27, i64 0
  store %struct.SrcList_item* %28, %struct.SrcList_item** %9, align 8
  %29 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %30 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %29, i64 1
  store %struct.SrcList_item* %30, %struct.SrcList_item** %10, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %225, %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %232

38:                                               ; preds = %31
  %39 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %40 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %39, i32 0, i32 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %11, align 8
  %42 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %43 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %42, i32 0, i32 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %12, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %46 = icmp eq %struct.TYPE_19__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %49 = icmp eq %struct.TYPE_19__* %48, null
  br label %50

50:                                               ; preds = %47, %38
  %51 = phi i1 [ true, %38 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @NEVER(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %225

56:                                               ; preds = %50
  %57 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %58 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @JT_OUTER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %13, align 4
  %65 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %66 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @JT_NATURAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %124

72:                                               ; preds = %56
  %73 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %74 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %79 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %78, i32 0, i32 0
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %79, align 8
  %81 = icmp ne %struct.TYPE_23__* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %72
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %84 = call i32 (%struct.TYPE_22__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_22__* %83, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 1, i32* %3, align 4
  br label %233

85:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %120, %85
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %86
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %14, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i8*, i8** %14, align 8
  %105 = call i64 @tableAndColumnIndex(%struct.TYPE_20__* %101, i32 %103, i8* %104, i32* %15, i32* %16)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %92
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = call i32 @addWhereTerm(%struct.TYPE_22__* %108, %struct.TYPE_20__* %109, i32 %110, i32 %111, i32 %113, i32 %114, i32 %115, i32* %117)
  br label %119

119:                                              ; preds = %107, %92
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %86

123:                                              ; preds = %86
  br label %124

124:                                              ; preds = %123, %56
  %125 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %126 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %131 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %130, i32 0, i32 0
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %131, align 8
  %133 = icmp ne %struct.TYPE_23__* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = call i32 (%struct.TYPE_22__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_22__* %135, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %233

137:                                              ; preds = %129, %124
  %138 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %139 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %137
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %147 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %150 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @setJoinExpr(i64 %148, i32 %151)
  br label %153

153:                                              ; preds = %145, %142
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %161 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @sqlite3ExprAnd(i32 %156, i32 %159, i64 %162)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %167 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  br label %168

168:                                              ; preds = %153, %137
  %169 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %170 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %169, i32 0, i32 0
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %170, align 8
  %172 = icmp ne %struct.TYPE_23__* %171, null
  br i1 %172, label %173, label %224

173:                                              ; preds = %168
  %174 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %175 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %174, i32 0, i32 0
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %175, align 8
  store %struct.TYPE_23__* %176, %struct.TYPE_23__** %17, align 8
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %220, %173
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %223

183:                                              ; preds = %177
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %18, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %193 = load i8*, i8** %18, align 8
  %194 = call i32 @columnIndex(%struct.TYPE_19__* %192, i8* %193)
  store i32 %194, i32* %21, align 4
  %195 = load i32, i32* %21, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %183
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  %201 = load i8*, i8** %18, align 8
  %202 = call i64 @tableAndColumnIndex(%struct.TYPE_20__* %198, i32 %200, i8* %201, i32* %19, i32* %20)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %197, %183
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %206 = load i8*, i8** %18, align 8
  %207 = call i32 (%struct.TYPE_22__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_22__* %205, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %206)
  store i32 1, i32* %3, align 4
  br label %233

208:                                              ; preds = %197
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  %215 = load i32, i32* %21, align 4
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = call i32 @addWhereTerm(%struct.TYPE_22__* %209, %struct.TYPE_20__* %210, i32 %211, i32 %212, i32 %214, i32 %215, i32 %216, i32* %218)
  br label %220

220:                                              ; preds = %208
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %177

223:                                              ; preds = %177
  br label %224

224:                                              ; preds = %223, %168
  br label %225

225:                                              ; preds = %224, %55
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %7, align 4
  %228 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %229 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %228, i32 1
  store %struct.SrcList_item* %229, %struct.SrcList_item** %10, align 8
  %230 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %231 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %230, i32 1
  store %struct.SrcList_item* %231, %struct.SrcList_item** %9, align 8
  br label %31

232:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %232, %204, %134, %82
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_22__*, i8*, ...) #1

declare dso_local i64 @tableAndColumnIndex(%struct.TYPE_20__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @addWhereTerm(%struct.TYPE_22__*, %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @setJoinExpr(i64, i32) #1

declare dso_local i32 @sqlite3ExprAnd(i32, i32, i64) #1

declare dso_local i32 @columnIndex(%struct.TYPE_19__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
