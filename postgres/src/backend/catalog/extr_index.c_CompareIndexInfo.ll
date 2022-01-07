; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_CompareIndexInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_CompareIndexInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32*, i64, i64, i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"incorrect attribute map\00", align 1
@InvalidAttrNumber = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompareIndexInfo(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %245

31:                                               ; preds = %8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %245

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %245

49:                                               ; preds = %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %245

58:                                               ; preds = %49
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %146, %58
  %60 = load i32, i32* %18, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %149

65:                                               ; preds = %59
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %66, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @ERROR, align 4
  %77 = call i32 @elog(i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %65
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @InvalidAttrNumber, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %78
  %90 = load i64*, i64** %16, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %90, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ne i64 %101, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %89
  store i32 0, i32* %9, align 4
  br label %245

112:                                              ; preds = %89, %78
  %113 = load i32, i32* %18, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %146

119:                                              ; preds = %112
  %120 = load i64*, i64** %12, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %13, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %124, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  store i32 0, i32* %9, align 4
  br label %245

132:                                              ; preds = %119
  %133 = load i64*, i64** %14, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %15, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %137, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %132
  store i32 0, i32* %9, align 4
  br label %245

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %145, %118
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %18, align 4
  br label %59

149:                                              ; preds = %59
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @NIL, align 8
  %154 = icmp ne i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @NIL, align 8
  %160 = icmp ne i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = icmp ne i32 %155, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %149
  store i32 0, i32* %9, align 4
  br label %245

164:                                              ; preds = %149
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @NIL, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %191

170:                                              ; preds = %164
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to i32*
  %175 = load i64*, i64** %16, align 8
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* @InvalidOid, align 4
  %178 = call i32* @map_variable_attnos(i32* %174, i32 1, i32 0, i64* %175, i32 %176, i32 %177, i32* %19)
  store i32* %178, i32** %20, align 8
  %179 = load i32, i32* %19, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  store i32 0, i32* %9, align 4
  br label %245

182:                                              ; preds = %170
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load i32*, i32** %20, align 8
  %187 = call i32 @equal(i64 %185, i32* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %182
  store i32 0, i32* %9, align 4
  br label %245

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %164
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = inttoptr i64 %194 to i8*
  %196 = icmp eq i8* %195, null
  %197 = zext i1 %196 to i32
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i8*
  %202 = icmp eq i8* %201, null
  %203 = zext i1 %202 to i32
  %204 = icmp ne i32 %197, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %191
  store i32 0, i32* %9, align 4
  br label %245

206:                                              ; preds = %191
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to i8*
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %233

212:                                              ; preds = %206
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 6
  %215 = load i64, i64* %214, align 8
  %216 = inttoptr i64 %215 to i32*
  %217 = load i64*, i64** %16, align 8
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* @InvalidOid, align 4
  %220 = call i32* @map_variable_attnos(i32* %216, i32 1, i32 0, i64* %217, i32 %218, i32 %219, i32* %21)
  store i32* %220, i32** %22, align 8
  %221 = load i32, i32* %21, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %212
  store i32 0, i32* %9, align 4
  br label %245

224:                                              ; preds = %212
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = load i32*, i32** %22, align 8
  %229 = call i32 @equal(i64 %227, i32* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %224
  store i32 0, i32* %9, align 4
  br label %245

232:                                              ; preds = %224
  br label %233

233:                                              ; preds = %232, %206
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 7
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %243, label %238

238:                                              ; preds = %233
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 7
  %241 = load i32*, i32** %240, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %244

243:                                              ; preds = %238, %233
  store i32 0, i32* %9, align 4
  br label %245

244:                                              ; preds = %238
  store i32 1, i32* %9, align 4
  br label %245

245:                                              ; preds = %244, %243, %231, %223, %205, %189, %181, %163, %144, %131, %111, %57, %48, %39, %30
  %246 = load i32, i32* %9, align 4
  ret i32 %246
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @map_variable_attnos(i32*, i32, i32, i64*, i32, i32, i32*) #1

declare dso_local i32 @equal(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
