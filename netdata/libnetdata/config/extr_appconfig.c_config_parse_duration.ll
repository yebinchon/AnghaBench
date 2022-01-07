; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_config_parse_duration.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_config_parse_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"never\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_duration(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isspace(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  br label %8

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %106

32:                                               ; preds = %23
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 110
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  store i32 0, i32* %42, align 4
  store i32 1, i32* %3, align 4
  br label %108

43:                                               ; preds = %37, %32
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isdigit(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 45
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %106

59:                                               ; preds = %53, %48, %43
  store i8* null, i8** %6, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @str2ld(i8* %60, i8** %6)
  store i32 %61, i32* %7, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %102

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  switch i32 %72, label %98 [
    i32 89, label %73
    i32 77, label %77
    i32 119, label %81
    i32 100, label %85
    i32 104, label %89
    i32 109, label %93
    i32 115, label %97
  ]

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %74, 31536000
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  br label %101

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 2592000
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  br label %101

81:                                               ; preds = %69
  %82 = load i32, i32* %7, align 4
  %83 = mul nsw i32 %82, 604800
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  br label %101

85:                                               ; preds = %69
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %86, 86400
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  br label %101

89:                                               ; preds = %69
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %90, 3600
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  br label %101

93:                                               ; preds = %69
  %94 = load i32, i32* %7, align 4
  %95 = mul nsw i32 %94, 60
  %96 = load i32*, i32** %5, align 8
  store i32 %95, i32* %96, align 4
  br label %101

97:                                               ; preds = %69
  br label %98

98:                                               ; preds = %69, %97
  %99 = load i32, i32* %7, align 4
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %93, %89, %85, %81, %77, %73
  br label %105

102:                                              ; preds = %64, %59
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %5, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %101
  store i32 1, i32* %3, align 4
  br label %108

106:                                              ; preds = %58, %31
  %107 = load i32*, i32** %5, align 8
  store i32 0, i32* %107, align 4
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %105, %41
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @str2ld(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
