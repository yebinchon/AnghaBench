; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/bflt/extr_bflt.c_r_bin_bflt_init.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/bflt/extr_bflt.c_r_bin_bflt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_bflt_obj = type { i32, i32*, i64, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_bflt_obj*, i32*)* @r_bin_bflt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_bflt_init(%struct.r_bin_bflt_obj* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r_bin_bflt_obj*, align 8
  %5 = alloca i32*, align 8
  store %struct.r_bin_bflt_obj* %0, %struct.r_bin_bflt_obj** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @r_buf_ref(i32* %6)
  %8 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %4, align 8
  %9 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @r_buf_size(i32* %10)
  %12 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %4, align 8
  %13 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %4, align 8
  %15 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %4, align 8
  %17 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %16, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %4, align 8
  %19 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %4, align 8
  %21 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %4, align 8
  %23 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %4, align 8
  %25 = call i32 @bflt_init_hdr(%struct.r_bin_bflt_obj* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @r_buf_ref(i32*) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @bflt_init_hdr(%struct.r_bin_bflt_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
