; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_init_history.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_init_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@p_hi = common dso_local global i64 0, align 8
@hislen = common dso_local global i32 0, align 4
@HIST_COUNT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@hisidx = common dso_local global i32* null, align 8
@history = common dso_local global %struct.TYPE_5__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_history() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @p_hi, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @hislen, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %229

11:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %224, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @HIST_COUNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %227

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i64 @lalloc(i32 %23, i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %2, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @hislen, align 4
  store i32 %33, i32* %1, align 4
  br label %227

34:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  store i32 -1, i32* %5, align 4
  br label %224

35:                                               ; preds = %19
  br label %37

36:                                               ; preds = %16
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %1, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %223

43:                                               ; preds = %40, %37
  %44 = load i32*, i32** @hisidx, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %61, %50
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %1, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = call i32 @clear_hist_entry(%struct.TYPE_5__* %59)
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %51

64:                                               ; preds = %51
  br label %211

65:                                               ; preds = %43
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @hislen, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %145

69:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %93, %69
  %71 = load i32, i32* %3, align 4
  %72 = load i32*, i32** @hisidx, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp sle i32 %71, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %70
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @history, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %83, i64 %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = bitcast %struct.TYPE_5__* %82 to i8*
  %92 = bitcast %struct.TYPE_5__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 8, i1 false)
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %70

96:                                               ; preds = %70
  %97 = load i32, i32* %3, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %116, %96
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %1, align 4
  %101 = load i32, i32* @hislen, align 4
  %102 = load i32*, i32** @hisidx, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %101, %106
  %108 = sub nsw i32 %100, %107
  %109 = icmp sle i32 %99, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %98
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = call i32 @clear_hist_entry(%struct.TYPE_5__* %114)
  br label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %98

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %139, %119
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @hislen, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %120
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @history, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %129, i64 %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = bitcast %struct.TYPE_5__* %128 to i8*
  %138 = bitcast %struct.TYPE_5__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 8, i1 false)
  br label %139

139:                                              ; preds = %124
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %120

144:                                              ; preds = %120
  br label %210

145:                                              ; preds = %65
  %146 = load i32*, i32** @hisidx, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %1, align 4
  %152 = sub nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %200, %145
  %154 = load i32, i32* %3, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %153
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %159
  %161 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @history, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %161, i64 %163
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = bitcast %struct.TYPE_5__* %160 to i8*
  %170 = bitcast %struct.TYPE_5__* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 %170, i64 8, i1 false)
  br label %183

171:                                              ; preds = %153
  %172 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @history, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %172, i64 %174
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = call i32 @vim_free(%struct.TYPE_5__* %181)
  br label %183

183:                                              ; preds = %171, %156
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %4, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i32, i32* @hislen, align 4
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %187, %183
  %191 = load i32, i32* %4, align 4
  %192 = load i32*, i32** @hisidx, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %191, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  br label %203

199:                                              ; preds = %190
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %3, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %3, align 4
  br label %153

203:                                              ; preds = %198
  %204 = load i32, i32* %1, align 4
  %205 = sub nsw i32 %204, 1
  %206 = load i32*, i32** @hisidx, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %205, i32* %209, align 4
  br label %210

210:                                              ; preds = %203, %144
  br label %211

211:                                              ; preds = %210, %64
  %212 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @history, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %212, i64 %214
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = call i32 @vim_free(%struct.TYPE_5__* %216)
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %219 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @history, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %219, i64 %221
  store %struct.TYPE_5__* %218, %struct.TYPE_5__** %222, align 8
  br label %223

223:                                              ; preds = %211, %40
  br label %224

224:                                              ; preds = %223, %34
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %5, align 4
  br label %12

227:                                              ; preds = %32, %12
  %228 = load i32, i32* %1, align 4
  store i32 %228, i32* @hislen, align 4
  br label %229

229:                                              ; preds = %227, %0
  ret void
}

declare dso_local i64 @lalloc(i32, i32) #1

declare dso_local i32 @clear_hist_entry(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vim_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
