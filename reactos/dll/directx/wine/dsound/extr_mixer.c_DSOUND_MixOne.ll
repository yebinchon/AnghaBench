; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_MixOne.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_MixOne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, %struct.TYPE_5__*, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"writepos=%d, buf_mixpos=%d, primary_mixpos=%d, mixlen=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"looping=%d, leadin=%d, buflen=%d\0A\00", align 1
@STATE_STARTING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [111 x i8] c"Fatal error. Under/Overflow? primary_done=%d, mixpos=%d/%d (%d/%d), primary_mixpos=%d, writepos=%d, mixlen=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"primary_done=%d, mixlen (primary) = %i\0A\00", align 1
@DSBPLAY_LOOPING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"new primary_mixpos=%d, total mixed data=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @DSOUND_MixOne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DSOUND_MixOne(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %26, i64 %29, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STATE_STARTING, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 2, %50
  %52 = icmp sgt i32 %45, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 2, %59
  %61 = sub nsw i32 %54, %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = srem i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %53, %44
  br label %76

76:                                               ; preds = %75, %38, %3
  %77 = load i64, i64* @FALSE, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 8
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @DSOUND_BufPtrDiff(i32 %84, i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %128

93:                                               ; preds = %76
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @ERR(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %97, i32 %100, i32 %103, i32 %106, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %113, %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = srem i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %4, align 4
  br label %230

128:                                              ; preds = %76
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %7, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %4, align 4
  br label %230

139:                                              ; preds = %128
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %140, %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp sge i32 %144, %147
  br i1 %148, label %149, label %206

149:                                              ; preds = %139
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %152, %155
  store i32 %156, i32* %10, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @DSOUND_MixInBuffer(%struct.TYPE_6__* %157, i32 %160, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %7, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @DSBPLAY_LOOPING, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %205

172:                                              ; preds = %149
  br label %173

173:                                              ; preds = %193, %172
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br label %179

179:                                              ; preds = %176, %173
  %180 = phi i1 [ false, %173 ], [ %178, %176 ]
  br i1 %180, label %181, label %204

181:                                              ; preds = %179
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  br label %193

191:                                              ; preds = %181
  %192 = load i32, i32* %7, align 4
  br label %193

193:                                              ; preds = %191, %187
  %194 = phi i32 [ %190, %187 ], [ %192, %191 ]
  store i32 %194, i32* %10, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @DSOUND_MixInBuffer(%struct.TYPE_6__* %195, i32 %198, i32 %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %7, align 4
  %203 = sub nsw i32 %202, %201
  store i32 %203, i32* %7, align 4
  br label %173

204:                                              ; preds = %179
  br label %205

205:                                              ; preds = %204, %149
  br label %213

206:                                              ; preds = %139
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @DSOUND_MixInBuffer(%struct.TYPE_6__* %207, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %206, %205
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 5
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @DSOUND_BufPtrDiff(i32 %218, i32 %221, i32 %222)
  store i32 %223, i32* %8, align 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %8, align 4
  %228 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %226, i32 %227)
  %229 = load i32, i32* %8, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %213, %137, %93
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @DSOUND_BufPtrDiff(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DSOUND_MixInBuffer(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
