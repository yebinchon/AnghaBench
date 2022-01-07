; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/bflt/extr_bflt.c_r_bin_bflt_free.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/bflt/extr_bflt.c_r_bin_bflt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_bflt_obj = type { i32, %struct.r_bin_bflt_obj* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r_bin_bflt_free(%struct.r_bin_bflt_obj* %0) #0 {
  %2 = alloca %struct.r_bin_bflt_obj*, align 8
  store %struct.r_bin_bflt_obj* %0, %struct.r_bin_bflt_obj** %2, align 8
  %3 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %2, align 8
  %4 = icmp ne %struct.r_bin_bflt_obj* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %2, align 8
  %7 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %6, i32 0, i32 1
  %8 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %7, align 8
  %9 = call i32 @R_FREE(%struct.r_bin_bflt_obj* %8)
  %10 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %2, align 8
  %11 = getelementptr inbounds %struct.r_bin_bflt_obj, %struct.r_bin_bflt_obj* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @r_buf_free(i32 %12)
  %14 = load %struct.r_bin_bflt_obj*, %struct.r_bin_bflt_obj** %2, align 8
  %15 = call i32 @R_FREE(%struct.r_bin_bflt_obj* %14)
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @R_FREE(%struct.r_bin_bflt_obj*) #1

declare dso_local i32 @r_buf_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
