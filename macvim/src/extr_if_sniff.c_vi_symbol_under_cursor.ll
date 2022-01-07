; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_sniff.c_vi_symbol_under_cursor.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_sniff.c_vi_symbol_under_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vi_symbol_under_cursor.sniff_symbol = internal global [256 x i8] zeroinitializer, align 16
@FIND_IDENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @vi_symbol_under_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vi_symbol_under_cursor() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %3 to i32**
  %6 = load i32, i32* @FIND_IDENT, align 4
  %7 = call i32 @find_ident_under_cursor(i32** %5, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %26

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vi_symbol_under_cursor.sniff_symbol, i64 0, i64 0), i8** %4, align 8
  br label %12

12:                                               ; preds = %21, %11
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  %18 = load i8, i8* %16, align 1
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  store i8 %18, i8* %19, align 1
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %2, align 4
  br label %12

24:                                               ; preds = %12
  %25 = load i8*, i8** %4, align 8
  store i8 0, i8* %25, align 1
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vi_symbol_under_cursor.sniff_symbol, i64 0, i64 0), i8** %1, align 8
  br label %26

26:                                               ; preds = %24, %10
  %27 = load i8*, i8** %1, align 8
  ret i8* %27
}

declare dso_local i32 @find_ident_under_cursor(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
