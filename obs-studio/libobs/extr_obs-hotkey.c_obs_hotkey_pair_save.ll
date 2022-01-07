; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_hotkey_pair_save.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_hotkey_pair_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@obs = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_hotkey_pair_save(i32 %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %9 = load i32**, i32*** %5, align 8
  %10 = icmp ne i32** %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32**, i32*** %6, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = call i32 (...) @lock()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11
  br label %75

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @find_pair_id(i32 %19, i64* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %73

23:                                               ; preds = %18
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %29
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %8, align 8
  %31 = load i32**, i32*** %5, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %23
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @find_id(i32 %38, i64* %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = call i32* @save_hotkey(i32* %48)
  %50 = load i32**, i32*** %5, align 8
  store i32* %49, i32** %50, align 8
  br label %51

51:                                               ; preds = %41, %33, %23
  %52 = load i32**, i32*** %6, align 8
  %53 = icmp ne i32** %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @find_id(i32 %59, i64* %7)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = call i32* @save_hotkey(i32* %69)
  %71 = load i32**, i32*** %6, align 8
  store i32* %70, i32** %71, align 8
  br label %72

72:                                               ; preds = %62, %54, %51
  br label %73

73:                                               ; preds = %72, %22
  %74 = call i32 (...) @unlock()
  br label %75

75:                                               ; preds = %73, %17
  ret void
}

declare dso_local i32 @lock(...) #1

declare dso_local i32 @find_pair_id(i32, i64*) #1

declare dso_local i64 @find_id(i32, i64*) #1

declare dso_local i32* @save_hotkey(i32*) #1

declare dso_local i32 @unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
