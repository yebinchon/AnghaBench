; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_get_cached_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_get_cached_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cursor_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.cached_cursor* }
%struct.cached_cursor = type { i64, i64, i32* }

@GS_BGRA = common dso_local global i32 0, align 4
@GS_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.cursor_data*, i64, i64)* @get_cached_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_cached_texture(%struct.cursor_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cursor_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cached_cursor, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cached_cursor*, align 8
  store %struct.cursor_data* %0, %struct.cursor_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %41, %3
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.cursor_data*, %struct.cursor_data** %5, align 8
  %14 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %11
  %19 = load %struct.cursor_data*, %struct.cursor_data** %5, align 8
  %20 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.cached_cursor*, %struct.cached_cursor** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.cached_cursor, %struct.cached_cursor* %22, i64 %23
  store %struct.cached_cursor* %24, %struct.cached_cursor** %10, align 8
  %25 = load %struct.cached_cursor*, %struct.cached_cursor** %10, align 8
  %26 = getelementptr inbounds %struct.cached_cursor, %struct.cached_cursor* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %18
  %31 = load %struct.cached_cursor*, %struct.cached_cursor** %10, align 8
  %32 = getelementptr inbounds %struct.cached_cursor, %struct.cached_cursor* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.cached_cursor*, %struct.cached_cursor** %10, align 8
  %38 = getelementptr inbounds %struct.cached_cursor, %struct.cached_cursor* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %4, align 8
  br label %65

40:                                               ; preds = %30, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %11

44:                                               ; preds = %11
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* @GS_BGRA, align 4
  %48 = load i32, i32* @GS_DYNAMIC, align 4
  %49 = call i32* @gs_texture_create(i64 %45, i64 %46, i32 %47, i32 1, i32* null, i32 %48)
  %50 = getelementptr inbounds %struct.cached_cursor, %struct.cached_cursor* %8, i32 0, i32 2
  store i32* %49, i32** %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.cached_cursor, %struct.cached_cursor* %8, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.cached_cursor, %struct.cached_cursor* %8, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  %55 = load %struct.cursor_data*, %struct.cursor_data** %5, align 8
  %56 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %55, i32 0, i32 0
  %57 = bitcast %struct.TYPE_2__* %56 to { i64, %struct.cached_cursor* }*
  %58 = getelementptr inbounds { i64, %struct.cached_cursor* }, { i64, %struct.cached_cursor* }* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds { i64, %struct.cached_cursor* }, { i64, %struct.cached_cursor* }* %57, i32 0, i32 1
  %61 = load %struct.cached_cursor*, %struct.cached_cursor** %60, align 8
  %62 = call i32 @da_push_back(i64 %59, %struct.cached_cursor* %61, %struct.cached_cursor* %8)
  %63 = getelementptr inbounds %struct.cached_cursor, %struct.cached_cursor* %8, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %4, align 8
  br label %65

65:                                               ; preds = %44, %36
  %66 = load i32*, i32** %4, align 8
  ret i32* %66
}

declare dso_local i32* @gs_texture_create(i64, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @da_push_back(i64, %struct.cached_cursor*, %struct.cached_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
