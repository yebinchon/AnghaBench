; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeTimezone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeTimezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINS_PER_HOUR = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @DecodeTimezone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeTimezone(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = call i32 @strtoint(i8* %12, i8** %9, i32 10)
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 58
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = call i32 @strtoint(i8* %20, i8** %9, i32 10)
  store i32 %21, i32* %8, align 4
  br label %62

22:                                               ; preds = %2
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 -2
  %37 = call i32 @strtoint(i8* %36, i8** %9, i32 10)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 60
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %31
  store i32 -1, i32* %3, align 4
  br label %86

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = getelementptr inbounds i8, i8* %48, i64 -2
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = call i32 @strtoint(i8* %51, i8** %9, i32 10)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 13
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %44
  store i32 -1, i32* %3, align 4
  br label %86

59:                                               ; preds = %55
  br label %61

60:                                               ; preds = %27, %22
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %18
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MINS_PER_HOUR, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* @SECS_PER_MINUTE, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %6, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 45
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %62
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 0, %78
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %77, %58, %43
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @strtoint(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
