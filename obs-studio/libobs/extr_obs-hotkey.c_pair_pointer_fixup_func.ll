; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_pair_pointer_fixup_func.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_pair_pointer_fixup_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

@obs = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_10__*, i8*)* @pair_pointer_fixup_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pair_pointer_fixup_func(i64 %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @UNUSED_PARAMETER(i8* %8)
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @UNUSED_PARAMETER(i8* %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @find_id(i32 %16, i64* %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @obs, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %28, align 8
  br label %29

29:                                               ; preds = %19, %3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @find_id(i32 %34, i64* %4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @obs, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %46, align 8
  br label %47

47:                                               ; preds = %37, %29
  ret i32 1
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i64 @find_id(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
