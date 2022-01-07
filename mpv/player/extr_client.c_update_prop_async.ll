; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_update_prop_async.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_update_prop_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.observe_property = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.mpv_handle* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mpv_handle = type { i32, i32, i64, i32 }
%union.m_option_value = type { i32 }
%struct.getproperty_request = type { i64, %union.m_option_value*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @update_prop_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_prop_async(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.observe_property*, align 8
  %4 = alloca %struct.mpv_handle*, align 8
  %5 = alloca %union.m_option_value, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.getproperty_request, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.observe_property*
  store %struct.observe_property* %10, %struct.observe_property** %3, align 8
  %11 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %12 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %11, i32 0, i32 9
  %13 = load %struct.mpv_handle*, %struct.mpv_handle** %12, align 8
  store %struct.mpv_handle* %13, %struct.mpv_handle** %4, align 8
  %14 = bitcast %union.m_option_value* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  %15 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %16 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %15, i32 0, i32 1
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  %18 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %19 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %22 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %26 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %25, i32 0, i32 1
  %27 = call i32 @pthread_mutex_unlock(i32* %26)
  %28 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 1
  store %union.m_option_value* %5, %union.m_option_value** %29, align 8
  %30 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 2
  %31 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %32 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 8
  %34 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 3
  %35 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %36 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 4
  %39 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %40 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %38, align 8
  %42 = call i32 @getproperty_fn(%struct.getproperty_request* %8)
  %43 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %48 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %47, i32 0, i32 1
  %49 = call i32 @pthread_mutex_lock(i32* %48)
  %50 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %51 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %55 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %58 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %57, i32 0, i32 5
  %59 = call i32 @m_option_free(%struct.TYPE_4__* %56, i32* %58)
  %60 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %61 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %60, i32 0, i32 5
  %62 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %63 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %62, i32 0, i32 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i32* %61, %union.m_option_value* %5, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %72 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %75 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %77 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.observe_property*, %struct.observe_property** %3, align 8
  %79 = getelementptr inbounds %struct.observe_property, %struct.observe_property* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %81 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %83 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %87 = call i32 @wakeup_client(%struct.mpv_handle* %86)
  %88 = load %struct.mpv_handle*, %struct.mpv_handle** %4, align 8
  %89 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %88, i32 0, i32 1
  %90 = call i32 @pthread_mutex_unlock(i32* %89)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @getproperty_fn(%struct.getproperty_request*) #2

declare dso_local i32 @m_option_free(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @memcpy(i32*, %union.m_option_value*, i32) #2

declare dso_local i32 @wakeup_client(%struct.mpv_handle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
