; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_LagTrackerRead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_LagTrackerRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@lag_tracker = common dso_local global %struct.TYPE_4__* null, align 8
@LAG_TRACKER_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @LagTrackerRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LagTrackerRead(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %42, %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %12
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp sle i64 %37, %38
  br label %40

40:                                               ; preds = %24, %12
  %41 = phi i1 [ false, %12 ], [ %39, %24 ]
  br i1 %41, label %42, label %92

42:                                               ; preds = %40
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %71
  %73 = bitcast %struct.TYPE_3__* %61 to i8*
  %74 = bitcast %struct.TYPE_3__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  %83 = load i32, i32* @LAG_TRACKER_BUFFER_SIZE, align 4
  %84 = sext i32 %83 to i64
  %85 = urem i64 %82, %84
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 %85, i64* %91, align 8
  br label %12

92:                                               ; preds = %40
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %92
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %104, %92
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %7, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 -1, i32* %4, align 4
  br label %236

117:                                              ; preds = %112
  %118 = load i64, i64* %8, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %226

120:                                              ; preds = %117
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  store i32 -1, i32* %4, align 4
  br label %236

133:                                              ; preds = %120
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %210

143:                                              ; preds = %133
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %148
  %150 = bitcast %struct.TYPE_3__* %10 to i8*
  %151 = bitcast %struct.TYPE_3__* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 16, i1 false)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %161
  %163 = bitcast %struct.TYPE_3__* %11 to i8*
  %164 = bitcast %struct.TYPE_3__* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 16, i1 false)
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp slt i64 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %143
  store i32 -1, i32* %4, align 4
  br label %236

170:                                              ; preds = %143
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %172, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @Assert(i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %179, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %170
  store i32 -1, i32* %4, align 4
  br label %236

184:                                              ; preds = %170
  %185 = load i64, i64* %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %185, %187
  %189 = sitofp i64 %188 to double
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %191, %193
  %195 = sitofp i64 %194 to double
  %196 = fdiv double %189, %195
  store double %196, double* %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = sitofp i64 %198 to double
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = sub nsw i64 %201, %203
  %205 = sitofp i64 %204 to double
  %206 = load double, double* %9, align 8
  %207 = fmul double %205, %206
  %208 = fadd double %199, %207
  %209 = fptosi double %208 to i64
  store i64 %209, i64* %8, align 8
  br label %224

210:                                              ; preds = %133
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lag_tracker, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %8, align 8
  br label %224

224:                                              ; preds = %210, %184
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225, %117
  br label %227

227:                                              ; preds = %226
  %228 = load i64, i64* %8, align 8
  %229 = icmp ne i64 %228, 0
  %230 = zext i1 %229 to i32
  %231 = call i32 @Assert(i32 %230)
  %232 = load i64, i64* %7, align 8
  %233 = load i64, i64* %8, align 8
  %234 = sub nsw i64 %232, %233
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %227, %183, %169, %132, %116
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
