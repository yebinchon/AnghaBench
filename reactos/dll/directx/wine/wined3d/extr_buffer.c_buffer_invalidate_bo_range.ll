; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_invalidate_bo_range.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_invalidate_bo_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_buffer = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Invalid range specified, invalidating entire buffer.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Failed to allocate maps array, invalidating entire buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_buffer*, i32, i32)* @buffer_invalidate_bo_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_invalidate_bo_range(%struct.wined3d_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wined3d_buffer* %0, %struct.wined3d_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %9
  br label %77

20:                                               ; preds = %12, %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ugt i32 %21, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub i32 %32, %33
  %35 = icmp ugt i32 %28, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27, %20
  %37 = call i32 @WARN(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %77

38:                                               ; preds = %27
  %39 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %39, i32 0, i32 2
  %41 = bitcast %struct.TYPE_3__** %40 to i8**
  %42 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %42, i32 0, i32 3
  %44 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = call i32 @wined3d_array_reserve(i8** %41, i32* %43, i32 %47, i32 8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %38
  %51 = call i32 @ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %77

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %55 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %58 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %53, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %65 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %68 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %63, i32* %72, align 4
  %73 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %94

77:                                               ; preds = %50, %36, %19
  %78 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %81 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  %85 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %86 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %90 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %77, %52
  ret void
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @wined3d_array_reserve(i8**, i32*, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
