; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_pg_crc32c_armv8_choose.c_pg_crc32c_armv8_available.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_pg_crc32c_armv8_choose.c_pg_crc32c_armv8_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGILL = common dso_local global i32 0, align 4
@illegal_instruction_handler = common dso_local global i32 0, align 4
@illegal_instruction_jump = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"crc32 hardware and software results disagree\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"using armv8 crc32 hardware = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pg_crc32c_armv8_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_crc32c_armv8_available() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 42, i32* %1, align 4
  %3 = load i32, i32* @SIGILL, align 4
  %4 = load i32, i32* @illegal_instruction_handler, align 4
  %5 = call i32 @pqsignal(i32 %3, i32 %4)
  %6 = load i32, i32* @illegal_instruction_jump, align 4
  %7 = call i64 @sigsetjmp(i32 %6, i32 1) #3
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = call i64 @pg_comp_crc32c_armv8(i32 0, i32* %1, i32 4)
  %11 = call i64 @pg_comp_crc32c_sb8(i32 0, i32* %1, i32 4)
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %15

14:                                               ; preds = %0
  store i32 -1, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %9
  %16 = load i32, i32* @SIGILL, align 4
  %17 = load i32, i32* @SIG_DFL, align 4
  %18 = call i32 @pqsignal(i32 %16, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 (i32, i8*, ...) @elog(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* @DEBUG1, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @elog(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i32 @pqsignal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i64 @pg_comp_crc32c_armv8(i32, i32*, i32) #1

declare dso_local i64 @pg_comp_crc32c_sb8(i32, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
