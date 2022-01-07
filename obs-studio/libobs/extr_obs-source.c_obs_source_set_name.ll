; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_set_name.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.calldata = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"obs_source_set_name\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"new_name\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"prev_name\00", align 1
@obs = common dso_local global %struct.TYPE_9__* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"source_rename\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rename\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_set_name(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.calldata, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call i32 @obs_source_valid(%struct.TYPE_7__* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %71

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %25, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %24, %18, %14, %11
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @bstrdup(i8* %36)
  store i8* %37, i8** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @obs_context_data_setname(%struct.TYPE_8__* %39, i8* %40)
  %42 = call i32 @calldata_init(%struct.calldata* %5)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = call i32 @calldata_set_ptr(%struct.calldata* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @calldata_set_string(%struct.calldata* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @calldata_set_string(%struct.calldata* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %32
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @obs, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @signal_handler_signal(i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), %struct.calldata* %5)
  br label %62

62:                                               ; preds = %57, %32
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @signal_handler_signal(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.calldata* %5)
  %68 = call i32 @calldata_free(%struct.calldata* %5)
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @bfree(i8* %69)
  br label %71

71:                                               ; preds = %10, %62, %24
  ret void
}

declare dso_local i32 @obs_source_valid(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @obs_context_data_setname(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @calldata_init(%struct.calldata*) #1

declare dso_local i32 @calldata_set_ptr(%struct.calldata*, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @calldata_set_string(%struct.calldata*, i8*, i8*) #1

declare dso_local i32 @signal_handler_signal(i32, i8*, %struct.calldata*) #1

declare dso_local i32 @calldata_free(%struct.calldata*) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
