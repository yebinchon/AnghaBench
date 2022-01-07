; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_ident.c_mbfl_identify_filter_get_vtbl.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_ident.c_mbfl_identify_filter_get_vtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbfl_identify_vtbl = type { i32 }

@mbfl_identify_filter_list = common dso_local global %struct.mbfl_identify_vtbl** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbfl_identify_vtbl* @mbfl_identify_filter_get_vtbl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbfl_identify_vtbl*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load %struct.mbfl_identify_vtbl**, %struct.mbfl_identify_vtbl*** @mbfl_identify_filter_list, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %4, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds %struct.mbfl_identify_vtbl*, %struct.mbfl_identify_vtbl** %6, i64 %9
  %11 = load %struct.mbfl_identify_vtbl*, %struct.mbfl_identify_vtbl** %10, align 8
  store %struct.mbfl_identify_vtbl* %11, %struct.mbfl_identify_vtbl** %3, align 8
  %12 = icmp ne %struct.mbfl_identify_vtbl* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = load %struct.mbfl_identify_vtbl*, %struct.mbfl_identify_vtbl** %3, align 8
  %15 = getelementptr inbounds %struct.mbfl_identify_vtbl, %struct.mbfl_identify_vtbl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %21

20:                                               ; preds = %13
  br label %5

21:                                               ; preds = %19, %5
  %22 = load %struct.mbfl_identify_vtbl*, %struct.mbfl_identify_vtbl** %3, align 8
  ret %struct.mbfl_identify_vtbl* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
