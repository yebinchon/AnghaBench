; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_process_inf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_process_inf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciffile = type { i32 }
%struct.inf_file = type { i32 }
%struct.inf_section = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"start processing section %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Strings\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Strings.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"finished processing section %s (%x)\0A\00", align 1
@DEFAULT_INSTALLER_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciffile*, %struct.inf_file*)* @process_inf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_inf(%struct.ciffile* %0, %struct.inf_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ciffile*, align 8
  %5 = alloca %struct.inf_file*, align 8
  %6 = alloca %struct.inf_section*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ciffile* %0, %struct.ciffile** %4, align 8
  store %struct.inf_file* %1, %struct.inf_file** %5, align 8
  store %struct.inf_section* null, %struct.inf_section** %6, align 8
  %9 = load i32, i32* @S_OK, align 4
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %54, %2
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @SUCCEEDED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.inf_file*, %struct.inf_file** %5, align 8
  %16 = call i64 @inf_next_section(%struct.inf_file* %15, %struct.inf_section** %6)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %61

20:                                               ; preds = %18
  %21 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %22 = call i8* @inf_section_get_name(%struct.inf_section* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %26, i32* %3, align 4
  br label %84

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @debugstr_a(i8* %28)
  %30 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strcasecmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @strncasecmp(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %27
  br label %54

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcasecmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.ciffile*, %struct.ciffile** %4, align 8
  %46 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %47 = call i32 @process_version(%struct.ciffile* %45, %struct.inf_section* %46)
  store i32 %47, i32* %8, align 4
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.ciffile*, %struct.ciffile** %4, align 8
  %50 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @process_section(%struct.ciffile* %49, %struct.inf_section* %50, i8* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %44
  br label %54

54:                                               ; preds = %53, %39
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @debugstr_a(i8* %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @heap_free(i8* %59)
  br label %10

61:                                               ; preds = %18
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @SUCCEEDED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load %struct.ciffile*, %struct.ciffile** %4, align 8
  %67 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @DEFAULT_INSTALLER_DESC, align 4
  %72 = call i32 @strdupA(i32 %71)
  %73 = load %struct.ciffile*, %struct.ciffile** %4, align 8
  %74 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ciffile*, %struct.ciffile** %4, align 8
  %76 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %70
  br label %82

82:                                               ; preds = %81, %65, %61
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %25
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i64 @inf_next_section(%struct.inf_file*, %struct.inf_section**) #1

declare dso_local i8* @inf_section_get_name(%struct.inf_section*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @process_version(%struct.ciffile*, %struct.inf_section*) #1

declare dso_local i32 @process_section(%struct.ciffile*, %struct.inf_section*, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @strdupA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
