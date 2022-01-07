; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_msdos.c_mch_getenv.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_msdos.c_mch_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i64 0, align 8
@MAXENVLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @mch_getenv(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [51 x i64], align 16
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %7 = load i64*, i64** %2, align 8
  %8 = call i32 @STRLEN(i64* %7)
  store i32 %8, i32* %3, align 4
  %9 = icmp sgt i32 %8, 50
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i64* @alloc(i32 %12)
  store i64* %13, i64** %5, align 8
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds [51 x i64], [51 x i64]* %4, i64 0, i64 0
  store i64* %15, i64** %5, align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i64*, i64** %5, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64*, i64** %2, align 8
  store i64* %20, i64** %5, align 8
  br label %50

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i64*, i64** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NUL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = load i64*, i64** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @toupper(i64 %35)
  %37 = load i64*, i64** %5, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 %36, i64* %40, align 8
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %22

44:                                               ; preds = %22
  %45 = load i64, i64* @NUL, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %45, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %19
  %51 = load i64*, i64** %5, align 8
  %52 = bitcast i64* %51 to i8*
  %53 = call i64 @getenv(i8* %52)
  %54 = inttoptr i64 %53 to i64*
  store i64* %54, i64** %6, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds [51 x i64], [51 x i64]* %4, i64 0, i64 0
  %57 = icmp ne i64* %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i64*, i64** %5, align 8
  %60 = load i64*, i64** %2, align 8
  %61 = icmp ne i64* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64*, i64** %5, align 8
  %64 = call i32 @vim_free(i64* %63)
  br label %65

65:                                               ; preds = %62, %58, %50
  %66 = load i64*, i64** %6, align 8
  ret i64* %66
}

declare dso_local i32 @STRLEN(i64*) #1

declare dso_local i64* @alloc(i32) #1

declare dso_local i64 @toupper(i64) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @vim_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
