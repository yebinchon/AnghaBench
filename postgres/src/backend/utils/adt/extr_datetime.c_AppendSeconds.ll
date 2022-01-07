; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_AppendSeconds.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_AppendSeconds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32, i32, i32)* @AppendSeconds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @AppendSeconds(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @Abs(i32 %25)
  %27 = call i8* @pg_ltostr_zeropad(i8* %24, i32 %26, i32 2)
  store i8* %27, i8** %7, align 8
  br label %33

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @Abs(i32 %30)
  %32 = call i8* @pg_ltostr(i8* %29, i32 %31)
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @Abs(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8* %43, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  store i8 46, i8* %44, align 1
  br label %46

46:                                               ; preds = %77, %36
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %10, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sdiv i32 %52, 10
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %12, align 4
  %56 = mul nsw i32 %55, 10
  %57 = sub nsw i32 %54, %56
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 1, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 48, %65
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  br label %77

72:                                               ; preds = %61
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8* %76, i8** %13, align 8
  br label %77

77:                                               ; preds = %72, %64
  br label %46

78:                                               ; preds = %46
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @Abs(i32 %83)
  %85 = call i8* @pg_ltostr(i8* %82, i32 %84)
  store i8* %85, i8** %6, align 8
  br label %90

86:                                               ; preds = %78
  %87 = load i8*, i8** %13, align 8
  store i8* %87, i8** %6, align 8
  br label %90

88:                                               ; preds = %33
  %89 = load i8*, i8** %7, align 8
  store i8* %89, i8** %6, align 8
  br label %90

90:                                               ; preds = %88, %86, %81
  %91 = load i8*, i8** %6, align 8
  ret i8* %91
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @pg_ltostr_zeropad(i8*, i32, i32) #1

declare dso_local i32 @Abs(i32) #1

declare dso_local i8* @pg_ltostr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
