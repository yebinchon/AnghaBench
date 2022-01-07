; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_init.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_te_obj_t = type { i64, i32*, i32* }

@.str = private unnamed_addr constant [25 x i8] c"Warning: File is not TE\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Warning: Cannot initialize sections\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_te_obj_t*)* @r_bin_te_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_te_init(%struct.r_bin_te_obj_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r_bin_te_obj_t*, align 8
  store %struct.r_bin_te_obj_t* %0, %struct.r_bin_te_obj_t** %3, align 8
  %4 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %5 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %4, i32 0, i32 2
  store i32* null, i32** %5, align 8
  %6 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %7 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %6, i32 0, i32 1
  store i32* null, i32** %7, align 8
  %8 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %9 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %11 = call i32 @r_bin_te_init_hdr(%struct.r_bin_te_obj_t* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %17 = call i32 @r_bin_te_init_sections(%struct.r_bin_te_obj_t* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call i32 @eprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %22

21:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @r_bin_te_init_hdr(%struct.r_bin_te_obj_t*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_bin_te_init_sections(%struct.r_bin_te_obj_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
