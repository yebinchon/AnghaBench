; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@INIT_FAILED = common dso_local global i32 0, align 4
@darkest_dungeon_fix = common dso_local global i64 0, align 8
@data = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@DXGI_FORMAT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@global_hook_info = common dso_local global %struct.TYPE_6__* null, align 8
@nv_capture_available = common dso_local global i64 0, align 8
@INIT_SHTEX_FAILED = common dso_local global i32 0, align 4
@INIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @WindowFromDC(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @INIT_FAILED, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load i64, i64* @darkest_dungeon_fix, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1920, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 0), align 8
  store i32 1080, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 1), align 4
  br label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @GetClientRect(i32 %15, %struct.TYPE_5__* %6)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 1), align 4
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 8), align 8
  %23 = load i32, i32* @DXGI_FORMAT_B8G8R8A8_UNORM, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 7), align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @global_hook_info, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 5), align 8
  %27 = load i64, i64* @nv_capture_available, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @global_hook_info, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 6), align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %29, %21
  %39 = phi i1 [ false, %29 ], [ false, %21 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 2), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 5), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @global_hook_info, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 3), align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @global_hook_info, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 4), align 8
  br label %53

50:                                               ; preds = %38
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 0), align 8
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 3), align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 1), align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 4), align 8
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 2), align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @gl_shtex_init(i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @INIT_SHTEX_FAILED, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %56
  br label %67

64:                                               ; preds = %53
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @gl_shmem_init(i32 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 (...) @gl_free()
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @INIT_SUCCESS, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @WindowFromDC(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gl_shtex_init(i32) #1

declare dso_local i32 @gl_shmem_init(i32) #1

declare dso_local i32 @gl_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
