; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_set_option.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.m_option = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mpv_node = type { i32, i64 }

@MPV_ERROR_OPTION_FORMAT = common dso_local global i32 0, align 4
@MPV_FORMAT_NODE = common dso_local global i64 0, align 8
@MPV_ERROR_OPTION_ERROR = common dso_local global i32 0, align 4
@MPV_ERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpv_set_option(%struct.TYPE_9__* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.m_option*, align 8
  %11 = alloca %struct.mpv_node, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call %struct.m_option* @get_mp_type(i64 %13)
  store %struct.m_option* %14, %struct.m_option** %10, align 8
  %15 = load %struct.m_option*, %struct.m_option** %10, align 8
  %16 = icmp ne %struct.m_option* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @MPV_ERROR_OPTION_FORMAT, align 4
  store i32 %18, i32* %5, align 4
  br label %62

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @MPV_FORMAT_NODE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %11, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %11, i32 0, i32 0
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.m_option*, %struct.m_option** %10, align 8
  %29 = getelementptr inbounds %struct.m_option, %struct.m_option* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32* %26, i8* %27, i32 %32)
  %34 = bitcast %struct.mpv_node* %11 to i8*
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %23, %19
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = call i32 @lock_core(%struct.TYPE_9__* %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @bstr0(i8* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @m_config_set_option_node(i32 %42, i32 %44, i8* %45, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = call i32 @unlock_core(%struct.TYPE_9__* %47)
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %56 [
    i32 130, label %50
    i32 131, label %50
    i32 129, label %52
    i32 128, label %54
  ]

50:                                               ; preds = %35, %35
  %51 = load i32, i32* @MPV_ERROR_OPTION_ERROR, align 4
  store i32 %51, i32* %5, align 4
  br label %62

52:                                               ; preds = %35
  %53 = load i32, i32* @MPV_ERROR_OPTION_FORMAT, align 4
  store i32 %53, i32* %5, align 4
  br label %62

54:                                               ; preds = %35
  %55 = load i32, i32* @MPV_ERROR_OPTION_NOT_FOUND, align 4
  store i32 %55, i32* %5, align 4
  br label %62

56:                                               ; preds = %35
  %57 = load i32, i32* %12, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @MPV_ERROR_OPTION_ERROR, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %59, %54, %52, %50, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.m_option* @get_mp_type(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @lock_core(%struct.TYPE_9__*) #1

declare dso_local i32 @m_config_set_option_node(i32, i32, i8*, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @unlock_core(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
