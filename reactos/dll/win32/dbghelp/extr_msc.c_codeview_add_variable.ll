; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_variable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc_debug_info = type { i32 }
%struct.symt_compiland = type { i32 }
%struct.location = type { i32, i64, i32 }

@loc_tlsrel = common dso_local global i32 0, align 4
@loc_absolute = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msc_debug_info*, %struct.symt_compiland*, i8*, i32, i32, i32, i64, i64, i64)* @codeview_add_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeview_add_variable(%struct.msc_debug_info* %0, %struct.symt_compiland* %1, i8* %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7, i64 %8) #0 {
  %10 = alloca %struct.msc_debug_info*, align 8
  %11 = alloca %struct.symt_compiland*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.location, align 8
  store %struct.msc_debug_info* %0, %struct.msc_debug_info** %10, align 8
  store %struct.symt_compiland* %1, %struct.symt_compiland** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %75

22:                                               ; preds = %9
  %23 = load i8*, i8** %12, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %22
  %28 = load i64, i64* %17, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @loc_tlsrel, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @loc_absolute, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.location, %struct.location* %19, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.location, %struct.location* %19, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %17, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  br label %47

42:                                               ; preds = %34
  %43 = load %struct.msc_debug_info*, %struct.msc_debug_info** %10, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @codeview_get_address(%struct.msc_debug_info* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %40
  %48 = phi i32 [ %41, %40 ], [ %46, %42 ]
  %49 = getelementptr inbounds %struct.location, %struct.location* %19, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i64, i64* %18, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %17, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load %struct.msc_debug_info*, %struct.msc_debug_info** %10, align 8
  %57 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.location, %struct.location* %19, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @symt_find_nearest(i32 %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %55, %52, %47
  %64 = load %struct.msc_debug_info*, %struct.msc_debug_info** %10, align 8
  %65 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.symt_compiland*, %struct.symt_compiland** %11, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %16, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @codeview_get_type(i32 %70, i32 %71)
  %73 = call i32 @symt_new_global_variable(i32 %66, %struct.symt_compiland* %67, i8* %68, i64 %69, %struct.location* byval(%struct.location) align 8 %19, i32 0, i32 %72)
  br label %74

74:                                               ; preds = %63, %55
  br label %75

75:                                               ; preds = %74, %22, %9
  ret void
}

declare dso_local i32 @codeview_get_address(%struct.msc_debug_info*, i32, i32) #1

declare dso_local i32 @symt_find_nearest(i32, i32) #1

declare dso_local i32 @symt_new_global_variable(i32, %struct.symt_compiland*, i8*, i64, %struct.location* byval(%struct.location) align 8, i32, i32) #1

declare dso_local i32 @codeview_get_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
