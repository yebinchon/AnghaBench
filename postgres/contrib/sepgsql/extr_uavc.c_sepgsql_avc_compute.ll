; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_uavc.c_sepgsql_avc_compute.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_uavc.c_sepgsql_avc_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8* }
%struct.av_decision = type { i32, i32, i32, i32 }

@AVC_NUM_SLOTS = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_PROCEDURE = common dso_local global i32 0, align 4
@SEPG_CLASS_PROCESS = common dso_local global i32 0, align 4
@avc_mem_cxt = common dso_local global i32 0, align 4
@SELINUX_AVD_FLAGS_PERMISSIVE = common dso_local global i32 0, align 4
@avc_num_caches = common dso_local global i64 0, align 8
@avc_threshold = common dso_local global i64 0, align 8
@avc_slots = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, i8*, i32)* @sepgsql_avc_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @sepgsql_avc_compute(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.av_decision, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sepgsql_avc_hash(i8* %14, i8* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @AVC_NUM_SLOTS, align 4
  %20 = srem i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = call i64 @security_check_context_raw(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i8* (...) @sepgsql_avc_unlabeled()
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @sepgsql_compute_avd(i8* %31, i8* %32, i32 %33, %struct.av_decision* %13)
  br label %40

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @sepgsql_compute_avd(i8* %36, i8* %37, i32 %38, %struct.av_decision* %13)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @SEPG_CLASS_DB_PROCEDURE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @SEPG_CLASS_PROCESS, align 4
  %51 = call i8* @sepgsql_compute_create(i8* %48, i8* %49, i32 %50, i32* null)
  store i8* %51, i8** %8, align 8
  br label %57

52:                                               ; preds = %44
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @SEPG_CLASS_PROCESS, align 4
  %56 = call i8* @sepgsql_compute_create(i8* %53, i8* %54, i32 %55, i32* null)
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @pfree(i8* %63)
  store i8* null, i8** %8, align 8
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i32, i32* @avc_mem_cxt, align 4
  %68 = call i32 @MemoryContextSwitchTo(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = call %struct.TYPE_5__* @palloc0(i32 56)
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i8* @pstrdup(i8* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 10
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i8* @pstrdup(i8* %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 9
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SELINUX_AVD_FLAGS_PERMISSIVE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %66
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %66
  %107 = load i8*, i8** %7, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i8*, i8** %8, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i8*, i8** %8, align 8
  %117 = call i8* @pstrdup(i8* %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i64, i64* @avc_num_caches, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* @avc_num_caches, align 8
  %123 = load i64, i64* @avc_num_caches, align 8
  %124 = load i64, i64* @avc_threshold, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = call i32 (...) @sepgsql_avc_reclaim()
  br label %128

128:                                              ; preds = %126, %120
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %130 = load i32*, i32** @avc_slots, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @lcons(%struct.TYPE_5__* %129, i32 %134)
  %136 = load i32*, i32** @avc_slots, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @MemoryContextSwitchTo(i32 %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  ret %struct.TYPE_5__* %142
}

declare dso_local i32 @sepgsql_avc_hash(i8*, i8*, i32) #1

declare dso_local i64 @security_check_context_raw(i32) #1

declare dso_local i8* @sepgsql_avc_unlabeled(...) #1

declare dso_local i32 @sepgsql_compute_avd(i8*, i8*, i32, %struct.av_decision*) #1

declare dso_local i8* @sepgsql_compute_create(i8*, i8*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_5__* @palloc0(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @sepgsql_avc_reclaim(...) #1

declare dso_local i32 @lcons(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
