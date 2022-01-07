; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_pgtypeslib-num_test2.c_check_errno.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_pgtypeslib-num_test2.c_check_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"(no errno set) - \00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"(errno == PGTYPES_NUM_OVERFLOW) - \00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"(errno == PGTYPES_NUM_UNDERFLOW) - \00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"(errno == PGTYPES_NUM_BAD_NUMERIC) - \00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"(errno == PGTYPES_NUM_DIVIDE_ZERO) - \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"(unknown errno (%d))\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"(libc: (%s)) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_errno() #0 {
  %1 = load i32, i32* @errno, align 4
  switch i32 %1, label %12 [
    i32 0, label %2
    i32 129, label %4
    i32 128, label %6
    i32 131, label %8
    i32 130, label %10
  ]

2:                                                ; preds = %0
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %18

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %18

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %18

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %18

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %18

12:                                               ; preds = %0
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @errno, align 4
  %16 = call i8* @strerror(i32 %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %12, %10, %8, %6, %4, %2
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
