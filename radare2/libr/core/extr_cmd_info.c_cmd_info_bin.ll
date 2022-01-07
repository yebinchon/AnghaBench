; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_info.c_cmd_info_bin.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_info.c_cmd_info_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@R_MODE_JSON = common dso_local global i32 0, align 4
@R_MODE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"{\22core\22:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c",\22core\22:\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c",\22bin\22:\00", align 1
@R_CORE_BIN_ACC_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"No file selected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @cmd_info_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_info_bin(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @r_bin_cur_object(i32 %11)
  store i32* %12, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @R_MODE_JSON, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @R_MODE_ARRAY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @R_MODE_JSON, align 4
  store i32 %28, i32* %6, align 4
  %29 = call i32 @r_cons_strcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22, %17
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @R_MODE_JSON, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @R_MODE_ARRAY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @R_MODE_JSON, align 4
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %42 = call i32 @r_cons_strcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35, %30
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @r_core_file_info(%struct.TYPE_5__* %44, i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @bin_is_executable(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @R_MODE_JSON, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @r_cons_strcat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = load i32, i32* @R_CORE_BIN_ACC_INFO, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @r_core_bin_info(%struct.TYPE_5__* %58, i32 %59, i32 %60, i32 %61, i32* null, i32* null)
  br label %63

63:                                               ; preds = %57, %43
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @R_MODE_JSON, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @r_cons_strcat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68, %63
  br label %76

74:                                               ; preds = %3
  %75 = call i32 @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %73
  ret void
}

declare dso_local i32* @r_bin_cur_object(i32) #1

declare dso_local i32 @r_cons_strcat(i8*) #1

declare dso_local i32 @r_core_file_info(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @bin_is_executable(i32*) #1

declare dso_local i32 @r_core_bin_info(%struct.TYPE_5__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
