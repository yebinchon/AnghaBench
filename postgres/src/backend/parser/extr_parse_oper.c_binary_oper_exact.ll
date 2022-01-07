; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_binary_oper_exact.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_binary_oper_exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNKNOWNOID = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @binary_oper_exact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @binary_oper_exact(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @UNKNOWNOID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @InvalidOid, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %6, align 8
  store i32 1, i32* %9, align 4
  br label %31

20:                                               ; preds = %14, %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @UNKNOWNOID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @InvalidOid, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %7, align 8
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %24, %20
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @OpernameGetOprid(i32* %32, i64 %33, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @OidIsValid(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %4, align 8
  br label %64

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @getBaseType(i64 %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @OpernameGetOprid(i32* %51, i64 %52, i64 %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @OidIsValid(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %4, align 8
  br label %64

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i64, i64* @InvalidOid, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %58, %39
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local i64 @OpernameGetOprid(i32*, i64, i64) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @getBaseType(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
