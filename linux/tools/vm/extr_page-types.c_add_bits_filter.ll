; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_add_bits_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_add_bits_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_bit_filters = common dso_local global i64 0, align 8
@MAX_BIT_FILTERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"too much bit filters\0A\00", align 1
@opt_mask = common dso_local global i8** null, align 8
@opt_bits = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @add_bits_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_bits_filter(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @nr_bit_filters, align 8
  %6 = load i64, i64* @MAX_BIT_FILTERS, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i8*, i8** %3, align 8
  %12 = load i8**, i8*** @opt_mask, align 8
  %13 = load i64, i64* @nr_bit_filters, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  store i8* %11, i8** %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8**, i8*** @opt_bits, align 8
  %17 = load i64, i64* @nr_bit_filters, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  store i8* %15, i8** %18, align 8
  %19 = load i64, i64* @nr_bit_filters, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* @nr_bit_filters, align 8
  ret void
}

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
