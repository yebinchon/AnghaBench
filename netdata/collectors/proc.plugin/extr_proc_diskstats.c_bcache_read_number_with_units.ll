; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_diskstats.c_bcache_read_number_with_units.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_diskstats.c_bcache_read_number_with_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bcache_read_number_with_units.unknown_units_error = internal global i32 10, align 4
@.str = private unnamed_addr constant [61 x i8] c"bcache file '%s' provides value '%s' with unknown units '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @bcache_read_number_with_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bcache_read_number_with_units(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [51 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca x86_fp80, align 16
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds [51 x i8], [51 x i8]* %4, i64 0, i64 0
  %9 = call i64 @read_file(i8* %7, i8* %8, i32 50)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %81

11:                                               ; preds = %1
  store i8* null, i8** %5, align 8
  %12 = getelementptr inbounds [51 x i8], [51 x i8]* %4, i64 0, i64 0
  %13 = call x86_fp80 @str2ld(i8* %12, i8** %5)
  store x86_fp80 %13, x86_fp80* %6, align 16
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %78

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 107
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load x86_fp80, x86_fp80* %6, align 16
  %28 = fmul x86_fp80 %27, 0xK40098000000000000000
  %29 = fptoui x86_fp80 %28 to i64
  store i64 %29, i64* %2, align 8
  br label %82

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 77
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load x86_fp80, x86_fp80* %6, align 16
  %37 = fmul x86_fp80 %36, 0xK40098000000000000000
  %38 = fmul x86_fp80 %37, 0xK40098000000000000000
  %39 = fptoui x86_fp80 %38 to i64
  store i64 %39, i64* %2, align 8
  br label %82

40:                                               ; preds = %30
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 71
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load x86_fp80, x86_fp80* %6, align 16
  %47 = fmul x86_fp80 %46, 0xK40098000000000000000
  %48 = fmul x86_fp80 %47, 0xK40098000000000000000
  %49 = fmul x86_fp80 %48, 0xK40098000000000000000
  %50 = fptoui x86_fp80 %49 to i64
  store i64 %50, i64* %2, align 8
  br label %82

51:                                               ; preds = %40
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 84
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load x86_fp80, x86_fp80* %6, align 16
  %58 = fmul x86_fp80 %57, 0xK40098000000000000000
  %59 = fmul x86_fp80 %58, 0xK40098000000000000000
  %60 = fmul x86_fp80 %59, 0xK40098000000000000000
  %61 = fmul x86_fp80 %60, 0xK40098000000000000000
  %62 = fptoui x86_fp80 %61 to i64
  store i64 %62, i64* %2, align 8
  br label %82

63:                                               ; preds = %51
  %64 = load i32, i32* @bcache_read_number_with_units.unknown_units_error, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds [51 x i8], [51 x i8]* %4, i64 0, i64 0
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %68, i8* %69)
  %71 = load i32, i32* @bcache_read_number_with_units.unknown_units_error, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* @bcache_read_number_with_units.unknown_units_error, align 4
  br label %73

73:                                               ; preds = %66, %63
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %16, %11
  %79 = load x86_fp80, x86_fp80* %6, align 16
  %80 = fptoui x86_fp80 %79 to i64
  store i64 %80, i64* %2, align 8
  br label %82

81:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %82

82:                                               ; preds = %81, %78, %56, %45, %35, %26
  %83 = load i64, i64* %2, align 8
  ret i64 %83
}

declare dso_local i64 @read_file(i8*, i8*, i32) #1

declare dso_local x86_fp80 @str2ld(i8*, i8**) #1

declare dso_local i32 @error(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
