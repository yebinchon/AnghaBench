; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_file.c_php_fgetcsv_lookup_trailing_spaces.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_file.c_php_fgetcsv_lookup_trailing_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8)* @php_fgetcsv_lookup_trailing_spaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @php_fgetcsv_lookup_trailing_spaces(i8* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %10 = bitcast [2 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 2, i1 false)
  br label %11

11:                                               ; preds = %38, %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %24

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @php_mblen(i8* %21, i64 %22)
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i32 [ 1, %19 ], [ %23, %20 ]
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %31 [
    i32 -2, label %27
    i32 -1, label %27
    i32 0, label %29
    i32 1, label %30
  ]

27:                                               ; preds = %24, %24
  store i32 1, i32* %8, align 4
  %28 = call i32 (...) @php_mb_reset()
  br label %38

29:                                               ; preds = %24
  br label %48

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %24, %30
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 %36, i8* %37, align 1
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %6, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %6, align 8
  br label %11

47:                                               ; preds = %11
  br label %48

48:                                               ; preds = %47, %29
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  switch i32 %51, label %64 [
    i32 10, label %52
    i32 13, label %61
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 13
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -2
  store i8* %59, i8** %4, align 8
  br label %66

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %48, %60
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 -1
  store i8* %63, i8** %4, align 8
  br label %66

64:                                               ; preds = %48
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %64, %61, %57
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @php_mblen(i8*, i64) #2

declare dso_local i32 @php_mb_reset(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
