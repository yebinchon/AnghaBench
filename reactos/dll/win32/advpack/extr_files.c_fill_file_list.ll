; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_files.c_fill_file_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_files.c_fill_file_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.FILELIST* }
%struct.FILELIST = type { %struct.FILELIST*, i32, i32 }

@EXTRACT_FILLFILELIST = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @fill_file_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_file_list(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.FILELIST*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @EXTRACT_FILLFILELIST, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @pExtract(%struct.TYPE_4__* %15, i32 %16)
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @EXTRACT_FILLFILELIST, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  store i32 -1, i32* %4, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.FILELIST*, %struct.FILELIST** %29, align 8
  store %struct.FILELIST* %30, %struct.FILELIST** %9, align 8
  br label %31

31:                                               ; preds = %48, %27
  %32 = load %struct.FILELIST*, %struct.FILELIST** %9, align 8
  %33 = icmp ne %struct.FILELIST* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load %struct.FILELIST*, %struct.FILELIST** %9, align 8
  %36 = getelementptr inbounds %struct.FILELIST, %struct.FILELIST* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @file_in_list(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @FALSE, align 4
  %43 = load %struct.FILELIST*, %struct.FILELIST** %9, align 8
  %44 = getelementptr inbounds %struct.FILELIST, %struct.FILELIST* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.FILELIST*, %struct.FILELIST** %9, align 8
  %50 = getelementptr inbounds %struct.FILELIST, %struct.FILELIST* %49, i32 0, i32 0
  %51 = load %struct.FILELIST*, %struct.FILELIST** %50, align 8
  store %struct.FILELIST* %51, %struct.FILELIST** %9, align 8
  br label %31

52:                                               ; preds = %31
  %53 = load i32, i32* @EXTRACT_FILLFILELIST, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %52, %20
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @pExtract(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @file_in_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
