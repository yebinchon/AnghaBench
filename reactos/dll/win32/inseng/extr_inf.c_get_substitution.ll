; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_get_substitution.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_get_substitution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_file = type { i32 }
%struct.inf_section = type { i32 }
%struct.inf_value = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Strings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.inf_file*, i8*, i32)* @get_substitution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_substitution(%struct.inf_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.inf_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inf_section*, align 8
  %9 = alloca %struct.inf_value*, align 8
  store %struct.inf_file* %0, %struct.inf_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inf_value* null, %struct.inf_value** %9, align 8
  %10 = load %struct.inf_file*, %struct.inf_file** %5, align 8
  %11 = call %struct.inf_section* @inf_get_section(%struct.inf_file* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.inf_section* %11, %struct.inf_section** %8, align 8
  %12 = load %struct.inf_section*, %struct.inf_section** %8, align 8
  %13 = icmp ne %struct.inf_section* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %41

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %39, %15
  %17 = load %struct.inf_section*, %struct.inf_section** %8, align 8
  %18 = call i64 @inf_section_next_value(%struct.inf_section* %17, %struct.inf_value** %9)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.inf_value*, %struct.inf_value** %9, align 8
  %22 = getelementptr inbounds %struct.inf_value, %struct.inf_value* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strlen(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load %struct.inf_value*, %struct.inf_value** %9, align 8
  %29 = getelementptr inbounds %struct.inf_value, %struct.inf_value* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @strncasecmp(i32 %30, i8* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load %struct.inf_value*, %struct.inf_value** %9, align 8
  %37 = getelementptr inbounds %struct.inf_value, %struct.inf_value* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %4, align 8
  br label %41

39:                                               ; preds = %27, %20
  br label %16

40:                                               ; preds = %16
  store i8* null, i8** %4, align 8
  br label %41

41:                                               ; preds = %40, %35, %14
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local %struct.inf_section* @inf_get_section(%struct.inf_file*, i8*) #1

declare dso_local i64 @inf_section_next_value(%struct.inf_section*, %struct.inf_value**) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncasecmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
