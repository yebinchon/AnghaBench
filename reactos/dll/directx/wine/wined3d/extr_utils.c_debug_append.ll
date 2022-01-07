; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_debug_append.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_debug_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.debug_buffer*, i8*, i8*)* @debug_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_append(%struct.debug_buffer* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.debug_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.debug_buffer* %0, %struct.debug_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.debug_buffer*, %struct.debug_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.debug_buffer*, %struct.debug_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10, %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %19

19:                                               ; preds = %18, %10
  %20 = load %struct.debug_buffer*, %struct.debug_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.debug_buffer*, %struct.debug_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @snprintf(i32* %22, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %37, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.debug_buffer*, %struct.debug_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31, %19
  %38 = load %struct.debug_buffer*, %struct.debug_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.debug_buffer*, %struct.debug_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.debug_buffer*, %struct.debug_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = sub nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = call i32 @strcpy(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %63

51:                                               ; preds = %31
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.debug_buffer*, %struct.debug_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %54, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.debug_buffer*, %struct.debug_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %51, %37
  ret void
}

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
