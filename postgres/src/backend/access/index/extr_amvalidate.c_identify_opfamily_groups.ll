; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/index/extr_amvalidate.c_identify_opfamily_groups.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/index/extr_amvalidate.c_identify_opfamily_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cannot validate operator family without ordered data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @identify_opfamily_groups(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %11 = load i32*, i32** @NIL, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %33, i64 %35
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = call i64 @GETSTRUCT(i32* %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %44

43:                                               ; preds = %24
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i64 @GETSTRUCT(i32* %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %64

63:                                               ; preds = %44
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  br label %64

64:                                               ; preds = %63, %50
  br label %65

65:                                               ; preds = %251, %196, %134, %64
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = icmp ne %struct.TYPE_12__* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ true, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %259

73:                                               ; preds = %71
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br i1 %75, label %76, label %135

76:                                               ; preds = %73
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %135

79:                                               ; preds = %76
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %135

87:                                               ; preds = %79
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %135

95:                                               ; preds = %87
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %103, 64
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 1, %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %105, %100, %95
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %114
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %123, i64 %125
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = call i64 @GETSTRUCT(i32* %128)
  %130 = inttoptr i64 %129 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %7, align 8
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %134

133:                                              ; preds = %114
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %134

134:                                              ; preds = %133, %120
  br label %65

135:                                              ; preds = %87, %79, %76, %73
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %137 = icmp ne %struct.TYPE_11__* %136, null
  br i1 %137, label %138, label %197

138:                                              ; preds = %135
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %140 = icmp ne %struct.TYPE_10__* %139, null
  br i1 %140, label %141, label %197

141:                                              ; preds = %138
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %197

149:                                              ; preds = %141
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %152, %155
  br i1 %156, label %157, label %197

157:                                              ; preds = %149
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %157
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %165, 64
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = shl i32 1, %170
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %167, %162, %157
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %176
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %185, i64 %187
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = call i64 @GETSTRUCT(i32* %190)
  %192 = inttoptr i64 %191 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %192, %struct.TYPE_11__** %8, align 8
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %196

195:                                              ; preds = %176
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  br label %196

196:                                              ; preds = %195, %182
  br label %65

197:                                              ; preds = %149, %141, %138, %135
  %198 = call i64 @palloc(i32 24)
  %199 = inttoptr i64 %198 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %199, %struct.TYPE_10__** %6, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %201 = icmp ne %struct.TYPE_12__* %200, null
  br i1 %201, label %202, label %240

202:                                              ; preds = %197
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %204 = icmp ne %struct.TYPE_11__* %203, null
  br i1 %204, label %205, label %229

205:                                              ; preds = %202
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp slt i64 %208, %211
  br i1 %212, label %229, label %213

213:                                              ; preds = %205
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %216, %219
  br i1 %220, label %221, label %240

221:                                              ; preds = %213
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp slt i64 %224, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %221, %205, %202
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  store i64 %237, i64* %239, align 8
  br label %251

240:                                              ; preds = %221, %213, %197
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  store i64 %243, i64* %245, align 8
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %240, %229
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 3
  store i32 0, i32* %253, align 4
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 2
  store i32 0, i32* %255, align 8
  %256 = load i32*, i32** %5, align 8
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %258 = call i32* @lappend(i32* %256, %struct.TYPE_10__* %257)
  store i32* %258, i32** %5, align 8
  br label %65

259:                                              ; preds = %71
  %260 = load i32*, i32** %5, align 8
  ret i32* %260
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
