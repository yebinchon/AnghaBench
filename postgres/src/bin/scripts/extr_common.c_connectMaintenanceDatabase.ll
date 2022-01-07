; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_connectMaintenanceDatabase.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_connectMaintenanceDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"template1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @connectMaintenanceDatabase(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %7
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i8*, i8** %14, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call i32* @connectDatabase(i8* %20, i8* %21, i8* %22, i8* %23, i32 %24, i8* %25, i32 %26, i32 0, i32 0)
  store i32* %27, i32** %8, align 8
  br label %48

28:                                               ; preds = %7
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = load i32, i32* %15, align 4
  %35 = call i32* @connectDatabase(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30, i8* %31, i32 %32, i8* %33, i32 %34, i32 1, i32 0)
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %28
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i8*, i8** %14, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i32* @connectDatabase(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40, i8* %41, i32 %42, i8* %43, i32 %44, i32 0, i32 0)
  store i32* %45, i32** %16, align 8
  br label %46

46:                                               ; preds = %38, %28
  %47 = load i32*, i32** %16, align 8
  store i32* %47, i32** %8, align 8
  br label %48

48:                                               ; preds = %46, %19
  %49 = load i32*, i32** %8, align 8
  ret i32* %49
}

declare dso_local i32* @connectDatabase(i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
