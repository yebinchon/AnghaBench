; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_xstrverscasecmp.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_xstrverscasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xstrverscasecmp.next_state = internal constant [12 x i32] [i32 131, i32 132, i32 130, i32 131, i32 132, i32 132, i32 131, i32 133, i32 133, i32 131, i32 133, i32 130], align 16
@xstrverscasecmp.result_type = internal constant [36 x i32] [i32 129, i32 129, i32 129, i32 129, i32 128, i32 129, i32 129, i32 129, i32 129, i32 129, i32 -1, i32 -1, i32 1, i32 128, i32 128, i32 1, i32 128, i32 128, i32 129, i32 129, i32 129, i32 129, i32 129, i32 129, i32 129, i32 129, i32 129, i32 129, i32 1, i32 1, i32 -1, i32 129, i32 129, i32 -1, i32 129, i32 129], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @xstrverscasecmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xstrverscasecmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %124

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call signext i8 @TOUPPER(i8 signext %20)
  store i8 %21, i8* %10, align 1
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call signext i8 @TOUPPER(i8 signext %25)
  store i8 %26, i8* %11, align 1
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  %29 = load i8, i8* %10, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 48
  %32 = zext i1 %31 to i32
  %33 = load i8, i8* %10, align 1
  %34 = call i64 @xisdigit(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = add nsw i32 %32, %36
  %38 = add nsw i32 131, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %52, %18
  %40 = load i8, i8* %10, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* %11, align 1
  %43 = sext i8 %42 to i32
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %39
  %47 = load i8, i8* %10, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %124

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [12 x i32], [12 x i32]* @xstrverscasecmp.next_state, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call signext i8 @TOUPPER(i8 signext %58)
  store i8 %59, i8* %10, align 1
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call signext i8 @TOUPPER(i8 signext %63)
  store i8 %64, i8* %11, align 1
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  %67 = load i8, i8* %10, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 48
  %70 = zext i1 %69 to i32
  %71 = load i8, i8* %10, align 1
  %72 = call i64 @xisdigit(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = add nsw i32 %70, %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %39

78:                                               ; preds = %39
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 3
  %81 = load i8, i8* %11, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 48
  %84 = zext i1 %83 to i32
  %85 = load i8, i8* %11, align 1
  %86 = call i64 @xisdigit(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = add nsw i32 %84, %88
  %90 = add nsw i32 %80, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [36 x i32], [36 x i32]* @xstrverscasecmp.result_type, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  switch i32 %94, label %122 [
    i32 129, label %95
    i32 128, label %97
  ]

95:                                               ; preds = %78
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %124

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %111, %97
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  %101 = load i8, i8* %99, align 1
  %102 = call i64 @xisdigit(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  %107 = load i8, i8* %105, align 1
  %108 = call i64 @xisdigit(i8 signext %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  store i32 1, i32* %3, align 4
  br label %124

111:                                              ; preds = %104
  br label %98

112:                                              ; preds = %98
  %113 = load i8*, i8** %7, align 8
  %114 = load i8, i8* %113, align 1
  %115 = call i64 @xisdigit(i8 signext %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %9, align 4
  br label %120

120:                                              ; preds = %118, %117
  %121 = phi i32 [ -1, %117 ], [ %119, %118 ]
  store i32 %121, i32* %3, align 4
  br label %124

122:                                              ; preds = %78
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %120, %110, %95, %50, %17
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local signext i8 @TOUPPER(i8 signext) #1

declare dso_local i64 @xisdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
