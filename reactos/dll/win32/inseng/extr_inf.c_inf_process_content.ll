; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_inf_process_content.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_inf_process_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_file = type { i8* }
%struct.inf_section = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_file*)* @inf_process_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inf_process_content(%struct.inf_file* %0) #0 {
  %2 = alloca %struct.inf_file*, align 8
  %3 = alloca %struct.inf_section*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.inf_file* %0, %struct.inf_file** %2, align 8
  store %struct.inf_section* null, %struct.inf_section** %3, align 8
  %8 = load %struct.inf_file*, %struct.inf_file** %2, align 8
  %9 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* @S_OK, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %43, %1
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @SUCCEEDED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i8* @get_next_line(i8** %4, i8** %6)
  store i8* %17, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %44

21:                                               ; preds = %19
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 91
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.inf_file*, %struct.inf_file** %2, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @inf_section_parse(%struct.inf_file* %27, i8* %28, i8* %29, %struct.inf_section** %3)
  store i32 %30, i32* %7, align 4
  br label %43

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strchr(i8* %32, i8 signext 61)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.inf_section*, %struct.inf_section** %3, align 8
  %37 = icmp ne %struct.inf_section* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.inf_section*, %struct.inf_section** %3, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @inf_value_parse(%struct.inf_section* %39, i8* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %35, %31
  br label %43

43:                                               ; preds = %42, %26
  br label %12

44:                                               ; preds = %19
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i8* @get_next_line(i8**, i8**) #1

declare dso_local i32 @inf_section_parse(%struct.inf_file*, i8*, i8*, %struct.inf_section**) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @inf_value_parse(%struct.inf_section*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
