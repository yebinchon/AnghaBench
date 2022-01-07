; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_advance_transition_function.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_advance_transition_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i8* }
%struct.TYPE_21__ = type { i32, i32, i8* }
%struct.TYPE_14__ = type { i32 }

@CurrentMemoryContext = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*)* @advance_transition_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advance_transition_function(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %7, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %3
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %24

24:                                               ; preds = %40, %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %202

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %24

43:                                               ; preds = %24
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MemoryContextSwitchTo(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @datumCopy(i8* %60, i32 %63, i32 %66)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @MemoryContextSwitchTo(i32 %74)
  br label %202

76:                                               ; preds = %43
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %202

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %3
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @MemoryContextSwitchTo(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  store %struct.TYPE_20__* %90, %struct.TYPE_20__** %92, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  store i8* %95, i8** %100, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %112 = call i8* @FunctionCallInvoke(%struct.TYPE_19__* %111)
  store i8* %112, i8** %9, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %114, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %191, label %119

119:                                              ; preds = %83
  %120 = load i8*, i8** %9, align 8
  %121 = call i64 @DatumGetPointer(i8* %120)
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @DatumGetPointer(i8* %124)
  %126 = icmp ne i64 %121, %125
  br i1 %126, label %127, label %191

127:                                              ; preds = %119
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %164, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @MemoryContextSwitchTo(i32 %137)
  %139 = load i8*, i8** %9, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @DatumIsReadWriteExpandedObject(i8* %139, i32 0, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %132
  %146 = load i8*, i8** %9, align 8
  %147 = call %struct.TYPE_14__* @DatumGetEOHP(i8* %146)
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @MemoryContextGetParent(i32 %149)
  %151 = load i64, i64* @CurrentMemoryContext, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %163

154:                                              ; preds = %145, %132
  %155 = load i8*, i8** %9, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @datumCopy(i8* %155, i32 %158, i32 %161)
  store i8* %162, i8** %9, align 8
  br label %163

163:                                              ; preds = %154, %153
  br label %164

164:                                              ; preds = %163, %127
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %190, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @DatumIsReadWriteExpandedObject(i8* %172, i32 0, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %169
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @DeleteExpandedObject(i8* %181)
  br label %189

183:                                              ; preds = %169
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @DatumGetPointer(i8* %186)
  %188 = call i32 @pfree(i64 %187)
  br label %189

189:                                              ; preds = %183, %178
  br label %190

190:                                              ; preds = %189, %164
  br label %191

191:                                              ; preds = %190, %119, %83
  %192 = load i8*, i8** %9, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @MemoryContextSwitchTo(i32 %200)
  br label %202

202:                                              ; preds = %191, %81, %48, %38
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i8* @datumCopy(i8*, i32, i32) #1

declare dso_local i8* @FunctionCallInvoke(%struct.TYPE_19__*) #1

declare dso_local i64 @DatumGetPointer(i8*) #1

declare dso_local i64 @DatumIsReadWriteExpandedObject(i8*, i32, i32) #1

declare dso_local i64 @MemoryContextGetParent(i32) #1

declare dso_local %struct.TYPE_14__* @DatumGetEOHP(i8*) #1

declare dso_local i32 @DeleteExpandedObject(i8*) #1

declare dso_local i32 @pfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
