; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numutils.c_pg_ltostr_zeropad.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numutils.c_pg_ltostr_zeropad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_ltostr_zeropad(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %9, align 8
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ugt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %3
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  store i8 45, i8* %27, align 1
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %35, %26
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %7, align 8
  %34 = icmp ne i64 %32, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = udiv i64 %37, 10
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = mul i64 %40, 10
  %42 = sub i64 %39, %41
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub i64 48, %43
  %45 = trunc i64 %44 to i8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 %45, i8* %48, align 1
  br label %31

49:                                               ; preds = %31
  br label %70

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %55, %50
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %7, align 8
  %54 = icmp ne i64 %52, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %10, align 8
  %58 = udiv i64 %57, 10
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %10, align 8
  %61 = mul i64 %60, 10
  %62 = sub i64 %59, %61
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = add i64 48, %63
  %65 = trunc i64 %64 to i8
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 %65, i8* %68, align 1
  br label %51

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %49
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i8* @pg_ltostr(i8* %74, i64 %75)
  store i8* %76, i8** %4, align 8
  br label %79

77:                                               ; preds = %70
  %78 = load i8*, i8** %9, align 8
  store i8* %78, i8** %4, align 8
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i8*, i8** %4, align 8
  ret i8* %80
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @pg_ltostr(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
