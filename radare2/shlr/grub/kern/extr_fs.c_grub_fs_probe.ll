; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_fs.c_grub_fs_probe.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_fs.c_grub_fs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i8*, i32, i32)*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@grub_fs_probe.count = internal global i32 0, align 4
@grub_fs_list = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Detecting %s...\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@dummy_func = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"%s detection failed.\0A\00", align 1
@GRUB_ERR_BAD_FS = common dso_local global i64 0, align 8
@GRUB_ERR_UNKNOWN_FS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"unknown filesystem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @grub_fs_probe(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %85

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @grub_fs_list, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  br label %11

11:                                               ; preds = %43, %9
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @grub_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_11__*, i8*, i32, i32)*, i32 (%struct.TYPE_11__*, i8*, i32, i32)** %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = load i32, i32* @dummy_func, align 4
  %24 = call i32 %21(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 0)
  %25 = load i64, i64* @grub_errno, align 8
  %26 = load i64, i64* @GRUB_ERR_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %2, align 8
  br label %102

30:                                               ; preds = %14
  %31 = call i32 (...) @grub_error_push()
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @grub_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = call i32 (...) @grub_error_pop()
  %37 = load i64, i64* @grub_errno, align 8
  %38 = load i64, i64* @GRUB_ERR_BAD_FS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %102

41:                                               ; preds = %30
  %42 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %42, i64* @grub_errno, align 8
  br label %43

43:                                               ; preds = %41
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %4, align 8
  br label %11

47:                                               ; preds = %11
  br i1 true, label %48, label %84

48:                                               ; preds = %47
  %49 = load i32, i32* @grub_fs_probe.count, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  %52 = load i32, i32* @grub_fs_probe.count, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @grub_fs_probe.count, align 4
  br label %54

54:                                               ; preds = %79, %51
  %55 = call i64 (...) @grub_fs_autoload_hook()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @grub_fs_list, align 8
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %4, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_11__*, i8*, i32, i32)*, i32 (%struct.TYPE_11__*, i8*, i32, i32)** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = load i32, i32* @dummy_func, align 4
  %64 = call i32 %61(%struct.TYPE_11__* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 0)
  %65 = load i64, i64* @grub_errno, align 8
  %66 = load i64, i64* @GRUB_ERR_NONE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load i32, i32* @grub_fs_probe.count, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* @grub_fs_probe.count, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %2, align 8
  br label %102

72:                                               ; preds = %57
  %73 = load i64, i64* @grub_errno, align 8
  %74 = load i64, i64* @GRUB_ERR_BAD_FS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @grub_fs_probe.count, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* @grub_fs_probe.count, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %102

79:                                               ; preds = %72
  %80 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %80, i64* @grub_errno, align 8
  br label %54

81:                                               ; preds = %54
  %82 = load i32, i32* @grub_fs_probe.count, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* @grub_fs_probe.count, align 4
  br label %84

84:                                               ; preds = %81, %48, %47
  br label %99

85:                                               ; preds = %1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %2, align 8
  br label %102

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %84
  %100 = load i32, i32* @GRUB_ERR_UNKNOWN_FS, align 4
  %101 = call i32 @grub_error(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %102

102:                                              ; preds = %99, %92, %76, %68, %40, %28
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %103
}

declare dso_local i32 @grub_dprintf(i8*, i8*, i32) #1

declare dso_local i32 @grub_error_push(...) #1

declare dso_local i32 @grub_error_pop(...) #1

declare dso_local i64 @grub_fs_autoload_hook(...) #1

declare dso_local i32 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
