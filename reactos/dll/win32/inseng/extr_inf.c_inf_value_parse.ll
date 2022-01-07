; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_inf_value_parse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_inf_value_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_section = type { i32 }
%struct.inf_value = type { i8*, i8*, i32, %struct.inf_section* }

@S_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_section*, i8*)* @inf_value_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inf_value_parse(%struct.inf_section* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inf_section*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inf_value*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.inf_section* %0, %struct.inf_section** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 61)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @S_OK, align 4
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load i8*, i8** %9, align 8
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i8* @trim(i8* %21, i32* null, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i8* @trim(i8* %24, i32* null, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = call %struct.inf_value* @heap_alloc_zero(i32 32)
  store %struct.inf_value* %27, %struct.inf_value** %6, align 8
  %28 = load %struct.inf_value*, %struct.inf_value** %6, align 8
  %29 = icmp ne %struct.inf_value* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %16
  %31 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %16
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.inf_value*, %struct.inf_value** %6, align 8
  %35 = getelementptr inbounds %struct.inf_value, %struct.inf_value* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.inf_value*, %struct.inf_value** %6, align 8
  %38 = getelementptr inbounds %struct.inf_value, %struct.inf_value* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.inf_section*, %struct.inf_section** %4, align 8
  %40 = load %struct.inf_value*, %struct.inf_value** %6, align 8
  %41 = getelementptr inbounds %struct.inf_value, %struct.inf_value* %40, i32 0, i32 3
  store %struct.inf_section* %39, %struct.inf_section** %41, align 8
  %42 = load %struct.inf_section*, %struct.inf_section** %4, align 8
  %43 = getelementptr inbounds %struct.inf_section, %struct.inf_section* %42, i32 0, i32 0
  %44 = load %struct.inf_value*, %struct.inf_value** %6, align 8
  %45 = getelementptr inbounds %struct.inf_value, %struct.inf_value* %44, i32 0, i32 2
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  %47 = load i32, i32* @S_OK, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %32, %30, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @trim(i8*, i32*, i32) #1

declare dso_local %struct.inf_value* @heap_alloc_zero(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
