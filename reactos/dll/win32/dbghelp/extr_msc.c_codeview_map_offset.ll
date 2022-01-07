; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_map_offset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_map_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc_debug_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msc_debug_info*, i32)* @codeview_map_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeview_map_offset(%struct.msc_debug_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msc_debug_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  store %struct.msc_debug_info* %0, %struct.msc_debug_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.msc_debug_info*, %struct.msc_debug_info** %4, align 8
  %10 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.msc_debug_info*, %struct.msc_debug_info** %4, align 8
  %13 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %79

22:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %75, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %23
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %28
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %37
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  br label %72

56:                                               ; preds = %47
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub i32 %63, %69
  %71 = add i32 %62, %70
  br label %72

72:                                               ; preds = %56, %55
  %73 = phi i32 [ 0, %55 ], [ %71, %56 ]
  store i32 %73, i32* %3, align 4
  br label %79

74:                                               ; preds = %37, %28
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %23

78:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %72, %20
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
