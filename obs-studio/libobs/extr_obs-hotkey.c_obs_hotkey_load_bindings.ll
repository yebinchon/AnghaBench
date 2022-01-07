; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_hotkey_load_bindings.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_obs_hotkey_load_bindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@obs = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"hotkey_bindings_changed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_hotkey_load_bindings(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 (...) @lock()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %46

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @find_id(i32 %14, i64* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %8, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @remove_bindings(i32 %25)
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %38, %17
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @create_binding(i32* %32, i32 %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @hotkey_signal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %42)
  br label %44

44:                                               ; preds = %41, %13
  %45 = call i32 (...) @unlock()
  br label %46

46:                                               ; preds = %44, %12
  ret void
}

declare dso_local i32 @lock(...) #1

declare dso_local i64 @find_id(i32, i64*) #1

declare dso_local i32 @remove_bindings(i32) #1

declare dso_local i32 @create_binding(i32*, i32) #1

declare dso_local i32 @hotkey_signal(i8*, i32*) #1

declare dso_local i32 @unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
