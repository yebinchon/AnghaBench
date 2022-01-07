; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_set_property.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.setproperty_request = type { i8*, i8*, i32, i32, %struct.TYPE_7__* }

@MPV_ERROR_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@MPV_ERROR_PROPERTY_FORMAT = common dso_local global i32 0, align 4
@MPV_ERROR_PROPERTY_NOT_FOUND = common dso_local global i32 0, align 4
@MPV_ERROR_PROPERTY_ERROR = common dso_local global i32 0, align 4
@setproperty_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpv_set_property(%struct.TYPE_6__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.setproperty_request, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @mpv_set_option(%struct.TYPE_6__* %19, i8* %20, i32 %21, i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 129
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @mp_get_property_id(%struct.TYPE_7__* %29, i8* %30)
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @MPV_ERROR_PROPERTY_UNAVAILABLE, align 4
  store i32 %34, i32* %5, align 4
  br label %67

35:                                               ; preds = %26, %18
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %42 [
    i32 128, label %37
    i32 130, label %38
    i32 129, label %40
  ]

37:                                               ; preds = %35
  store i32 128, i32* %5, align 4
  br label %67

38:                                               ; preds = %35
  %39 = load i32, i32* @MPV_ERROR_PROPERTY_FORMAT, align 4
  store i32 %39, i32* %5, align 4
  br label %67

40:                                               ; preds = %35
  %41 = load i32, i32* @MPV_ERROR_PROPERTY_NOT_FOUND, align 4
  store i32 %41, i32* %5, align 4
  br label %67

42:                                               ; preds = %35
  %43 = load i32, i32* @MPV_ERROR_PROPERTY_ERROR, align 4
  store i32 %43, i32* %5, align 4
  br label %67

44:                                               ; preds = %4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @get_mp_type(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @MPV_ERROR_PROPERTY_FORMAT, align 4
  store i32 %49, i32* %5, align 4
  br label %67

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %11, i32 0, i32 0
  %52 = load i8*, i8** %7, align 8
  store i8* %52, i8** %51, align 8
  %53 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %11, i32 0, i32 1
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %53, align 8
  %55 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %11, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %11, i32 0, i32 3
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %11, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %58, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = load i32, i32* @setproperty_fn, align 4
  %64 = call i32 @run_locked(%struct.TYPE_6__* %62, i32 %63, %struct.setproperty_request* %11)
  %65 = getelementptr inbounds %struct.setproperty_request, %struct.setproperty_request* %11, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %50, %48, %42, %40, %38, %37, %33
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @mpv_set_option(%struct.TYPE_6__*, i8*, i32, i8*) #1

declare dso_local i64 @mp_get_property_id(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @get_mp_type(i32) #1

declare dso_local i32 @run_locked(%struct.TYPE_6__*, i32, %struct.setproperty_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
