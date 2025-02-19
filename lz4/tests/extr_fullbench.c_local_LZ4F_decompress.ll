; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_fullbench.c_local_LZ4F_decompress.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_fullbench.c_local_LZ4F_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_dCtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Error decompressing frame : unfinished frame \0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Error decompressing frame : read size incorrect \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @local_LZ4F_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_LZ4F_decompress(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @g_dCtx, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @LZ4F_decompress(i32 %24, i8* %25, i64* %10, i8* %26, i64* %9, i32* null)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = call i32 @DISPLAY(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @exit(i32 8) #3
  unreachable

33:                                               ; preds = %4
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i32 @DISPLAY(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @exit(i32 9) #3
  unreachable

41:                                               ; preds = %33
  %42 = load i64, i64* %10, align 8
  %43 = trunc i64 %42 to i32
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @LZ4F_decompress(i32, i8*, i64*, i8*, i64*, i32*) #1

declare dso_local i32 @DISPLAY(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
