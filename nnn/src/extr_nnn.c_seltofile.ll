; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_seltofile.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_seltofile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pselbuf = common dso_local global i8* null, align 8
@selbufpos = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64*)* @seltofile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @seltofile(i32 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %12 = load i8*, i8** @pselbuf, align 8
  store i8* %12, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64*, i64** %5, align 8
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i64, i64* @selbufpos, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %73

21:                                               ; preds = %17
  %22 = load i64, i64* @selbufpos, align 8
  %23 = sub i64 %22, 1
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %60, %21
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %9, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @write(i32 %34, i8* %35, i32 %37)
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %3, align 8
  br label %73

45:                                               ; preds = %28
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ule i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @write(i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %3, align 8
  br label %73

55:                                               ; preds = %49
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %55, %45
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %24

65:                                               ; preds = %24
  %66 = load i64*, i64** %5, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8
  %70 = load i64*, i64** %5, align 8
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %71, %53, %43, %20
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
