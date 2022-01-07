; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-netbios.c_append_name.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-netbios.c_append_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32*, i8*)* @append_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_name(i8* %0, i64 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %77, %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ult i32 %12, 15
  br i1 %13, label %14, label %80

14:                                               ; preds = %11
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %10, align 1
  %20 = load i8, i8* %10, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23, %14
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @append_char(i8* %28, i64 %29, i32* %30, i8 signext 32)
  br label %76

32:                                               ; preds = %23
  %33 = load i8, i8* %10, align 1
  %34 = call i64 @isalnum(i8 zeroext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8, i8* %10, align 1
  %38 = call i64 @ispunct(i8 zeroext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %32
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i8, i8* %10, align 1
  %45 = call i32 @append_char(i8* %41, i64 %42, i32* %43, i8 signext %44)
  br label %75

46:                                               ; preds = %36
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @append_char(i8* %47, i64 %48, i32* %49, i8 signext 60)
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = ashr i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @append_char(i8* %51, i64 %52, i32* %53, i8 signext %59)
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i8, i8* %10, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 15
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @append_char(i8* %61, i64 %62, i32* %63, i8 signext %69)
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @append_char(i8* %71, i64 %72, i32* %73, i8 signext 62)
  br label %75

75:                                               ; preds = %46, %40
  br label %76

76:                                               ; preds = %75, %27
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %11

80:                                               ; preds = %11
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %10, align 1
  %86 = load i8*, i8** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @append_char(i8* %86, i64 %87, i32* %88, i8 signext 60)
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i8, i8* %10, align 1
  %94 = zext i8 %93 to i32
  %95 = ashr i32 %94, 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @append_char(i8* %90, i64 %91, i32* %92, i8 signext %98)
  %100 = load i8*, i8** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i8, i8* %10, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 15
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = call i32 @append_char(i8* %100, i64 %101, i32* %102, i8 signext %108)
  %110 = load i8*, i8** %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @append_char(i8* %110, i64 %111, i32* %112, i8 signext 62)
  %114 = load i8*, i8** %5, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @append_char(i8* %114, i64 %115, i32* %116, i8 signext 10)
  ret void
}

declare dso_local i32 @append_char(i8*, i64, i32*, i8 signext) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i64 @ispunct(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
