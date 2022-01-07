; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_bin_coff_init.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_bin_coff_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_coff_obj = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Warning: failed to init hdr\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Warning: failed to init section header\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Warning: failed to init symtable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_coff_obj*, i32*, i32)* @r_bin_coff_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_coff_init(%struct.r_bin_coff_obj* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r_bin_coff_obj*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.r_bin_coff_obj* %0, %struct.r_bin_coff_obj** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @r_buf_ref(i32* %8)
  %10 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %11 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @r_buf_size(i32* %12)
  %14 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %15 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %18 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %20 = call i32 @r_bin_coff_init_hdr(%struct.r_bin_coff_obj* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = call i32 @bprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %39

24:                                               ; preds = %3
  %25 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %26 = call i32 @r_bin_coff_init_opt_hdr(%struct.r_bin_coff_obj* %25)
  %27 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %28 = call i32 @r_bin_coff_init_scn_hdr(%struct.r_bin_coff_obj* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = call i32 @bprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %39

32:                                               ; preds = %24
  %33 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %5, align 8
  %34 = call i32 @r_bin_coff_init_symtable(%struct.r_bin_coff_obj* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 @bprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %39

38:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %36, %30, %22
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @r_buf_ref(i32*) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_bin_coff_init_hdr(%struct.r_bin_coff_obj*) #1

declare dso_local i32 @bprintf(i8*) #1

declare dso_local i32 @r_bin_coff_init_opt_hdr(%struct.r_bin_coff_obj*) #1

declare dso_local i32 @r_bin_coff_init_scn_hdr(%struct.r_bin_coff_obj*) #1

declare dso_local i32 @r_bin_coff_init_symtable(%struct.r_bin_coff_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
