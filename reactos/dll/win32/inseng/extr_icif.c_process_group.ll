; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_process_group.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_process_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciffile = type { i32, i32 }
%struct.inf_section = type { i32 }
%struct.cifgroup = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@cifgroupVtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"DisplayName\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciffile*, %struct.inf_section*, i8*)* @process_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_group(%struct.ciffile* %0, %struct.inf_section* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ciffile*, align 8
  %6 = alloca %struct.inf_section*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cifgroup*, align 8
  %9 = alloca i32, align 4
  store %struct.ciffile* %0, %struct.ciffile** %5, align 8
  store %struct.inf_section* %1, %struct.inf_section** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %10, i32* %9, align 4
  %11 = call %struct.cifgroup* @heap_alloc_zero(i32 32)
  store %struct.cifgroup* %11, %struct.cifgroup** %8, align 8
  %12 = load %struct.cifgroup*, %struct.cifgroup** %8, align 8
  %13 = icmp ne %struct.cifgroup* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %4, align 4
  br label %58

16:                                               ; preds = %3
  %17 = load %struct.cifgroup*, %struct.cifgroup** %8, align 8
  %18 = getelementptr inbounds %struct.cifgroup, %struct.cifgroup* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* @cifgroupVtbl, i32** %19, align 8
  %20 = load %struct.ciffile*, %struct.ciffile** %5, align 8
  %21 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %20, i32 0, i32 1
  %22 = load %struct.cifgroup*, %struct.cifgroup** %8, align 8
  %23 = getelementptr inbounds %struct.cifgroup, %struct.cifgroup* %22, i32 0, i32 4
  store i32* %21, i32** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strdupA(i8* %24)
  %26 = load %struct.cifgroup*, %struct.cifgroup** %8, align 8
  %27 = getelementptr inbounds %struct.cifgroup, %struct.cifgroup* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cifgroup*, %struct.cifgroup** %8, align 8
  %29 = getelementptr inbounds %struct.cifgroup, %struct.cifgroup* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  br label %54

33:                                               ; preds = %16
  %34 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %35 = load %struct.cifgroup*, %struct.cifgroup** %8, align 8
  %36 = getelementptr inbounds %struct.cifgroup, %struct.cifgroup* %35, i32 0, i32 2
  %37 = call i32 @section_get_str(%struct.inf_section* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %36, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %54

40:                                               ; preds = %33
  %41 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %42 = load %struct.cifgroup*, %struct.cifgroup** %8, align 8
  %43 = getelementptr inbounds %struct.cifgroup, %struct.cifgroup* %42, i32 0, i32 1
  %44 = call i32 @section_get_dword(%struct.inf_section* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %43, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %54

47:                                               ; preds = %40
  %48 = load %struct.ciffile*, %struct.ciffile** %5, align 8
  %49 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %48, i32 0, i32 0
  %50 = load %struct.cifgroup*, %struct.cifgroup** %8, align 8
  %51 = getelementptr inbounds %struct.cifgroup, %struct.cifgroup* %50, i32 0, i32 0
  %52 = call i32 @list_add_head(i32* %49, i32* %51)
  %53 = load i32, i32* @S_OK, align 4
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %46, %39, %32
  %55 = load %struct.cifgroup*, %struct.cifgroup** %8, align 8
  %56 = call i32 @group_free(%struct.cifgroup* %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %47, %14
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.cifgroup* @heap_alloc_zero(i32) #1

declare dso_local i32 @strdupA(i8*) #1

declare dso_local i32 @section_get_str(%struct.inf_section*, i8*, i32*, i32*) #1

declare dso_local i32 @section_get_dword(%struct.inf_section*, i8*, i32*, i32) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @group_free(%struct.cifgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
