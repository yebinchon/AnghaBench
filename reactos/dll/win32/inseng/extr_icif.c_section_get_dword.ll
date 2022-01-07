; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_section_get_dword.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_section_get_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_section = type { i32 }
%struct.inf_value = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_section*, i8*, i32*, i32)* @section_get_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @section_get_dword(%struct.inf_section* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inf_section*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inf_value*, align 8
  %11 = alloca i8*, align 8
  store %struct.inf_section* %0, %struct.inf_section** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.inf_value* @inf_get_value(%struct.inf_section* %12, i8* %13)
  store %struct.inf_value* %14, %struct.inf_value** %10, align 8
  %15 = load %struct.inf_value*, %struct.inf_value** %10, align 8
  %16 = icmp ne %struct.inf_value* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %5, align 4
  br label %35

21:                                               ; preds = %4
  %22 = load %struct.inf_value*, %struct.inf_value** %10, align 8
  %23 = call i8* @inf_value_get_value(%struct.inf_value* %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %35

28:                                               ; preds = %21
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @atoi(i8* %29)
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @heap_free(i8* %32)
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %26, %17
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.inf_value* @inf_get_value(%struct.inf_section*, i8*) #1

declare dso_local i8* @inf_value_get_value(%struct.inf_value*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
