; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_hexdumpf.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_hexdumpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_hexdumpf(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [80 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %19, %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 16, %18 ]
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mg_hexdump_n(i8* %24, i32 %25, i8* %26, i32 80, i32 %27)
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @fputs(i8* %29, i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %10

38:                                               ; preds = %10
  ret void
}

declare dso_local i32 @mg_hexdump_n(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
