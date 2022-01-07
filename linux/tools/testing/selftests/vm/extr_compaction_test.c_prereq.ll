; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_compaction_test.c_prereq.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_compaction_test.c_prereq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"/proc/sys/vm/compact_unevictable_allowed\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Failed to open\0A/proc/sys/vm/compact_unevictable_allowed\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Failed to read from\0A/proc/sys/vm/compact_unevictable_allowed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prereq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = load i32, i32* @O_RDONLY, align 4
  %5 = load i32, i32* @O_NONBLOCK, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @open(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @perror(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %29

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @read(i32 %13, i8* %2, i32 1)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = call i32 @perror(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @close(i32 %19)
  store i32 -1, i32* %1, align 4
  br label %29

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @close(i32 %22)
  %24 = load i8, i8* %2, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 49
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %29

28:                                               ; preds = %21
  store i32 -1, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %27, %17, %10
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
