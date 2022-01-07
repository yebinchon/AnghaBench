; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_add_service.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_add_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"rtmp-common.c: [add_service] service is not an object\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"rtmp-common.c: [add_service] service has no name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"servers\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"rtmp-common.c: [add_service] service '%s' has no servers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*)* @add_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_service(i32* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @json_is_object(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @LOG_WARNING, align 4
  %17 = call i32 (i32, i8*, ...) @blog(i32 %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %58

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @get_string_val(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @LOG_WARNING, align 4
  %25 = call i32 (i32, i8*, ...) @blog(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %58

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @get_bool_val(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %58

40:                                               ; preds = %34, %31, %26
  %41 = load i32*, i32** %6, align 8
  %42 = call i32* @json_object_get(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @json_is_array(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* @LOG_WARNING, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 (i32, i8*, ...) @blog(i32 %50, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  br label %58

53:                                               ; preds = %45
  %54 = load i32*, i32** %5, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @obs_property_list_add_string(i32* %54, i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %49, %39, %23, %15
  ret void
}

declare dso_local i32 @json_is_object(i32*) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i8* @get_string_val(i32*, i8*) #1

declare dso_local i32 @get_bool_val(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i32 @json_is_array(i32*) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
