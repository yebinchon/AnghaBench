; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/common/extr_buffering.c_pool_push.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/common/extr_buffering.c_pool_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, i32, i32*, i32, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32, i32, i32, i32 }

@POOL_MAX_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pool_push(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ false, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %59
  store i64 %67, i64* %65, align 8
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %151, %20
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @POOL_MAX_QUEUES, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %154

72:                                               ; preds = %68
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %7, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %72
  br label %151

84:                                               ; preds = %72
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 6
  %87 = call i32 @pthread_mutex_lock(i32* %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = srem i32 %91, %94
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %84
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 6
  %103 = call i32 @pthread_mutex_unlock(i32* %102)
  br label %151

104:                                              ; preds = %84
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  store i32 %113, i32* %121, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = srem i32 %125, %128
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %134, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 6
  %143 = call i32 @pthread_mutex_unlock(i32* %142)
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @efd_write(i32 %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  %150 = call i32 @pthread_cond_signal(i32* %149)
  br label %151

151:                                              ; preds = %104, %100, %83
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %68

154:                                              ; preds = %68
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  %157 = call i32 @pthread_mutex_unlock(i32* %156)
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %171, %154
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %158
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @tbuffer_dispatch(i32* %168, i32 %169)
  br label %171

171:                                              ; preds = %162
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %158

174:                                              ; preds = %158
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @efd_write(i32) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @tbuffer_dispatch(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
