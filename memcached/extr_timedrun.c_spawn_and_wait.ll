; ModuleID = '/home/carl/AnghaBench/memcached/extr_timedrun.c_spawn_and_wait.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_timedrun.c_spawn_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @spawn_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spawn_and_wait(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %5 = load i32, i32* @EX_SOFTWARE, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @fork()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %19 [
    i32 -1, label %8
    i32 0, label %11
  ]

8:                                                ; preds = %1
  %9 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @EX_OSERR, align 4
  store i32 %10, i32* %3, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load i8**, i8*** %2, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8**, i8*** %2, align 8
  %16 = call i32 @execvp(i8* %14, i8** %15)
  %17 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @EX_SOFTWARE, align 4
  store i32 %18, i32* %3, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @wait_for_process(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %11, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @wait_for_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
