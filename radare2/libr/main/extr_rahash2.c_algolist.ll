; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_algolist.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_algolist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_HASH_NBITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"h  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"e  base64\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"e  base91\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"e  punycode\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"c  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @algolist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @algolist() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i64 0, i64* %2, align 8
  br label %5

5:                                                ; preds = %25, %0
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @R_HASH_NBITS, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i64, i64* %2, align 8
  %11 = shl i64 1, %10
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = call i8* @r_hash_name(i64 %12)
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %16, %9
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %2, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %2, align 8
  br label %5

28:                                               ; preds = %5
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %32

32:                                               ; preds = %47, %28
  %33 = load i64, i64* %2, align 8
  %34 = shl i64 1, %33
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = call i8* @r_crypto_name(i64 %35)
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %32
  br label %50

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %2, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %2, align 8
  br label %32

50:                                               ; preds = %43
  ret void
}

declare dso_local i8* @r_hash_name(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @r_crypto_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
