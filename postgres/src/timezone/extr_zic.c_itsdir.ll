; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_itsdir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_itsdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @itsdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itsdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %4)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @EOVERFLOW, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14, %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 3
  %23 = call i8* @emalloc(i64 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @memcpy(i8* %24, i8* %25, i64 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 47
  br label %41

41:                                               ; preds = %33, %18
  %42 = phi i1 [ false, %18 ], [ %40, %33 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* @.str, i64 0, i64 %45
  %47 = call i32 @strcpy(i8* %30, i8* %46)
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @stat(i8* %48, %struct.stat* %4)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EOVERFLOW, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %51, %41
  %56 = phi i1 [ true, %41 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
