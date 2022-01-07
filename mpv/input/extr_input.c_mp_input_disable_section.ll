; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_disable_section.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_disable_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32, %struct.active_section* }
%struct.active_section = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_input_disable_section(%struct.input_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.active_section*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %8 = call i32 @input_lock(%struct.input_ctx* %7)
  %9 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @normalize_section(%struct.input_ctx* %9, i8* %10)
  store i8* %11, i8** %4, align 8
  %12 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %20, i32 0, i32 1
  %22 = load %struct.active_section*, %struct.active_section** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.active_section, %struct.active_section* %22, i64 %24
  store %struct.active_section* %25, %struct.active_section** %6, align 8
  %26 = load %struct.active_section*, %struct.active_section** %6, align 8
  %27 = getelementptr inbounds %struct.active_section, %struct.active_section* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strcmp(i32 %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %19
  %33 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %33, i32 0, i32 1
  %35 = load %struct.active_section*, %struct.active_section** %34, align 8
  %36 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @MP_TARRAY_REMOVE_AT(%struct.active_section* %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %47 = call i32 @input_unlock(%struct.input_ctx* %46)
  ret void
}

declare dso_local i32 @input_lock(%struct.input_ctx*) #1

declare dso_local i8* @normalize_section(%struct.input_ctx*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.active_section*, i32, i32) #1

declare dso_local i32 @input_unlock(%struct.input_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
