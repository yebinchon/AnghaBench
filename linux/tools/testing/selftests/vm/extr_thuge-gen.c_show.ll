; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_thuge-gen.c_show.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_thuge-gen.c_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%luMB: \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"cat /sys/kernel/mm/hugepages/hugepages-%lukB/free_hugepages\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [100 x i8], align 16
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 (...) @getpagesize()
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = lshr i64 %9, 20
  %11 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fflush(i32 %12)
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %15 = load i64, i64* %2, align 8
  %16 = lshr i64 %15, 10
  %17 = call i32 @snprintf(i8* %14, i32 100, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %19 = call i32 @system(i8* %18)
  br label %20

20:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @system(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
