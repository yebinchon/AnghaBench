; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_remove_sections_by_owner.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_remove_sections_by_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { %struct.cmd_bind_section* }
%struct.cmd_bind_section = type { %struct.cmd_bind_section*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_input_remove_sections_by_owner(%struct.input_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cmd_bind_section*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %7 = call i32 @input_lock(%struct.input_ctx* %6)
  %8 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %8, i32 0, i32 0
  %10 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %9, align 8
  store %struct.cmd_bind_section* %10, %struct.cmd_bind_section** %5, align 8
  br label %11

11:                                               ; preds = %39, %2
  %12 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %5, align 8
  %13 = icmp ne %struct.cmd_bind_section* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %5, align 8
  %16 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %5, align 8
  %24 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strcmp(i64 %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %31 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %5, align 8
  %32 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mp_input_disable_section(%struct.input_ctx* %30, i32 %33)
  %35 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %5, align 8
  %36 = call i32 @remove_binds(%struct.cmd_bind_section* %35, i32 0)
  %37 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %5, align 8
  %38 = call i32 @remove_binds(%struct.cmd_bind_section* %37, i32 1)
  br label %39

39:                                               ; preds = %29, %22, %19, %14
  %40 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %5, align 8
  %41 = getelementptr inbounds %struct.cmd_bind_section, %struct.cmd_bind_section* %40, i32 0, i32 0
  %42 = load %struct.cmd_bind_section*, %struct.cmd_bind_section** %41, align 8
  store %struct.cmd_bind_section* %42, %struct.cmd_bind_section** %5, align 8
  br label %11

43:                                               ; preds = %11
  %44 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %45 = call i32 @input_unlock(%struct.input_ctx* %44)
  ret void
}

declare dso_local i32 @input_lock(%struct.input_ctx*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @mp_input_disable_section(%struct.input_ctx*, i32) #1

declare dso_local i32 @remove_binds(%struct.cmd_bind_section*, i32) #1

declare dso_local i32 @input_unlock(%struct.input_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
