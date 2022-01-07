; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_tlbie_test.c_log_anamoly.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_tlbie_test.c_log_anamoly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fp = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [55 x i8] c"Thread %02d: Addr 0x%lx: Expected 0x%x, Observed 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Thread %02d: Expected Thread id   = %02d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Thread %02d: Observed Thread id   = %02d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Thread %02d: Expected Word offset = %03d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Thread %02d: Observed Word offset = %03d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Thread %02d: Expected sweep-id    = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Thread %02d: Observed sweep-id    = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"----------------------------------------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32)* @log_anamoly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_anamoly(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32**, i32*** @fp, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @extract_tid(i32 %24)
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @extract_tid(i32 %29)
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @extract_word_offset(i32 %34)
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @extract_word_offset(i32 %39)
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @extract_sweep_id(i32 %44)
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %43, i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @extract_sweep_id(i32 %49)
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %48, i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @extract_tid(i32) #1

declare dso_local i32 @extract_word_offset(i32) #1

declare dso_local i32 @extract_sweep_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
