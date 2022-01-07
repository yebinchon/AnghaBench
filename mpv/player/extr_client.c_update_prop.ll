; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_update_prop.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_update_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_handle = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.observe_property = type { i64, i64, i32, i32, i32, %struct.TYPE_9__*, %union.m_option_value, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%union.m_option_value = type { i32 }
%struct.getproperty_request = type { i64, %union.m_option_value*, i32, i32, %struct.TYPE_7__* }

@memory_order_relaxed = common dso_local global i32 0, align 4
@update_prop_async = common dso_local global i32 0, align 4
@getproperty_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpv_handle*, %struct.observe_property*)* @update_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_prop(%struct.mpv_handle* %0, %struct.observe_property* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpv_handle*, align 8
  %5 = alloca %struct.observe_property*, align 8
  %6 = alloca %union.m_option_value, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.getproperty_request, align 8
  %9 = alloca i32, align 4
  store %struct.mpv_handle* %0, %struct.mpv_handle** %4, align 8
  store %struct.observe_property* %1, %struct.observe_property** %5, align 8
  %10 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %11 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %10, i32 0, i32 5
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %152

15:                                               ; preds = %2
  %16 = bitcast %union.m_option_value* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  %17 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %18 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* @memory_order_relaxed, align 4
  %22 = call i64 @atomic_load_explicit(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %15
  %25 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %26 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %29 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %24
  %33 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %34 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %39 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %38, i32 0, i32 2
  store i32 1, i32* %39, align 8
  %40 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %41 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %45 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @update_prop_async, align 4
  %50 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %51 = call i32 @mp_dispatch_enqueue(i32 %48, i32 %49, %struct.observe_property* %50)
  br label %52

52:                                               ; preds = %37, %32
  store i32 0, i32* %3, align 4
  br label %152

53:                                               ; preds = %24
  %54 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %55 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %54, i32 0, i32 5
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %58 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %57, i32 0, i32 9
  %59 = call i32 @m_option_copy(%struct.TYPE_9__* %56, %union.m_option_value* %6, i32* %58)
  %60 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %61 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  br label %91

63:                                               ; preds = %15
  %64 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %65 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %64, i32 0, i32 1
  %66 = call i32 @pthread_mutex_unlock(i32* %65)
  %67 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 1
  store %union.m_option_value* %6, %union.m_option_value** %68, align 8
  %69 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 2
  %70 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %71 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %69, align 8
  %73 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 3
  %74 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %75 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %73, align 4
  %77 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 4
  %78 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %79 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %77, align 8
  %81 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %82 = load i32, i32* @getproperty_fn, align 4
  %83 = call i32 @run_locked(%struct.mpv_handle* %81, i32 %82, %struct.getproperty_request* %8)
  %84 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %7, align 4
  %88 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %89 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %88, i32 0, i32 1
  %90 = call i32 @pthread_mutex_lock(i32* %89)
  br label %91

91:                                               ; preds = %63, %53
  %92 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %93 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %94, %95
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %9, align 4
  %98 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %99 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %91
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %107 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %106, i32 0, i32 6
  %108 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %109 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @equal_mpv_value(%union.m_option_value* %107, %union.m_option_value* %6, i32 %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %105, %102, %91
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %121 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %118
  %125 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %126 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %125, i32 0, i32 5
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %129 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %128, i32 0, i32 6
  %130 = call i32 @m_option_free(%struct.TYPE_9__* %127, %union.m_option_value* %129)
  %131 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %132 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %131, i32 0, i32 6
  %133 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %134 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %133, i32 0, i32 5
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @memcpy(%union.m_option_value* %132, %union.m_option_value* %6, i32 %139)
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %124, %118
  br label %142

142:                                              ; preds = %141, %115
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.observe_property*, %struct.observe_property** %5, align 8
  %147 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %146, i32 0, i32 5
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = call i32 @m_option_free(%struct.TYPE_9__* %148, %union.m_option_value* %6)
  br label %150

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %52, %14
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @atomic_load_explicit(i32*, i32) #2

declare dso_local i32 @mp_dispatch_enqueue(i32, i32, %struct.observe_property*) #2

declare dso_local i32 @m_option_copy(%struct.TYPE_9__*, %union.m_option_value*, i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @run_locked(%struct.mpv_handle*, i32, %struct.getproperty_request*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @equal_mpv_value(%union.m_option_value*, %union.m_option_value*, i32) #2

declare dso_local i32 @m_option_free(%struct.TYPE_9__*, %union.m_option_value*) #2

declare dso_local i32 @memcpy(%union.m_option_value*, %union.m_option_value*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
