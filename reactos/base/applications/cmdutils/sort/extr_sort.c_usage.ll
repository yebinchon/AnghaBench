; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/sort/extr_sort.c_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/sort/extr_sort.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"SORT\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Sorts input and writes output to a file, console or a device.\0A\00", align 1
@err = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"    SORT [options] < [drive:1][path1]file1 > [drive2:][path2]file2\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"    Command | SORT [options] > [drive:][path]file\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"    Options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"    /R   Reverse order\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"    /+n  Start sorting with column n\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"    /?   Help\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fputs(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i64, i64* @err, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fputs(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fputs(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %21)
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
