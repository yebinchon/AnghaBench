; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_read_version_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_read_version_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_section = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_section*, i32*, i32*)* @read_version_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_version_entry(%struct.inf_section* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inf_section*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.inf_section* %0, %struct.inf_section** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.inf_section*, %struct.inf_section** %5, align 8
  %14 = call i32 @section_get_str(%struct.inf_section* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, i32* null)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %4, align 4
  br label %75

18:                                               ; preds = %3
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %67

22:                                               ; preds = %18
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i8* @next_part(i8** %11, i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @atoi(i8* %26)
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %67

34:                                               ; preds = %22
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %11, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i8* @next_part(i8** %11, i32 %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @atoi(i8* %38)
  %40 = and i32 %39, 65535
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %67

46:                                               ; preds = %34
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %11, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i8* @next_part(i8** %11, i32 %48)
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @atoi(i8* %50)
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %67

58:                                               ; preds = %46
  %59 = load i8*, i8** %12, align 8
  store i8* %59, i8** %11, align 8
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i8* @next_part(i8** %11, i32 %60)
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @atoi(i8* %62)
  %64 = and i32 %63, 65535
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %58, %57, %45, %33, %21
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @heap_free(i8* %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %67, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @section_get_str(%struct.inf_section*, i8*, i8**, i32*) #1

declare dso_local i8* @next_part(i8**, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
