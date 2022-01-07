; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@debug = common dso_local global i32 0, align 4
@bufsize = common dso_local global i32 0, align 4
@sighandler = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@test_alignment_handler_vsx_206 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"test_alignment_handler_vsx_206\00", align 1
@test_alignment_handler_vsx_207 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"test_alignment_handler_vsx_207\00", align 1
@test_alignment_handler_vsx_300 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"test_alignment_handler_vsx_300\00", align 1
@test_alignment_handler_integer = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"test_alignment_handler_integer\00", align 1
@test_alignment_handler_integer_206 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"test_alignment_handler_integer_206\00", align 1
@test_alignment_handler_vmx = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"test_alignment_handler_vmx\00", align 1
@test_alignment_handler_fp = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"test_alignment_handler_fp\00", align 1
@test_alignment_handler_fp_205 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"test_alignment_handler_fp_205\00", align 1
@test_alignment_handler_fp_206 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"test_alignment_handler_fp_206\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sigaction, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %19 [
    i32 100, label %16
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @debug, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @debug, align 4
  br label %25

19:                                               ; preds = %14
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @usage(i8* %22)
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %16
  br label %9

26:                                               ; preds = %9
  %27 = call i32 (...) @getpagesize()
  store i32 %27, i32* @bufsize, align 4
  %28 = load i32, i32* @sighandler, align 4
  %29 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  %31 = call i32 @sigemptyset(i32* %30)
  %32 = load i32, i32* @SA_SIGINFO, align 4
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @SIGSEGV, align 4
  %35 = call i32 @sigaction(i32 %34, %struct.sigaction* %6, i32* null)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %45, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @SIGBUS, align 4
  %39 = call i32 @sigaction(i32 %38, %struct.sigaction* %6, i32* null)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @SIGILL, align 4
  %43 = call i32 @sigaction(i32 %42, %struct.sigaction* %6, i32* null)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37, %26
  %46 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @exit(i32 1) #3
  unreachable

48:                                               ; preds = %41
  %49 = load i32, i32* @test_alignment_handler_vsx_206, align 4
  %50 = call i32 @test_harness(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @test_alignment_handler_vsx_207, align 4
  %54 = call i32 @test_harness(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @test_alignment_handler_vsx_300, align 4
  %58 = call i32 @test_harness(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @test_alignment_handler_integer, align 4
  %62 = call i32 @test_harness(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @test_alignment_handler_integer_206, align 4
  %66 = call i32 @test_harness(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @test_alignment_handler_vmx, align 4
  %70 = call i32 @test_harness(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @test_alignment_handler_fp, align 4
  %74 = call i32 @test_harness(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @test_alignment_handler_fp_205, align 4
  %78 = call i32 @test_harness(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @test_alignment_handler_fp_206, align 4
  %82 = call i32 @test_harness(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @test_harness(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
