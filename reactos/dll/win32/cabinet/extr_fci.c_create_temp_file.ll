; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_create_temp_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_create_temp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32*, i32)*, i32, i32 (i32, i32, i32)* }
%struct.temp_file = type { i32, i32 }

@CB_MAX_FILENAME = common dso_local global i32 0, align 4
@FCIERR_TEMP_FILE = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@_O_RDWR = common dso_local global i32 0, align 4
@_O_CREAT = common dso_local global i32 0, align 4
@_O_EXCL = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4
@_S_IREAD = common dso_local global i32 0, align 4
@_S_IWRITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.temp_file*)* @create_temp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_temp_file(%struct.TYPE_4__* %0, %struct.temp_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.temp_file*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.temp_file* %1, %struct.temp_file** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %8, align 8
  %10 = load %struct.temp_file*, %struct.temp_file** %5, align 8
  %11 = getelementptr inbounds %struct.temp_file, %struct.temp_file* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CB_MAX_FILENAME, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %9(i32 %12, i32 %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = load i32, i32* @FCIERR_TEMP_FILE, align 4
  %22 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  %23 = call i32 @set_error(%struct.TYPE_4__* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32*, i32)** %27, align 8
  %29 = load %struct.temp_file*, %struct.temp_file** %5, align 8
  %30 = getelementptr inbounds %struct.temp_file, %struct.temp_file* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @_O_RDWR, align 4
  %33 = load i32, i32* @_O_CREAT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @_O_EXCL, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @_O_BINARY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @_S_IREAD, align 4
  %40 = load i32, i32* @_S_IWRITE, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %28(i32 %31, i32 %38, i32 %41, i32* %6, i32 %44)
  %46 = load %struct.temp_file*, %struct.temp_file** %5, align 8
  %47 = getelementptr inbounds %struct.temp_file, %struct.temp_file* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = icmp eq i32 %45, -1
  br i1 %48, label %49, label %55

49:                                               ; preds = %25
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = load i32, i32* @FCIERR_TEMP_FILE, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @set_error(%struct.TYPE_4__* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %25
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %49, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @set_error(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
