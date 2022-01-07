; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_walk_tree.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_walk_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.FTW = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot read dir: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @walk_tree(i8* %0, %struct.stat* %1, i32 %2, %struct.FTW* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.FTW*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.FTW* %3, %struct.FTW** %8, align 8
  %9 = load %struct.FTW*, %struct.FTW** %8, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %26 [
    i32 128, label %11
    i32 129, label %22
  ]

11:                                               ; preds = %4
  %12 = load %struct.stat*, %struct.stat** %6, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @S_ISREG(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.stat*, %struct.stat** %6, align 8
  %20 = call i32 @walk_file(i8* %18, %struct.stat* %19)
  br label %21

21:                                               ; preds = %17, %11
  br label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %4, %22, %21
  ret i32 0
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @walk_file(i8*, %struct.stat*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
