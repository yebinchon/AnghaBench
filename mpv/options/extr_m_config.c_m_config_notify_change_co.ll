; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_notify_change_co.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_notify_change_co.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32, i32 (i32, %struct.m_config_option*, i32)*, %struct.m_config_shadow* }
%struct.m_config_shadow = type { i32, %struct.m_config_group*, i32, %struct.m_config_cache**, %struct.m_config_data* }
%struct.m_config_group = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.m_config_cache = type { i32, i32 (i32)*, %struct.m_config_data* }
%struct.m_config_data = type { i32 }
%struct.m_config_option = type { i32, %struct.TYPE_4__*, %struct.m_group_data* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.m_group_data = type { i64, i64 }

@UPDATE_OPTS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_config_notify_change_co(%struct.m_config* %0, %struct.m_config_option* %1) #0 {
  %3 = alloca %struct.m_config*, align 8
  %4 = alloca %struct.m_config_option*, align 8
  %5 = alloca %struct.m_config_shadow*, align 8
  %6 = alloca %struct.m_config_data*, align 8
  %7 = alloca %struct.m_group_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.m_config_cache*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.m_config_group*, align 8
  store %struct.m_config* %0, %struct.m_config** %3, align 8
  store %struct.m_config_option* %1, %struct.m_config_option** %4, align 8
  %13 = load %struct.m_config*, %struct.m_config** %3, align 8
  %14 = getelementptr inbounds %struct.m_config, %struct.m_config* %13, i32 0, i32 2
  %15 = load %struct.m_config_shadow*, %struct.m_config_shadow** %14, align 8
  store %struct.m_config_shadow* %15, %struct.m_config_shadow** %5, align 8
  %16 = load %struct.m_config_option*, %struct.m_config_option** %4, align 8
  %17 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %16, i32 0, i32 2
  %18 = load %struct.m_group_data*, %struct.m_group_data** %17, align 8
  %19 = call i32 @assert(%struct.m_group_data* %18)
  %20 = load %struct.m_config_shadow*, %struct.m_config_shadow** %5, align 8
  %21 = icmp ne %struct.m_config_shadow* %20, null
  br i1 %21, label %22, label %101

22:                                               ; preds = %2
  %23 = load %struct.m_config_shadow*, %struct.m_config_shadow** %5, align 8
  %24 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %23, i32 0, i32 2
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  %26 = load %struct.m_config_shadow*, %struct.m_config_shadow** %5, align 8
  %27 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %26, i32 0, i32 4
  %28 = load %struct.m_config_data*, %struct.m_config_data** %27, align 8
  store %struct.m_config_data* %28, %struct.m_config_data** %6, align 8
  %29 = load %struct.m_config_data*, %struct.m_config_data** %6, align 8
  %30 = load %struct.m_config_option*, %struct.m_config_option** %4, align 8
  %31 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.m_group_data* @m_config_gdata(%struct.m_config_data* %29, i32 %32)
  store %struct.m_group_data* %33, %struct.m_group_data** %7, align 8
  %34 = load %struct.m_group_data*, %struct.m_group_data** %7, align 8
  %35 = call i32 @assert(%struct.m_group_data* %34)
  %36 = load %struct.m_config_data*, %struct.m_config_data** %6, align 8
  %37 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %36, i32 0, i32 0
  %38 = call i64 @atomic_fetch_add(i32* %37, i32 1)
  %39 = add nsw i64 %38, 1
  %40 = load %struct.m_group_data*, %struct.m_group_data** %7, align 8
  %41 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.m_config_option*, %struct.m_config_option** %4, align 8
  %43 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load %struct.m_group_data*, %struct.m_group_data** %7, align 8
  %46 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.m_config_option*, %struct.m_config_option** %4, align 8
  %49 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %47, %52
  %54 = load %struct.m_config_option*, %struct.m_config_option** %4, align 8
  %55 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %54, i32 0, i32 2
  %56 = load %struct.m_group_data*, %struct.m_group_data** %55, align 8
  %57 = call i32 @m_option_copy(%struct.TYPE_4__* %44, i64 %53, %struct.m_group_data* %56)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %94, %22
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.m_config_shadow*, %struct.m_config_shadow** %5, align 8
  %61 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %58
  %65 = load %struct.m_config_shadow*, %struct.m_config_shadow** %5, align 8
  %66 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %65, i32 0, i32 3
  %67 = load %struct.m_config_cache**, %struct.m_config_cache*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.m_config_cache*, %struct.m_config_cache** %67, i64 %69
  %71 = load %struct.m_config_cache*, %struct.m_config_cache** %70, align 8
  store %struct.m_config_cache* %71, %struct.m_config_cache** %9, align 8
  %72 = load %struct.m_config_cache*, %struct.m_config_cache** %9, align 8
  %73 = getelementptr inbounds %struct.m_config_cache, %struct.m_config_cache* %72, i32 0, i32 1
  %74 = load i32 (i32)*, i32 (i32)** %73, align 8
  %75 = icmp ne i32 (i32)* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %64
  %77 = load %struct.m_config_cache*, %struct.m_config_cache** %9, align 8
  %78 = getelementptr inbounds %struct.m_config_cache, %struct.m_config_cache* %77, i32 0, i32 2
  %79 = load %struct.m_config_data*, %struct.m_config_data** %78, align 8
  %80 = load %struct.m_config_option*, %struct.m_config_option** %4, align 8
  %81 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.m_group_data* @m_config_gdata(%struct.m_config_data* %79, i32 %82)
  %84 = icmp ne %struct.m_group_data* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load %struct.m_config_cache*, %struct.m_config_cache** %9, align 8
  %87 = getelementptr inbounds %struct.m_config_cache, %struct.m_config_cache* %86, i32 0, i32 1
  %88 = load i32 (i32)*, i32 (i32)** %87, align 8
  %89 = load %struct.m_config_cache*, %struct.m_config_cache** %9, align 8
  %90 = getelementptr inbounds %struct.m_config_cache, %struct.m_config_cache* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %88(i32 %91)
  br label %93

93:                                               ; preds = %85, %76, %64
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %58

97:                                               ; preds = %58
  %98 = load %struct.m_config_shadow*, %struct.m_config_shadow** %5, align 8
  %99 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %98, i32 0, i32 2
  %100 = call i32 @pthread_mutex_unlock(i32* %99)
  br label %101

101:                                              ; preds = %97, %2
  %102 = load %struct.m_config_option*, %struct.m_config_option** %4, align 8
  %103 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @UPDATE_OPTS_MASK, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %10, align 4
  %109 = load %struct.m_config_option*, %struct.m_config_option** %4, align 8
  %110 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %115, %101
  %113 = load i32, i32* %11, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load %struct.m_config_shadow*, %struct.m_config_shadow** %5, align 8
  %117 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %116, i32 0, i32 1
  %118 = load %struct.m_config_group*, %struct.m_config_group** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %118, i64 %120
  store %struct.m_config_group* %121, %struct.m_config_group** %12, align 8
  %122 = load %struct.m_config_group*, %struct.m_config_group** %12, align 8
  %123 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  %129 = load %struct.m_config_group*, %struct.m_config_group** %12, align 8
  %130 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %11, align 4
  br label %112

132:                                              ; preds = %112
  %133 = load %struct.m_config*, %struct.m_config** %3, align 8
  %134 = getelementptr inbounds %struct.m_config, %struct.m_config* %133, i32 0, i32 1
  %135 = load i32 (i32, %struct.m_config_option*, i32)*, i32 (i32, %struct.m_config_option*, i32)** %134, align 8
  %136 = icmp ne i32 (i32, %struct.m_config_option*, i32)* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.m_config*, %struct.m_config** %3, align 8
  %139 = getelementptr inbounds %struct.m_config, %struct.m_config* %138, i32 0, i32 1
  %140 = load i32 (i32, %struct.m_config_option*, i32)*, i32 (i32, %struct.m_config_option*, i32)** %139, align 8
  %141 = load %struct.m_config*, %struct.m_config** %3, align 8
  %142 = getelementptr inbounds %struct.m_config, %struct.m_config* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.m_config_option*, %struct.m_config_option** %4, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 %140(i32 %143, %struct.m_config_option* %144, i32 %145)
  br label %147

147:                                              ; preds = %137, %132
  ret void
}

declare dso_local i32 @assert(%struct.m_group_data*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.m_group_data* @m_config_gdata(%struct.m_config_data*, i32) #1

declare dso_local i64 @atomic_fetch_add(i32*, i32) #1

declare dso_local i32 @m_option_copy(%struct.TYPE_4__*, i64, %struct.m_group_data*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
