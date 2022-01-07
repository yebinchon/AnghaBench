; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_verbose_reg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_verbose_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i64, i32 }

@SLJIT_R0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@SLJIT_SP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"s%d\00", align 1
@SLJIT_NUMBER_OF_REGISTERS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sljit_compiler*, i64)* @sljit_verbose_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sljit_verbose_reg(%struct.sljit_compiler* %0, i64 %1) #0 {
  %3 = alloca %struct.sljit_compiler*, align 8
  %4 = alloca i64, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SLJIT_R0, align 8
  %7 = load %struct.sljit_compiler*, %struct.sljit_compiler** %3, align 8
  %8 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = icmp slt i64 %5, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.sljit_compiler*, %struct.sljit_compiler** %3, align 8
  %14 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @SLJIT_R0, align 8
  %18 = sub nsw i64 %16, %17
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %38

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @SLJIT_SP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.sljit_compiler*, %struct.sljit_compiler** %3, align 8
  %26 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @SLJIT_NUMBER_OF_REGISTERS, align 8
  %29 = load i64, i64* %4, align 8
  %30 = sub nsw i64 %28, %29
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %37

32:                                               ; preds = %20
  %33 = load %struct.sljit_compiler*, %struct.sljit_compiler** %3, align 8
  %34 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %24
  br label %38

38:                                               ; preds = %37, %12
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
