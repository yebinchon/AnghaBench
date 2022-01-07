; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_dynahash.c_get_hash_entry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_dynahash.c_get_hash_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_12__* }

@NUM_FREELISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_10__*, i32)* @get_hash_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @get_hash_entry(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %6, align 8
  br label %12

12:                                               ; preds = %148, %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = call i64 @IS_PARTITIONED(%struct.TYPE_11__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = call i32 @SpinLockAcquire(i32* %23)
  br label %25

25:                                               ; preds = %16, %12
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %7, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %149

37:                                               ; preds = %25
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = call i64 @IS_PARTITIONED(%struct.TYPE_11__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = call i32 @SpinLockRelease(i32* %48)
  br label %50

50:                                               ; preds = %41, %37
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @element_alloc(%struct.TYPE_10__* %51, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %148, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = call i64 @IS_PARTITIONED(%struct.TYPE_11__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %183

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %138, %63
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* @NUM_FREELISTS, align 4
  %69 = srem i32 %67, %68
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %147

74:                                               ; preds = %65
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = call i32 @SpinLockAcquire(i32* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %7, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = icmp ne %struct.TYPE_12__* %91, null
  br i1 %92, label %93, label %138

93:                                               ; preds = %74
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %103, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = call i32 @SpinLockRelease(i32* %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = call i32 @SpinLockAcquire(i32* %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = call i32 @SpinLockRelease(i32* %135)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %137, %struct.TYPE_12__** %3, align 8
  br label %183

138:                                              ; preds = %74
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = call i32 @SpinLockRelease(i32* %145)
  br label %65

147:                                              ; preds = %73
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %183

148:                                              ; preds = %50
  br label %12

149:                                              ; preds = %36
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  store %struct.TYPE_12__* %152, %struct.TYPE_12__** %159, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %170 = call i64 @IS_PARTITIONED(%struct.TYPE_11__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %149
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = call i32 @SpinLockRelease(i32* %179)
  br label %181

181:                                              ; preds = %172, %149
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %182, %struct.TYPE_12__** %3, align 8
  br label %183

183:                                              ; preds = %181, %147, %93, %62
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %184
}

declare dso_local i64 @IS_PARTITIONED(%struct.TYPE_11__*) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @element_alloc(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
