; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_queue_process.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_queue_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_dispatch_queue = type { i32, i32, i32, i32, i32, i32, i32*, %struct.mp_dispatch_item*, i64, i32 }
%struct.mp_dispatch_item = type { i32, i64, i32, i32 (i32)*, %struct.mp_dispatch_item* }
%struct.timespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_dispatch_queue_process(%struct.mp_dispatch_queue* %0, double %1) #0 {
  %3 = alloca %struct.mp_dispatch_queue*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.mp_dispatch_item*, align 8
  %6 = alloca %struct.timespec, align 4
  store %struct.mp_dispatch_queue* %0, %struct.mp_dispatch_queue** %3, align 8
  store double %1, double* %4, align 8
  %7 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %8 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %7, i32 0, i32 3
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load double, double* %4, align 8
  %11 = fcmp ogt double %10, 0.000000e+00
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 (...) @mp_time_us()
  %14 = load double, double* %4, align 8
  %15 = call i32 @mp_add_timeout(i32 %13, double %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 0, %16 ]
  %19 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %20 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %22 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %29 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = call i32 (...) @pthread_self()
  %31 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %32 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %34 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %17
  %38 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %39 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %38, i32 0, i32 5
  %40 = call i32 @pthread_cond_broadcast(i32* %39)
  br label %41

41:                                               ; preds = %37, %17
  br label %42

42:                                               ; preds = %41, %148
  %43 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %44 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %49 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %48, i32 0, i32 5
  %50 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %51 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %50, i32 0, i32 3
  %52 = call i32 @pthread_cond_wait(i32* %49, i32* %51)
  br label %148

53:                                               ; preds = %42
  %54 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %55 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %54, i32 0, i32 7
  %56 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %55, align 8
  %57 = icmp ne %struct.mp_dispatch_item* %56, null
  br i1 %57, label %58, label %119

58:                                               ; preds = %53
  %59 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %60 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %59, i32 0, i32 7
  %61 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %60, align 8
  store %struct.mp_dispatch_item* %61, %struct.mp_dispatch_item** %5, align 8
  %62 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %63 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %62, i32 0, i32 4
  %64 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %63, align 8
  %65 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %66 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %65, i32 0, i32 7
  store %struct.mp_dispatch_item* %64, %struct.mp_dispatch_item** %66, align 8
  %67 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %68 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %67, i32 0, i32 7
  %69 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %68, align 8
  %70 = icmp ne %struct.mp_dispatch_item* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %58
  %72 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %73 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %72, i32 0, i32 6
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %71, %58
  %75 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %76 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %75, i32 0, i32 4
  store %struct.mp_dispatch_item* null, %struct.mp_dispatch_item** %76, align 8
  %77 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %78 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %85 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %87 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %86, i32 0, i32 3
  %88 = call i32 @pthread_mutex_unlock(i32* %87)
  %89 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %90 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %89, i32 0, i32 3
  %91 = load i32 (i32)*, i32 (i32)** %90, align 8
  %92 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %93 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %91(i32 %94)
  %96 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %97 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %96, i32 0, i32 3
  %98 = call i32 @pthread_mutex_lock(i32* %97)
  %99 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %100 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %104 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %106 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %105, i32 0, i32 5
  %107 = call i32 @pthread_cond_broadcast(i32* %106)
  %108 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %109 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %74
  %113 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %114 = call i32 @talloc_free(%struct.mp_dispatch_item* %113)
  br label %118

115:                                              ; preds = %74
  %116 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %117 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %112
  br label %147

119:                                              ; preds = %53
  %120 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %121 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %119
  %125 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %126 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %124
  %130 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %131 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @mp_time_us_to_timespec(i32 %132)
  %134 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %133, i32* %134, align 4
  %135 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %136 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %135, i32 0, i32 5
  %137 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %138 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %137, i32 0, i32 3
  %139 = call i64 @pthread_cond_timedwait(i32* %136, i32* %138, %struct.timespec* %6)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %129
  %142 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %143 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %142, i32 0, i32 4
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %129
  br label %146

145:                                              ; preds = %124, %119
  br label %149

146:                                              ; preds = %144
  br label %147

147:                                              ; preds = %146, %118
  br label %148

148:                                              ; preds = %147, %47
  br label %42

149:                                              ; preds = %145
  %150 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %151 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %158 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  %159 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %160 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %159, i32 0, i32 2
  store i32 0, i32* %160, align 8
  %161 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %162 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %161, i32 0, i32 3
  %163 = call i32 @pthread_mutex_unlock(i32* %162)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mp_add_timeout(i32, double) #1

declare dso_local i32 @mp_time_us(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @talloc_free(%struct.mp_dispatch_item*) #1

declare dso_local i32 @mp_time_us_to_timespec(i32) #1

declare dso_local i64 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
