; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_init.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_mdmp_obj = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"[ERROR] Failed to initialise header\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"[ERROR] Failed to initialise directory structures!\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"[ERROR] Failed to initialise pe binaries!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_mdmp_obj*)* @r_bin_mdmp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_mdmp_init(%struct.r_bin_mdmp_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r_bin_mdmp_obj*, align 8
  store %struct.r_bin_mdmp_obj* %0, %struct.r_bin_mdmp_obj** %3, align 8
  %4 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %5 = call i32 @r_bin_mdmp_init_parsing(%struct.r_bin_mdmp_obj* %4)
  %6 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %7 = call i32 @r_bin_mdmp_init_hdr(%struct.r_bin_mdmp_obj* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @eprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %13 = call i32 @r_bin_mdmp_init_directory(%struct.r_bin_mdmp_obj* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call i32 @eprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %24

17:                                               ; preds = %11
  %18 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %3, align 8
  %19 = call i32 @r_bin_mdmp_init_pe_bins(%struct.r_bin_mdmp_obj* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 @eprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %24

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %21, %15, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @r_bin_mdmp_init_parsing(%struct.r_bin_mdmp_obj*) #1

declare dso_local i32 @r_bin_mdmp_init_hdr(%struct.r_bin_mdmp_obj*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_bin_mdmp_init_directory(%struct.r_bin_mdmp_obj*) #1

declare dso_local i32 @r_bin_mdmp_init_pe_bins(%struct.r_bin_mdmp_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
