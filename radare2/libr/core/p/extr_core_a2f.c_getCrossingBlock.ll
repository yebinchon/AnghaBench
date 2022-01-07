; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_a2f.c_getCrossingBlock.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_a2f.c_getCrossingBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i64)* @getCrossingBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getCrossingBlock(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* @UT64_MAX, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @sdb_const_get(i32* %17, i8* %18, i32* null)
  store i8* %19, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* @UT64_MAX, align 8
  store i64 %23, i64* %5, align 8
  br label %76

24:                                               ; preds = %4
  %25 = load i8*, i8** %13, align 8
  store i8* %25, i8** %15, align 8
  br label %26

26:                                               ; preds = %71, %24
  %27 = load i8*, i8** %15, align 8
  %28 = call i8* @sdb_const_anext(i8* %27)
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call i64 @sdb_atoi(i8* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %5, align 8
  br label %76

36:                                               ; preds = %26
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @Fbb(i64 %38)
  %40 = call i64 @sdb_num_get(i32* %37, i32 %39, i32* null)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %36
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %5, align 8
  br label %76

53:                                               ; preds = %47, %43
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %57, %53
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i8*, i8** %14, align 8
  store i8* %70, i8** %15, align 8
  br label %71

71:                                               ; preds = %69
  %72 = load i8*, i8** %14, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %26, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %74, %51, %34, %22
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local i8* @sdb_const_get(i32*, i8*, i32*) #1

declare dso_local i8* @sdb_const_anext(i8*) #1

declare dso_local i64 @sdb_atoi(i8*) #1

declare dso_local i64 @sdb_num_get(i32*, i32, i32*) #1

declare dso_local i32 @Fbb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
