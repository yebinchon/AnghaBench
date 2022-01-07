; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_convert_oid.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_convert_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @convert_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_oid(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %74, %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 46
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strtoul(i8* %26, i8** %8, i32 0)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %75

33:                                               ; preds = %25
  %34 = load i8*, i8** %8, align 8
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @id_prefix_count(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %59, %35
  %40 = load i32, i32* %11, align 4
  %41 = icmp ugt i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul i32 7, %48
  %50 = lshr i32 %47, %49
  %51 = and i32 %50, 127
  %52 = or i32 %51, 128
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  %57 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 %53, i8* %57, align 1
  br label %58

58:                                               ; preds = %46, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %11, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 127
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  %73 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8 %69, i8* %73, align 1
  br label %74

74:                                               ; preds = %66, %62
  br label %12

75:                                               ; preds = %32, %12
  %76 = load i64, i64* %7, align 8
  %77 = trunc i64 %76 to i32
  ret i32 %77
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @id_prefix_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
