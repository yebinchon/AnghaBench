; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_fullbench.c_local_LZ4F_decompress_followHint.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_fullbench.c_local_LZ4F_decompress_followHint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_dCtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Error decompressing frame : must read (%u) full frame (%u) \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @local_LZ4F_decompress_followHint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_LZ4F_decompress_followHint(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %13, align 8
  %22 = sub i64 %20, %21
  store i64 %22, i64* %14, align 8
  br label %23

23:                                               ; preds = %51, %4
  %24 = load i32, i32* @g_dCtx, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = call i64 @LZ4F_decompress(i32 %24, i8* %27, i64* %14, i8* %30, i64* %12, i32* null)
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @LZ4F_isError(i64 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %15, align 8
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %13, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %23
  br label %52

51:                                               ; preds = %23
  br label %23

52:                                               ; preds = %50
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i64, i64* %11, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @DISPLAY(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60)
  %62 = call i32 @exit(i32 10) #3
  unreachable

63:                                               ; preds = %52
  %64 = load i64, i64* %13, align 8
  %65 = trunc i64 %64 to i32
  ret i32 %65
}

declare dso_local i64 @LZ4F_decompress(i32, i8*, i64*, i8*, i64*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LZ4F_isError(i64) #1

declare dso_local i32 @DISPLAY(i8*, i32, i32) #1

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
