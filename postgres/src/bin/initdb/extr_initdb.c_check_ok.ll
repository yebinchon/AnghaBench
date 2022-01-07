; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_check_ok.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_check_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@caught_signal = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"caught signal\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@output_failed = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"could not write to child process: %s\0A\00", align 1
@output_errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ok() #0 {
  %1 = load i64, i64* @caught_signal, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* %4)
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @fflush(i32 %6)
  %8 = call i32 @exit(i32 1) #3
  unreachable

9:                                                ; preds = %0
  %10 = load i64, i64* @output_failed, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @output_errno, align 4
  %15 = call i8* @strerror(i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* %13, i8* %15)
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fflush(i32 %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %9
  %21 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @fflush(i32 %23)
  br label %25

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
