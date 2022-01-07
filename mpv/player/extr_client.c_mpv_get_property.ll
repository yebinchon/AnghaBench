; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_get_property.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.getproperty_request = type { i8*, i8*, i32, i32, %struct.TYPE_5__* }

@MPV_ERROR_UNINITIALIZED = common dso_local global i32 0, align 4
@MPV_ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@MPV_ERROR_PROPERTY_FORMAT = common dso_local global i32 0, align 4
@getproperty_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpv_get_property(%struct.TYPE_6__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.getproperty_request, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @MPV_ERROR_UNINITIALIZED, align 4
  store i32 %18, i32* %5, align 4
  br label %47

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %23, i32* %5, align 4
  br label %47

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @get_mp_type_get(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @MPV_ERROR_PROPERTY_FORMAT, align 4
  store i32 %29, i32* %5, align 4
  br label %47

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %10, i32 0, i32 0
  %32 = load i8*, i8** %7, align 8
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %10, i32 0, i32 1
  %34 = load i8*, i8** %9, align 8
  store i8* %34, i8** %33, align 8
  %35 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %10, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %10, i32 0, i32 3
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %10, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %38, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = load i32, i32* @getproperty_fn, align 4
  %44 = call i32 @run_locked(%struct.TYPE_6__* %42, i32 %43, %struct.getproperty_request* %10)
  %45 = getelementptr inbounds %struct.getproperty_request, %struct.getproperty_request* %10, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %30, %28, %22, %17
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @get_mp_type_get(i32) #1

declare dso_local i32 @run_locked(%struct.TYPE_6__*, i32, %struct.getproperty_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
