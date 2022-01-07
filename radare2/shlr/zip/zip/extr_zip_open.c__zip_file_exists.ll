; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_file_exists.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_file_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@ZIP_CREATE = common dso_local global i32 0, align 4
@ZIP_ER_OPEN = common dso_local global i32 0, align 4
@ZIP_EXCL = common dso_local global i32 0, align 4
@ZIP_ER_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @_zip_file_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zip_file_exists(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stat, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* @ZIP_ER_INVAL, align 4
  %14 = call i32 @set_error(i32* %12, i32* null, i32 %13)
  store i32 -1, i32* %4, align 4
  br label %40

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @stat(i8* %16, %struct.stat* %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ZIP_CREATE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %40

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @ZIP_ER_OPEN, align 4
  %28 = call i32 @set_error(i32* %26, i32* null, i32 %27)
  store i32 -1, i32* %4, align 4
  br label %40

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ZIP_EXCL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @ZIP_ER_EXISTS, align 4
  %37 = call i32 @set_error(i32* %35, i32* null, i32 %36)
  store i32 -1, i32* %4, align 4
  br label %40

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %34, %25, %24, %11
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @set_error(i32*, i32*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
