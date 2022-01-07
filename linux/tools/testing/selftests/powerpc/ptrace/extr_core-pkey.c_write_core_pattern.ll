; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_core-pkey.c_write_core_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_core-pkey.c_write_core_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@core_pattern_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Try with root privileges\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error writing to core_pattern file\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @write_core_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_core_pattern(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i32, i32* @core_pattern_file, align 4
  %10 = call i32* @fopen(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @SKIP_IF_MSG(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @fwrite(i8* %16, i32 1, i64 %17, i32* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @fclose(i32* %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = call i32 @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @TEST_FAIL, align 4
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @TEST_PASS, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @SKIP_IF_MSG(i32, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
