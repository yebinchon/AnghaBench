; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_enum_context_hotkeys.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_enum_context_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.obs_context_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@obs = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_context_data*, i32 (i8*, i64, i32*)*, i8*)* @enum_context_hotkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_context_hotkeys(%struct.obs_context_data* %0, i32 (i8*, i64, i32*)* %1, i8* %2) #0 {
  %4 = alloca %struct.obs_context_data*, align 8
  %5 = alloca i32 (i8*, i64, i32*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.obs_context_data* %0, %struct.obs_context_data** %4, align 8
  store i32 (i8*, i64, i32*)* %1, i32 (i8*, i64, i32*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.obs_context_data*, %struct.obs_context_data** %4, align 8
  %13 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.obs_context_data*, %struct.obs_context_data** %4, align 8
  %17 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @obs, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %48, %3
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @find_id(i32 %33, i64* %11)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %48

37:                                               ; preds = %29
  %38 = load i32 (i8*, i64, i32*)*, i32 (i8*, i64, i32*)** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i32 %38(i8* %39, i64 %40, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %51

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %10, align 8
  br label %25

51:                                               ; preds = %46, %25
  ret void
}

declare dso_local i32 @find_id(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
