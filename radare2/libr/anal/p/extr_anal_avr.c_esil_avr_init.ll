; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_esil_avr_init.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_esil_avr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@desctx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"des\00", align 1
@avr_custom_des = common dso_local global i32 0, align 4
@R_ANAL_ESIL_OP_TYPE_CUSTOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"SPM_PAGE_ERASE\00", align 1
@avr_custom_spm_page_erase = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"SPM_PAGE_FILL\00", align 1
@avr_custom_spm_page_fill = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"SPM_PAGE_WRITE\00", align 1
@avr_custom_spm_page_write = common dso_local global i32 0, align 4
@esil_avr_hook_reg_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @esil_avr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_avr_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

7:                                                ; preds = %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @desctx, i32 0, i32 0), align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = load i32, i32* @avr_custom_des, align 4
  %10 = load i32, i32* @R_ANAL_ESIL_OP_TYPE_CUSTOM, align 4
  %11 = call i32 @r_anal_esil_set_op(%struct.TYPE_7__* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9, i32 0, i32 0, i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = load i32, i32* @avr_custom_spm_page_erase, align 4
  %14 = load i32, i32* @R_ANAL_ESIL_OP_TYPE_CUSTOM, align 4
  %15 = call i32 @r_anal_esil_set_op(%struct.TYPE_7__* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 0, i32 0, i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = load i32, i32* @avr_custom_spm_page_fill, align 4
  %18 = load i32, i32* @R_ANAL_ESIL_OP_TYPE_CUSTOM, align 4
  %19 = call i32 @r_anal_esil_set_op(%struct.TYPE_7__* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 0, i32 0, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = load i32, i32* @avr_custom_spm_page_write, align 4
  %22 = load i32, i32* @R_ANAL_ESIL_OP_TYPE_CUSTOM, align 4
  %23 = call i32 @r_anal_esil_set_op(%struct.TYPE_7__* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 0, i32 0, i32 %22)
  %24 = load i32, i32* @esil_avr_hook_reg_write, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %7, %6
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @r_anal_esil_set_op(%struct.TYPE_7__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
