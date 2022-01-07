; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_AnonymousShmemDetach.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_AnonymousShmemDetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AnonymousShmem = common dso_local global i32* null, align 8
@AnonymousShmemSize = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"munmap(%p, %zu) failed: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @AnonymousShmemDetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AnonymousShmemDetach(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @AnonymousShmem, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load i32*, i32** @AnonymousShmem, align 8
  %9 = load i32, i32* @AnonymousShmemSize, align 4
  %10 = call i64 @munmap(i32* %8, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i32, i32* @LOG, align 4
  %14 = load i32*, i32** @AnonymousShmem, align 8
  %15 = load i32, i32* @AnonymousShmemSize, align 4
  %16 = call i32 @elog(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %7
  store i32* null, i32** @AnonymousShmem, align 8
  br label %18

18:                                               ; preds = %17, %2
  ret void
}

declare dso_local i64 @munmap(i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
