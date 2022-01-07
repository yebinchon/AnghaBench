; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_inject_hotkey.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_inject_hotkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.obs_hotkey_internal_inject = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_9__*)* @inject_hotkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inject_hotkey(i8* %0, i64 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.obs_hotkey_internal_inject*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @UNUSED_PARAMETER(i64 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.obs_hotkey_internal_inject*
  store %struct.obs_hotkey_internal_inject* %12, %struct.obs_hotkey_internal_inject** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.obs_hotkey_internal_inject*, %struct.obs_hotkey_internal_inject** %7, align 8
  %15 = getelementptr inbounds %struct.obs_hotkey_internal_inject, %struct.obs_hotkey_internal_inject* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.obs_hotkey_internal_inject*, %struct.obs_hotkey_internal_inject** %7, align 8
  %19 = getelementptr inbounds %struct.obs_hotkey_internal_inject, %struct.obs_hotkey_internal_inject* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @modifiers_match(%struct.TYPE_9__* %13, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.obs_hotkey_internal_inject*, %struct.obs_hotkey_internal_inject** %7, align 8
  %29 = getelementptr inbounds %struct.obs_hotkey_internal_inject, %struct.obs_hotkey_internal_inject* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.obs_hotkey_internal_inject*, %struct.obs_hotkey_internal_inject** %7, align 8
  %35 = getelementptr inbounds %struct.obs_hotkey_internal_inject, %struct.obs_hotkey_internal_inject* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %23
  %39 = phi i1 [ false, %23 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = load %struct.obs_hotkey_internal_inject*, %struct.obs_hotkey_internal_inject** %7, align 8
  %43 = getelementptr inbounds %struct.obs_hotkey_internal_inject, %struct.obs_hotkey_internal_inject* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.obs_hotkey_internal_inject*, %struct.obs_hotkey_internal_inject** %7, align 8
  %47 = getelementptr inbounds %struct.obs_hotkey_internal_inject, %struct.obs_hotkey_internal_inject* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @handle_binding(%struct.TYPE_9__* %41, i32 %45, i32 0, i32 %48, i32* %8)
  br label %50

50:                                               ; preds = %38, %3
  ret i32 1
}

declare dso_local i32 @UNUSED_PARAMETER(i64) #1

declare dso_local i64 @modifiers_match(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @handle_binding(%struct.TYPE_9__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
