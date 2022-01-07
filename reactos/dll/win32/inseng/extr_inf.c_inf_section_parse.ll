; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_inf_section_parse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_inf_section_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_file = type { i32 }
%struct.inf_section = type { i8*, i32, i32, %struct.inf_file* }

@S_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_file*, i8*, i8*, %struct.inf_section**)* @inf_section_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inf_section_parse(%struct.inf_file* %0, i8* %1, i8* %2, %struct.inf_section** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inf_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.inf_section**, align 8
  %10 = alloca %struct.inf_section*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.inf_file* %0, %struct.inf_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.inf_section** %3, %struct.inf_section*** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 91
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %5, align 4
  br label %71

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 59)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i8*, i8** %11, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i8* @trim(i8* %28, i8** %8, i32 %29)
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %26, %19
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 93
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @S_OK, align 4
  store i32 %37, i32* %5, align 4
  br label %71

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i8* @trim(i8* %40, i8** null, i32 %41)
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %5, align 4
  br label %71

47:                                               ; preds = %38
  %48 = call %struct.inf_section* @heap_alloc_zero(i32 24)
  store %struct.inf_section* %48, %struct.inf_section** %10, align 8
  %49 = load %struct.inf_section*, %struct.inf_section** %10, align 8
  %50 = icmp ne %struct.inf_section* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %52, i32* %5, align 4
  br label %71

53:                                               ; preds = %47
  %54 = load i8*, i8** %12, align 8
  %55 = load %struct.inf_section*, %struct.inf_section** %10, align 8
  %56 = getelementptr inbounds %struct.inf_section, %struct.inf_section* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %58 = load %struct.inf_section*, %struct.inf_section** %10, align 8
  %59 = getelementptr inbounds %struct.inf_section, %struct.inf_section* %58, i32 0, i32 3
  store %struct.inf_file* %57, %struct.inf_file** %59, align 8
  %60 = load %struct.inf_section*, %struct.inf_section** %10, align 8
  %61 = getelementptr inbounds %struct.inf_section, %struct.inf_section* %60, i32 0, i32 2
  %62 = call i32 @list_init(i32* %61)
  %63 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %64 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %63, i32 0, i32 0
  %65 = load %struct.inf_section*, %struct.inf_section** %10, align 8
  %66 = getelementptr inbounds %struct.inf_section, %struct.inf_section* %65, i32 0, i32 1
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.inf_section*, %struct.inf_section** %10, align 8
  %69 = load %struct.inf_section**, %struct.inf_section*** %9, align 8
  store %struct.inf_section* %68, %struct.inf_section** %69, align 8
  %70 = load i32, i32* @S_OK, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %53, %51, %45, %36, %17
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @trim(i8*, i8**, i32) #1

declare dso_local %struct.inf_section* @heap_alloc_zero(i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
