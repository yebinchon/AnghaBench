; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_effect_get_val.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_gs_effect_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"gs_effect_get_val: invalid param\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gs_effect_get_val(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @LOG_ERROR, align 4
  %10 = call i32 @blog(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @bzalloc(i64 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %5, align 8
  br label %23

22:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %29

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @effect_getval_inline(%struct.TYPE_6__* %24, i8* %25, i64 %26)
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** %2, align 8
  br label %29

29:                                               ; preds = %23, %22, %8
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64 @bzalloc(i64) #1

declare dso_local i32 @effect_getval_inline(%struct.TYPE_6__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
