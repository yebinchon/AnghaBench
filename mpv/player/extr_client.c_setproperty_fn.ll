; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_setproperty_fn.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_setproperty_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.setproperty_request = type { i64, i32, i64, i32, i32, i32, %struct.mpv_node* }
%struct.mpv_node = type { i64, i32 }
%struct.m_option = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mpv_event = type { i32, i32 }

@MPV_FORMAT_NODE = common dso_local global i64 0, align 8
@M_PROPERTY_SET_NODE = common dso_local global i32 0, align 4
@MPV_EVENT_SET_PROPERTY_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @setproperty_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setproperty_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.setproperty_request*, align 8
  %4 = alloca %struct.m_option*, align 8
  %5 = alloca %struct.mpv_node*, align 8
  %6 = alloca %struct.mpv_node, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpv_event, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.setproperty_request*
  store %struct.setproperty_request* %10, %struct.setproperty_request** %3, align 8
  %11 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %12 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.m_option* @get_mp_type(i64 %13)
  store %struct.m_option* %14, %struct.m_option** %4, align 8
  %15 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %16 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MPV_FORMAT_NODE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %22 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %21, i32 0, i32 6
  %23 = load %struct.mpv_node*, %struct.mpv_node** %22, align 8
  store %struct.mpv_node* %23, %struct.mpv_node** %5, align 8
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %26 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %6, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %6, i32 0, i32 1
  %30 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %31 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %30, i32 0, i32 6
  %32 = load %struct.mpv_node*, %struct.mpv_node** %31, align 8
  %33 = load %struct.m_option*, %struct.m_option** %4, align 8
  %34 = getelementptr inbounds %struct.m_option, %struct.m_option* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32* %29, %struct.mpv_node* %32, i32 %37)
  store %struct.mpv_node* %6, %struct.mpv_node** %5, align 8
  br label %39

39:                                               ; preds = %24, %20
  %40 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %41 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @M_PROPERTY_SET_NODE, align 4
  %44 = load %struct.mpv_node*, %struct.mpv_node** %5, align 8
  %45 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %46 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mp_property_do(i32 %42, i32 %43, %struct.mpv_node* %44, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @translate_property_error(i32 %49)
  %51 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %52 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %54 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %39
  %58 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %8, i32 0, i32 0
  %59 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %60 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %58, align 4
  %62 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %8, i32 0, i32 1
  %63 = load i32, i32* @MPV_EVENT_SET_PROPERTY_REPLY, align 4
  store i32 %63, i32* %62, align 4
  %64 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %65 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %68 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @send_reply(i64 %66, i32 %69, %struct.mpv_event* %8)
  %71 = load %struct.setproperty_request*, %struct.setproperty_request** %3, align 8
  %72 = call i32 @talloc_free(%struct.setproperty_request* %71)
  br label %73

73:                                               ; preds = %57, %39
  ret void
}

declare dso_local %struct.m_option* @get_mp_type(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.mpv_node*, i32) #1

declare dso_local i32 @mp_property_do(i32, i32, %struct.mpv_node*, i32) #1

declare dso_local i32 @translate_property_error(i32) #1

declare dso_local i32 @send_reply(i64, i32, %struct.mpv_event*) #1

declare dso_local i32 @talloc_free(%struct.setproperty_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
