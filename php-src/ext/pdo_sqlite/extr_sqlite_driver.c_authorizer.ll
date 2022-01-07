; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c_authorizer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c_authorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_DENY = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8*, i8*)* @authorizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authorizer(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %38 [
    i32 128, label %16
    i32 129, label %27
  ]

16:                                               ; preds = %6
  %17 = load i8*, i8** %11, align 8
  %18 = call i8* @make_filename_safe(i8* %17)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @SQLITE_DENY, align 4
  store i32 %22, i32* %7, align 4
  br label %40

23:                                               ; preds = %16
  %24 = load i8*, i8** %14, align 8
  %25 = call i32 @efree(i8* %24)
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %7, align 4
  br label %40

27:                                               ; preds = %6
  %28 = load i8*, i8** %10, align 8
  %29 = call i8* @make_filename_safe(i8* %28)
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @SQLITE_DENY, align 4
  store i32 %33, i32* %7, align 4
  br label %40

34:                                               ; preds = %27
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @efree(i8* %35)
  %37 = load i32, i32* @SQLITE_OK, align 4
  store i32 %37, i32* %7, align 4
  br label %40

38:                                               ; preds = %6
  %39 = load i32, i32* @SQLITE_OK, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %34, %32, %23, %21
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i8* @make_filename_safe(i8*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
