; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_show_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_show_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@show_page_range.flags0 = internal global i64 0, align 8
@show_page_range.cgroup0 = internal global i64 0, align 8
@show_page_range.mapcnt0 = internal global i64 0, align 8
@show_page_range.voff = internal global i64 0, align 8
@show_page_range.index = internal global i64 0, align 8
@show_page_range.count = internal global i64 0, align 8
@opt_pid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%lx\09\00", align 1
@opt_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%lu\09\00", align 1
@opt_list_cgroup = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"@%llu\09\00", align 1
@opt_list_mapcnt = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"%lx\09%lx\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64, i64)* @show_page_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_page_range(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @show_page_range.flags0, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %6
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @show_page_range.cgroup0, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @show_page_range.mapcnt0, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @show_page_range.index, align 8
  %27 = load i64, i64* @show_page_range.count, align 8
  %28 = add i64 %26, %27
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @show_page_range.voff, align 8
  %36 = load i64, i64* @show_page_range.count, align 8
  %37 = add i64 %35, %36
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @show_page_range.count, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* @show_page_range.count, align 8
  br label %83

43:                                               ; preds = %33, %30, %24, %20, %16, %6
  %44 = load i64, i64* @show_page_range.count, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  %47 = load i64, i64* @opt_pid, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* @show_page_range.voff, align 8
  %51 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64, i64* @opt_file, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* @show_page_range.voff, align 8
  %57 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i64, i64* @opt_list_cgroup, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* @show_page_range.cgroup0, align 8
  %63 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i64, i64* @opt_list_mapcnt, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64, i64* @show_page_range.mapcnt0, align 8
  %69 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i64, i64* @show_page_range.index, align 8
  %72 = load i64, i64* @show_page_range.count, align 8
  %73 = load i64, i64* @show_page_range.flags0, align 8
  %74 = call i32 @page_flag_name(i64 %73)
  %75 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %71, i64 %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %43
  %77 = load i64, i64* %10, align 8
  store i64 %77, i64* @show_page_range.flags0, align 8
  %78 = load i64, i64* %11, align 8
  store i64 %78, i64* @show_page_range.cgroup0, align 8
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* @show_page_range.mapcnt0, align 8
  %80 = load i64, i64* %8, align 8
  store i64 %80, i64* @show_page_range.index, align 8
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* @show_page_range.voff, align 8
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* @show_page_range.count, align 8
  br label %83

83:                                               ; preds = %76, %39
  ret void
}

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i32 @page_flag_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
