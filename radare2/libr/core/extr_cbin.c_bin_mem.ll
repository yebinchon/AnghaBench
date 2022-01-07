; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cbin.c_bin_mem.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cbin.c_bin_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"[Memory]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@R_MODE_JSON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @bin_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bin_mem(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @IS_MODE_JSON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @IS_MODE_RAD(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @IS_MODE_SET(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = call i32 @r_cons_println(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18, %14
  br label %25

25:                                               ; preds = %24, %10
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @r_bin_get_mem(i32 %28)
  store i32* %29, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @IS_MODE_JSON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @r_cons_print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  store i32 0, i32* %3, align 4
  br label %62

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @IS_MODE_JSON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = call i32 @r_cons_print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @R_MODE_JSON, align 4
  %46 = call i32 @bin_mem_print(i32* %44, i32 7, i32 0, i32 %45)
  %47 = call i32 @r_cons_println(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %62

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @IS_MODE_RAD(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @IS_MODE_SET(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @bin_mem_print(i32* %57, i32 7, i32 0, i32 %58)
  br label %60

60:                                               ; preds = %56, %52, %48
  br label %61

61:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %42, %37, %9
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @IS_MODE_JSON(i32) #1

declare dso_local i64 @IS_MODE_RAD(i32) #1

declare dso_local i64 @IS_MODE_SET(i32) #1

declare dso_local i32 @r_cons_println(i8*) #1

declare dso_local i32* @r_bin_get_mem(i32) #1

declare dso_local i32 @r_cons_print(i8*) #1

declare dso_local i32 @bin_mem_print(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
