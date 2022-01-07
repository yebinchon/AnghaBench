; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dns/extr_dns.c_dns_answer.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dns/extr_dns.c_dns_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXCNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dns_answer(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @MAXCNAME, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @MAXCNAME, align 4
  %20 = call i32 @parse_name(i32* %17, i32* %18, i8* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %12, align 4
  br label %143

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @get16(i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32* %38, i32** %6, align 8
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %140 [
    i32 138, label %40
    i32 137, label %61
    i32 135, label %61
    i32 134, label %61
    i32 133, label %61
    i32 131, label %61
    i32 130, label %61
    i32 136, label %74
    i32 132, label %89
    i32 129, label %104
    i32 128, label %139
  ]

40:                                               ; preds = %24
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %41, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %6, align 8
  %48 = load i32, i32* %46, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %6, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %6, align 8
  %58 = load i32, i32* %56, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %58, i32* %60, align 4
  br label %141

61:                                               ; preds = %24, %24, %24, %24, %24, %24
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @MAXCNAME, align 4
  %65 = call i32 @parse_name(i32* %62, i32* %63, i8* %16, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32* null, i32** %4, align 8
  store i32 1, i32* %12, align 4
  br label %143

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %6, align 8
  br label %141

74:                                               ; preds = %24
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %6, align 8
  %77 = load i32, i32* %75, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %6, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %6, align 8
  %84 = load i32, i32* %82, align 4
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %6, align 8
  br label %141

89:                                               ; preds = %24
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32* %91, i32** %6, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @MAXCNAME, align 4
  %95 = call i32 @parse_name(i32* %92, i32* %93, i8* %16, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32* null, i32** %4, align 8
  store i32 1, i32* %12, align 4
  br label %143

99:                                               ; preds = %89
  %100 = load i32, i32* %8, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %6, align 8
  br label %141

104:                                              ; preds = %24
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @MAXCNAME, align 4
  %108 = call i32 @parse_name(i32* %105, i32* %106, i8* %16, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32* null, i32** %4, align 8
  store i32 1, i32* %12, align 4
  br label %143

112:                                              ; preds = %104
  %113 = load i32, i32* %8, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %6, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* @MAXCNAME, align 4
  %120 = call i32 @parse_name(i32* %117, i32* %118, i8* %16, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  store i32* null, i32** %4, align 8
  store i32 1, i32* %12, align 4
  br label %143

124:                                              ; preds = %112
  %125 = load i32, i32* %8, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %6, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  store i32* %130, i32** %6, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  store i32* %132, i32** %6, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  store i32* %134, i32** %6, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  store i32* %136, i32** %6, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  store i32* %138, i32** %6, align 8
  br label %141

139:                                              ; preds = %24
  br label %141

140:                                              ; preds = %24
  br label %141

141:                                              ; preds = %140, %139, %124, %99, %74, %69, %40
  %142 = load i32*, i32** %6, align 8
  store i32* %142, i32** %4, align 8
  store i32 1, i32* %12, align 4
  br label %143

143:                                              ; preds = %141, %123, %111, %98, %68, %23
  %144 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32*, i32** %4, align 8
  ret i32* %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @parse_name(i32*, i32*, i8*, i32) #2

declare dso_local i32 @get16(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
