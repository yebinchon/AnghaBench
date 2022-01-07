; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_process_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_process_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciffile = type { i32 }
%struct.inf_section = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"SectionType\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Component\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Don't know how to process %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciffile*, %struct.inf_section*, i8*)* @process_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_section(%struct.ciffile* %0, %struct.inf_section* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ciffile*, align 8
  %6 = alloca %struct.inf_section*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ciffile* %0, %struct.ciffile** %5, align 8
  store %struct.inf_section* %1, %struct.inf_section** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %11 = call i32 @section_get_str(%struct.inf_section* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %14, i32* %4, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @strcasecmp(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.ciffile*, %struct.ciffile** %5, align 8
  %21 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @process_component(%struct.ciffile* %20, %struct.inf_section* %21, i8* %22)
  store i32 %23, i32* %8, align 4
  br label %38

24:                                               ; preds = %15
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @strcasecmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.ciffile*, %struct.ciffile** %5, align 8
  %30 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @process_group(%struct.ciffile* %29, %struct.inf_section* %30, i8* %31)
  store i32 %32, i32* %8, align 4
  br label %37

33:                                               ; preds = %24
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @debugstr_a(i8* %34)
  %36 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @heap_free(i8* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %13
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @section_get_str(%struct.inf_section*, i8*, i8**, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @process_component(%struct.ciffile*, %struct.inf_section*, i8*) #1

declare dso_local i32 @process_group(%struct.ciffile*, %struct.inf_section*, i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
