; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_imagetag_cmdline.c_print_help_common.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_imagetag_cmdline.c_print_help_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gengetopt_args_info_purpose = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@gengetopt_args_info_usage = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@gengetopt_args_info_description = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_help_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_help_common() #0 {
  %1 = call i32 (...) @imagetag_cmdline_print_version()
  %2 = load i8*, i8** @gengetopt_args_info_purpose, align 8
  %3 = call i64 @strlen(i8* %2)
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i8*, i8** @gengetopt_args_info_purpose, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i8*, i8** @gengetopt_args_info_usage, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i8*, i8** @gengetopt_args_info_usage, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** @gengetopt_args_info_description, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** @gengetopt_args_info_description, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @imagetag_cmdline_print_version(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
