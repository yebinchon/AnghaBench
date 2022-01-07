; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_message.c_get_emsg_lnum.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_message.c_get_emsg_lnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sourcing_name = common dso_local global i32* null, align 8
@sourcing_lnum = common dso_local global i64 0, align 8
@last_sourcing_lnum = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"line %4ld:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_emsg_lnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_emsg_lnum() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32*, i32** @sourcing_name, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %35

6:                                                ; preds = %0
  %7 = call i64 (...) @other_sourcing_name()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* @sourcing_lnum, align 8
  %11 = load i64, i64* @last_sourcing_lnum, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9, %6
  %14 = load i64, i64* @sourcing_lnum, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = call i64 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @STRLEN(i32* %19)
  %21 = add nsw i64 %20, 20
  %22 = trunc i64 %21 to i32
  %23 = call i32* @alloc(i32 %22)
  store i32* %23, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load i32*, i32** %2, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i32*, i32** %3, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i64, i64* @sourcing_lnum, align 8
  %32 = call i32 @sprintf(i8* %28, i8* %30, i64 %31)
  br label %33

33:                                               ; preds = %26, %16
  %34 = load i32*, i32** %2, align 8
  store i32* %34, i32** %1, align 8
  br label %36

35:                                               ; preds = %13, %9, %0
  store i32* null, i32** %1, align 8
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i32*, i32** %1, align 8
  ret i32* %37
}

declare dso_local i64 @other_sourcing_name(...) #1

declare dso_local i64 @_(i8*) #1

declare dso_local i32* @alloc(i32) #1

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
