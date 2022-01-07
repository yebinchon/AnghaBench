; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_log.c_getIndexFromLogString.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_log.c_getIndexFromLogString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getIndexFromLogString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getIndexFromLogString(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8* %13, i8** %5, align 8
  store i32 2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  br label %14

14:                                               ; preds = %33, %1
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* %2, align 4
  br label %47

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %5, align 8
  br label %14

36:                                               ; preds = %14
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  br label %44

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi i8* [ %41, %39 ], [ %43, %42 ]
  %46 = call i32 @atoi(i8* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %28
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
