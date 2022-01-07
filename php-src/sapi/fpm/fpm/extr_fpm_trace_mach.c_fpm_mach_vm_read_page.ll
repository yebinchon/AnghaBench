; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_trace_mach.c_fpm_mach_vm_read_page.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_trace_mach.c_fpm_mach_vm_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target = common dso_local global i32 0, align 4
@fpm_pagesize = common dso_local global i32 0, align 4
@local_page = common dso_local global i32 0, align 4
@local_size = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to read vm page: mach_vm_read(): %s (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fpm_mach_vm_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_mach_vm_read_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @target, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @fpm_pagesize, align 4
  %8 = call i64 @mach_vm_read(i32 %5, i32 %6, i32 %7, i32* @local_page, i32* @local_size)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @KERN_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @ZLOG_ERROR, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @mach_error_string(i64 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @zlog(i32 %13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16)
  store i32 -1, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @mach_vm_read(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @zlog(i32, i8*, i32, i64) #1

declare dso_local i32 @mach_error_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
