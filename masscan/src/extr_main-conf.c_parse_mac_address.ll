; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_parse_mac_address.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_parse_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @parse_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mac_address(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %83, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %10, 6
  br i1 %11, label %12, label %86

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  %19 = call i64 @isspace(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = call i64 @ispunct(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %21, %13
  %30 = phi i1 [ false, %13 ], [ %28, %21 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  br label %13

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %8, align 1
  %37 = load i8, i8* %8, align 1
  %38 = sext i8 %37 to i32
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = call i32 @isxdigit(i8 signext %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %87

44:                                               ; preds = %34
  %45 = load i8, i8* %8, align 1
  %46 = call i32 @hexval(i8 signext %45)
  %47 = shl i32 %46, 4
  store i32 %47, i32* %7, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %8, align 1
  %52 = load i8, i8* %8, align 1
  %53 = sext i8 %52 to i32
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  %56 = call i32 @isxdigit(i8 signext %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %87

59:                                               ; preds = %44
  %60 = load i8, i8* %8, align 1
  %61 = call i32 @hexval(i8 signext %60)
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = and i32 %74, 255
  %76 = trunc i32 %75 to i8
  %77 = call i64 @ispunct(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %59
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %4, align 8
  br label %82

82:                                               ; preds = %79, %59
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %9

86:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %58, %43
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @ispunct(i8 signext) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @hexval(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
