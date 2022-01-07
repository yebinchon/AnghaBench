; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_child.h_init_child_sync.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_child.h_init_child_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_sync = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Semaphore initialization failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_child_sync(%struct.child_sync* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.child_sync*, align 8
  %4 = alloca i32, align 4
  store %struct.child_sync* %0, %struct.child_sync** %3, align 8
  %5 = load %struct.child_sync*, %struct.child_sync** %3, align 8
  %6 = getelementptr inbounds %struct.child_sync, %struct.child_sync* %5, i32 0, i32 1
  %7 = call i32 @sem_init(i32* %6, i32 1, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.child_sync*, %struct.child_sync** %3, align 8
  %14 = getelementptr inbounds %struct.child_sync, %struct.child_sync* %13, i32 0, i32 0
  %15 = call i32 @sem_init(i32* %14, i32 1, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %18, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @sem_init(i32*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
