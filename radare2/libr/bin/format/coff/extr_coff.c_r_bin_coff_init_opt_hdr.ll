; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_bin_coff_init_opt_hdr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_bin_coff_init_opt_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_coff_obj = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"2S6I\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"2s6i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_coff_obj*)* @r_bin_coff_init_opt_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_coff_init_opt_hdr(%struct.r_bin_coff_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r_bin_coff_obj*, align 8
  %4 = alloca i32, align 4
  store %struct.r_bin_coff_obj* %0, %struct.r_bin_coff_obj** %3, align 8
  %5 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %6 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %13 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %16 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %15, i32 0, i32 1
  %17 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %3, align 8
  %18 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %23 = call i32 @r_buf_fread_at(i32 %14, i32 4, i32* %16, i8* %22, i32 1)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @r_buf_fread_at(i32, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
