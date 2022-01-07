; ModuleID = '/home/carl/AnghaBench/postgres/contrib/tsm_system_time/extr_tsm_system_time.c_system_time_nextsampleblock.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/tsm_system_time/extr_tsm_system_time.c_system_time_nextsampleblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64, i32, i32, i32 }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64)* @system_time_nextsampleblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @system_time_nextsampleblock(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %17
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %26, i64* %3, align 8
  br label %117

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @sampler_random_init_state(i32 %30, i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @sampler_random_fract(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %38, %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @random_relative_prime(i32 %47, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %27, %17
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @INSTR_TIME_SET_CURRENT(i32 %60)
  br label %62

62:                                               ; preds = %52, %2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp sgt i64 %66, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %73, i64* %3, align 8
  br label %117

74:                                               ; preds = %62
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @INSTR_TIME_SET_CURRENT(i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @INSTR_TIME_SUBTRACT(i32 %77, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %89, i64* %3, align 8
  br label %117

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %105, %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %94, %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = srem i32 %98, %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %91
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %5, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %91, label %112

112:                                              ; preds = %105
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %3, align 8
  br label %117

117:                                              ; preds = %112, %88, %72, %25
  %118 = load i64, i64* %3, align 8
  ret i64 %118
}

declare dso_local i32 @sampler_random_init_state(i32, i32) #1

declare dso_local i32 @sampler_random_fract(i32) #1

declare dso_local i32 @random_relative_prime(i32, i32) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i64 @INSTR_TIME_GET_MILLISEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
