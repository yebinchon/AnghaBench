; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_avr_custom_spm_page_fill.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_avr_custom_spm_page_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@CPU_CONST_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"page_size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @avr_custom_spm_page_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avr_custom_spm_page_fill(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %12, %1
  store i32 0, i32* %2, align 4
  br label %66

25:                                               ; preds = %17
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @__esil_pop_argument(%struct.TYPE_7__* %26, i32* %5)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %66

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = call i32 @__esil_pop_argument(%struct.TYPE_7__* %31, i32* %7)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %66

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @__esil_pop_argument(%struct.TYPE_7__* %37, i32* %7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %66

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @get_cpu_model(i32 %47)
  store i32* %48, i32** %4, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @CPU_CONST_PARAM, align 4
  %51 = call i32 @const_by_name(i32* %49, i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @const_get_value(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @MASK(i32 %53)
  %55 = xor i32 %54, 1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = call i32 @r_anal_esil_mem_write(%struct.TYPE_7__* %58, i32 %59, i32* %8, i32 1)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = call i32 @r_anal_esil_mem_write(%struct.TYPE_7__* %62, i32 %63, i32* %9, i32 1)
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %41, %40, %34, %29, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @__esil_pop_argument(%struct.TYPE_7__*, i32*) #1

declare dso_local i32* @get_cpu_model(i32) #1

declare dso_local i32 @const_get_value(i32) #1

declare dso_local i32 @const_by_name(i32*, i32, i8*) #1

declare dso_local i32 @MASK(i32) #1

declare dso_local i32 @r_anal_esil_mem_write(%struct.TYPE_7__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
