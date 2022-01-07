; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_test_mouse.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_test_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32, %struct.active_section* }
%struct.active_section = type { i32, i32 }
%struct.cmd_bind_section = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_ctx*, i32, i32, i32)* @test_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mouse(%struct.input_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.active_section*, align 8
  %12 = alloca %struct.cmd_bind_section*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %14 = call i32 @input_lock(%struct.input_ctx* %13)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %55, %4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %22, i32 0, i32 1
  %24 = load %struct.active_section*, %struct.active_section** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.active_section, %struct.active_section* %24, i64 %26
  store %struct.active_section* %27, %struct.active_section** %11, align 8
  %28 = load %struct.active_section*, %struct.active_section** %11, align 8
  %29 = getelementptr inbounds %struct.active_section, %struct.active_section* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %55

35:                                               ; preds = %21
  %36 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %37 = load %struct.active_section*, %struct.active_section** %11, align 8
  %38 = getelementptr inbounds %struct.active_section, %struct.active_section* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bstr0(i32 %39)
  %41 = call %struct.cmd_bind_section* @get_bind_section(%struct.input_ctx* %36, i32 %40)
  store %struct.cmd_bind_section* %41, %struct.cmd_bind_section** %12, align 8
  %42 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %12, align 8
  %43 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %35
  %47 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %12, align 8
  %48 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @test_rect(i32* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %58

54:                                               ; preds = %46, %35
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %15

58:                                               ; preds = %53, %15
  %59 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %60 = call i32 @input_unlock(%struct.input_ctx* %59)
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @input_lock(%struct.input_ctx*) #1

declare dso_local %struct.cmd_bind_section* @get_bind_section(%struct.input_ctx*, i32) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i64 @test_rect(i32*, i32, i32) #1

declare dso_local i32 @input_unlock(%struct.input_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
