; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_arrays.h_fpm_array_item_last.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_arrays.h_fpm_array_item_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_array_s = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fpm_array_s*)* @fpm_array_item_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fpm_array_item_last(%struct.fpm_array_s* %0) #0 {
  %2 = alloca %struct.fpm_array_s*, align 8
  store %struct.fpm_array_s* %0, %struct.fpm_array_s** %2, align 8
  %3 = load %struct.fpm_array_s*, %struct.fpm_array_s** %2, align 8
  %4 = load %struct.fpm_array_s*, %struct.fpm_array_s** %2, align 8
  %5 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = sub nsw i64 %6, 1
  %8 = call i8* @fpm_array_item(%struct.fpm_array_s* %3, i64 %7)
  ret i8* %8
}

declare dso_local i8* @fpm_array_item(%struct.fpm_array_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
