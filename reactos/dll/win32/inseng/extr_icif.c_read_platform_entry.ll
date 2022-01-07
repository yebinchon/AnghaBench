; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_read_platform_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_read_platform_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_section = type { i32 }

@PLATFORM_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Platform\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Win95\00", align 1
@PLATFORM_WIN98 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Win98\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NT4\00", align 1
@PLATFORM_NT4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"NT5\00", align 1
@PLATFORM_NT5 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"NT4Alpha\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NT5Alpha\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Millen\00", align 1
@PLATFORM_MILLEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Unknown platform: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_section*, i32*)* @read_platform_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_platform_entry(%struct.inf_section* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inf_section*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.inf_section* %0, %struct.inf_section** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @PLATFORM_ALL, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.inf_section*, %struct.inf_section** %4, align 8
  %12 = call i32 @section_get_str(%struct.inf_section* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %7, i32* null)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %102

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %96

20:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %92, %20
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i8* @next_part(i8** %8, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strcasecmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @PLATFORM_WIN98, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %90

32:                                               ; preds = %22
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @strcasecmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @PLATFORM_WIN98, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %89

40:                                               ; preds = %32
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strcasecmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @PLATFORM_NT4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %88

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @strcasecmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @PLATFORM_NT5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %87

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @PLATFORM_NT4, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %86

64:                                               ; preds = %56
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @strcasecmp(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @PLATFORM_NT5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %85

72:                                               ; preds = %64
  %73 = load i8*, i8** %8, align 8
  %74 = call i64 @strcasecmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @PLATFORM_MILLEN, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %84

80:                                               ; preds = %72
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @debugstr_a(i8* %81)
  %83 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %68
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %86, %52
  br label %88

88:                                               ; preds = %87, %44
  br label %89

89:                                               ; preds = %88, %36
  br label %90

90:                                               ; preds = %89, %28
  %91 = load i8*, i8** %9, align 8
  store i8* %91, i8** %8, align 8
  br label %92

92:                                               ; preds = %90
  %93 = load i8*, i8** %8, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %22, label %95

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %95, %19
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @heap_free(i8* %97)
  %99 = load i32, i32* %6, align 4
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %96, %14
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @section_get_str(%struct.inf_section*, i8*, i8**, i32*) #1

declare dso_local i8* @next_part(i8**, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
