; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_mtu.c_frame_print.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_mtu.c_frame_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" L:%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" D:%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" EF:%d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" EB:%d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" ET:%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" EL:%d\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" AF:%u/%d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frame_print(%struct.frame* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gc_arena, align 4
  %8 = alloca %struct.buffer, align 4
  store %struct.frame* %0, %struct.frame** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = call i32 (...) @gc_new()
  %10 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = call i32 @alloc_buf_gc(i32 256, %struct.gc_arena* %7)
  %12 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.frame*, %struct.frame** %4, align 8
  %21 = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.frame*, %struct.frame** %4, align 8
  %25 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load %struct.frame*, %struct.frame** %4, align 8
  %29 = getelementptr inbounds %struct.frame, %struct.frame* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load %struct.frame*, %struct.frame** %4, align 8
  %33 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.frame*, %struct.frame** %4, align 8
  %37 = getelementptr inbounds %struct.frame, %struct.frame* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %38)
  %40 = load %struct.frame*, %struct.frame** %4, align 8
  %41 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  %44 = load %struct.frame*, %struct.frame** %4, align 8
  %45 = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %18
  %49 = load %struct.frame*, %struct.frame** %4, align 8
  %50 = getelementptr inbounds %struct.frame, %struct.frame* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.frame*, %struct.frame** %4, align 8
  %55 = getelementptr inbounds %struct.frame, %struct.frame* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.frame*, %struct.frame** %4, align 8
  %58 = getelementptr inbounds %struct.frame, %struct.frame* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %53, %48, %18
  %62 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %63 = load i32, i32* %5, align 4
  %64 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @msg(i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  %67 = call i32 @gc_free(%struct.gc_arena* %7)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
