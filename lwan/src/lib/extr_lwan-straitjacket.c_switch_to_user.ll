; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-straitjacket.c_switch_to_user.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-straitjacket.c_switch_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"Dropping privileges to UID %d, GID %d (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*)* @switch_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_to_user(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @lwan_status_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %15, i8* %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @setresgid(i64 %18, i64 %19, i64 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @initgroups(i8* %25, i64 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %72

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @setresuid(i64 %31, i64 %32, i64 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %72

37:                                               ; preds = %30
  %38 = call i64 @getresuid(i64* %8, i64* %9, i64* %10)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %72

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45, %41
  store i32 0, i32* %4, align 4
  br label %72

54:                                               ; preds = %49
  %55 = call i64 @getresgid(i64* %11, i64* %12, i64* %13)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %72

58:                                               ; preds = %54
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62, %58
  store i32 0, i32* %4, align 4
  br label %72

71:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %70, %57, %53, %40, %36, %29, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @lwan_status_info(i8*, i64, i64, i8*) #1

declare dso_local i64 @setresgid(i64, i64, i64) #1

declare dso_local i64 @initgroups(i8*, i64) #1

declare dso_local i64 @setresuid(i64, i64, i64) #1

declare dso_local i64 @getresuid(i64*, i64*, i64*) #1

declare dso_local i64 @getresgid(i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
