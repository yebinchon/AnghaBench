; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/dex/extr_.dex_uleb128.inc_dex_read_sleb128.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/dex/extr_.dex_uleb128.inc_dex_read_sleb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dex_read_sleb128(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dex_uleb128_len(i32* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i8*, i8** %4, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %24, i8** %4, align 8
  %25 = load i8, i8* %23, align 1
  %26 = sext i8 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 127
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @SIG_EXTEND(i32 %30, i32 25)
  br label %90

32:                                               ; preds = %17
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** %4, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 127
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 127
  %41 = shl i32 %40, 7
  %42 = or i32 %38, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sle i32 %43, 127
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @SIG_EXTEND(i32 %46, i32 18)
  br label %89

48:                                               ; preds = %32
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %4, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 127
  %55 = shl i32 %54, 14
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sle i32 %58, 127
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @SIG_EXTEND(i32 %61, i32 11)
  br label %88

63:                                               ; preds = %48
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %4, align 8
  %66 = load i8, i8* %64, align 1
  %67 = sext i8 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 127
  %70 = shl i32 %69, 21
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp sle i32 %73, 127
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @SIG_EXTEND(i32 %76, i32 4)
  br label %87

78:                                               ; preds = %63
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %80, i8** %4, align 8
  %81 = load i8, i8* %79, align 1
  %82 = sext i8 %81 to i32
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = shl i32 %83, 28
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %78, %75
  br label %88

88:                                               ; preds = %87, %60
  br label %89

89:                                               ; preds = %88, %45
  br label %90

90:                                               ; preds = %89, %29
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %16
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @dex_uleb128_len(i32*, i32) #1

declare dso_local i32 @SIG_EXTEND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
