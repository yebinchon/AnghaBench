; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_utf8_write_char.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_utf8_write_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @utf8_write_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_write_char(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 1114111
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 55296
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 57343
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i1 [ false, %2 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %23, 127
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  store i8 %27, i8* %28, align 1
  store i32 1, i32* %3, align 4
  br label %96

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 2047
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 6
  %36 = or i32 192, %35
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  store i8 %37, i8* %38, align 1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 63
  %42 = or i32 128, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  store i8 %43, i8* %44, align 1
  store i32 2, i32* %3, align 4
  br label %96

46:                                               ; preds = %30
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %47, 65535
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 12
  %52 = or i32 224, %51
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  store i8 %53, i8* %54, align 1
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 6
  %58 = and i32 %57, 63
  %59 = or i32 128, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, 63
  %65 = or i32 128, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  store i8 %66, i8* %67, align 1
  store i32 3, i32* %3, align 4
  br label %96

69:                                               ; preds = %46
  %70 = load i32, i32* %4, align 4
  %71 = ashr i32 %70, 18
  %72 = or i32 240, %71
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i32, i32* %4, align 4
  %77 = ashr i32 %76, 12
  %78 = and i32 %77, 63
  %79 = or i32 128, %78
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  store i8 %80, i8* %81, align 1
  %83 = load i32, i32* %4, align 4
  %84 = ashr i32 %83, 6
  %85 = and i32 %84, 63
  %86 = or i32 128, %85
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  store i8 %87, i8* %88, align 1
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 63
  %92 = or i32 128, %91
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  store i8 %93, i8* %94, align 1
  store i32 4, i32* %3, align 4
  br label %96

96:                                               ; preds = %69, %49, %33, %25
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
