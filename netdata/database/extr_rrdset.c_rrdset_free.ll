; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdset.c_rrdset_free.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdset.c_rrdset_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32, %struct.TYPE_17__*, i32, i32, i64, i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_17__* }

@.str = private unnamed_addr constant [92 x i8] c"RRDSET: INTERNAL ERROR: attempt to remove from index chart '%s', removed a different chart.\00", align 1
@D_RRD_CALLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"RRDSET: Cleaning up remaining chart variables for host '%s', chart '%s'\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Request to free RRDSET '%s': cannot find it under host '%s'\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unmapping stats '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdset_free(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = icmp ne %struct.TYPE_17__* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %174

12:                                               ; preds = %1
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 14
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %3, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = call i32 @rrdhost_check_wrlock(%struct.TYPE_18__* %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = call i32 @rrdset_wrlock(%struct.TYPE_17__* %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %22 = call %struct.TYPE_17__* @rrdset_index_del(%struct.TYPE_18__* %20, %struct.TYPE_17__* %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = icmp ne %struct.TYPE_17__* %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %12
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %12
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %36 = call i32 @rrdset_index_del_name(%struct.TYPE_18__* %34, %struct.TYPE_17__* %35)
  br label %37

37:                                               ; preds = %42, %33
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 13
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @rrdsetvar_free(i64 %45)
  br label %37

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %53, %47
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 12
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @rrdsetcalc_unlink(i64 %56)
  br label %48

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %64, %58
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 11
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 11
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @rrddim_free(%struct.TYPE_17__* %65, i64 %68)
  br label %59

70:                                               ; preds = %59
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rrdfamily_free(%struct.TYPE_18__* %71, i32 %74)
  %76 = load i32, i32* @D_RRD_CALLS, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, i8*, ...) @debug(i32 %76, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 9
  %87 = call i32 @rrdvar_free_remaining_variables(%struct.TYPE_18__* %84, i32* %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = icmp eq %struct.TYPE_17__* %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %70
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  store %struct.TYPE_17__* %96, %struct.TYPE_17__** %98, align 8
  br label %137

99:                                               ; preds = %70
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  store %struct.TYPE_17__* %102, %struct.TYPE_17__** %4, align 8
  br label %103

103:                                              ; preds = %115, %99
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = icmp ne %struct.TYPE_17__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %111 = icmp ne %struct.TYPE_17__* %109, %110
  br label %112

112:                                              ; preds = %106, %103
  %113 = phi i1 [ false, %103 ], [ %111, %106 ]
  br i1 %113, label %114, label %119

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  store %struct.TYPE_17__* %118, %struct.TYPE_17__** %4, align 8
  br label %103

119:                                              ; preds = %112
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = icmp ne %struct.TYPE_17__* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 8
  store %struct.TYPE_17__* %125, %struct.TYPE_17__** %127, align 8
  br label %136

128:                                              ; preds = %119
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %131, i8* %134)
  br label %136

136:                                              ; preds = %128, %122
  br label %137

137:                                              ; preds = %136, %93
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %139 = call i32 @rrdset_unlock(%struct.TYPE_17__* %138)
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 6
  %142 = call i32 @netdata_rwlock_destroy(i32* %141)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = call i32 @freez(%struct.TYPE_17__* %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %148, align 8
  %150 = call i32 @freez(%struct.TYPE_17__* %149)
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = call i32 @freez(%struct.TYPE_17__* %153)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %174 [
    i32 128, label %158
    i32 131, label %158
    i32 129, label %158
    i32 133, label %171
    i32 130, label %171
    i32 132, label %171
  ]

158:                                              ; preds = %137, %137, %137
  %159 = load i32, i32* @D_RRD_CALLS, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = call i32 (i32, i8*, i8*, ...) @debug(i32 %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %164)
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @munmap(%struct.TYPE_17__* %166, i32 %169)
  br label %174

171:                                              ; preds = %137, %137, %137
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %173 = call i32 @freez(%struct.TYPE_17__* %172)
  br label %174

174:                                              ; preds = %11, %137, %171, %158
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rrdhost_check_wrlock(%struct.TYPE_18__*) #1

declare dso_local i32 @rrdset_wrlock(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @rrdset_index_del(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @error(i8*, i32, ...) #1

declare dso_local i32 @rrdset_index_del_name(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @rrdsetvar_free(i64) #1

declare dso_local i32 @rrdsetcalc_unlink(i64) #1

declare dso_local i32 @rrddim_free(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @rrdfamily_free(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

declare dso_local i32 @rrdvar_free_remaining_variables(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @rrdset_unlock(%struct.TYPE_17__*) #1

declare dso_local i32 @netdata_rwlock_destroy(i32*) #1

declare dso_local i32 @freez(%struct.TYPE_17__*) #1

declare dso_local i32 @munmap(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
