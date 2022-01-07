; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_create_from_json.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_create_from_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@JSON_REJECT_DUPLICATES = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"obs-data.c: [obs_data_create_from_json] Failed reading json string (%d): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_data_create_from_json(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i32* (...) @obs_data_create()
  store i32* %6, i32** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @JSON_REJECT_DUPLICATES, align 4
  %9 = call i32* @json_loads(i8* %7, i32 %8, %struct.TYPE_3__* %4)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @obs_data_add_json_object_data(i32* %13, i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @json_decref(i32* %16)
  br label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @LOG_ERROR, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @blog(i32 %19, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @obs_data_release(i32* %25)
  store i32* null, i32** %3, align 8
  br label %27

27:                                               ; preds = %18, %12
  %28 = load i32*, i32** %3, align 8
  ret i32* %28
}

declare dso_local i32* @obs_data_create(...) #1

declare dso_local i32* @json_loads(i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @obs_data_add_json_object_data(i32*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32 @blog(i32, i8*, i32, i32) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
