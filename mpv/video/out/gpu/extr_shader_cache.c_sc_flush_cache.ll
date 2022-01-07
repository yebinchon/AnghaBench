; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_sc_flush_cache.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_sc_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { i32, %struct.TYPE_5__*, %struct.sc_entry** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i64)* }
%struct.sc_entry = type { i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"flushing shader cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_cache*)* @sc_flush_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_flush_cache(%struct.gl_shader_cache* %0) #0 {
  %2 = alloca %struct.gl_shader_cache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_entry*, align 8
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %2, align 8
  %5 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %2, align 8
  %6 = call i32 @MP_DBG(%struct.gl_shader_cache* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %53, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %2, align 8
  %10 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %7
  %14 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %2, align 8
  %15 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %14, i32 0, i32 2
  %16 = load %struct.sc_entry**, %struct.sc_entry*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sc_entry*, %struct.sc_entry** %16, i64 %18
  %20 = load %struct.sc_entry*, %struct.sc_entry** %19, align 8
  store %struct.sc_entry* %20, %struct.sc_entry** %4, align 8
  %21 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %2, align 8
  %22 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.sc_entry*, %struct.sc_entry** %4, align 8
  %25 = getelementptr inbounds %struct.sc_entry, %struct.sc_entry* %24, i32 0, i32 2
  %26 = call i32 @ra_buf_free(%struct.TYPE_5__* %23, i32* %25)
  %27 = load %struct.sc_entry*, %struct.sc_entry** %4, align 8
  %28 = getelementptr inbounds %struct.sc_entry, %struct.sc_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %13
  %32 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %2, align 8
  %33 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_5__*, i64)*, i32 (%struct.TYPE_5__*, i64)** %37, align 8
  %39 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %2, align 8
  %40 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.sc_entry*, %struct.sc_entry** %4, align 8
  %43 = getelementptr inbounds %struct.sc_entry, %struct.sc_entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 %38(%struct.TYPE_5__* %41, i64 %44)
  br label %46

46:                                               ; preds = %31, %13
  %47 = load %struct.sc_entry*, %struct.sc_entry** %4, align 8
  %48 = getelementptr inbounds %struct.sc_entry, %struct.sc_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @timer_pool_destroy(i32 %49)
  %51 = load %struct.sc_entry*, %struct.sc_entry** %4, align 8
  %52 = call i32 @talloc_free(%struct.sc_entry* %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %7

56:                                               ; preds = %7
  %57 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %2, align 8
  %58 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  ret void
}

declare dso_local i32 @MP_DBG(%struct.gl_shader_cache*, i8*) #1

declare dso_local i32 @ra_buf_free(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @timer_pool_destroy(i32) #1

declare dso_local i32 @talloc_free(%struct.sc_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
