; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_smbios.c_wcsistr_plus.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_smbios.c_wcsistr_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @wcsistr_plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wcsistr_plus(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @wcsistr(i32* %7, i32* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @wcslen(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %51

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = call i32* @wcschr(i32* %23, i32 44)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 44, i32* %31, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @wcsistr(i32* %32, i32* %33)
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 32, i32* %39, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %26
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 44, i32* %44, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @wcsistr(i32* %45, i32* %46)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 32, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %26
  br label %51

51:                                               ; preds = %50, %22, %14, %2
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %80, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %62, label %80

62:                                               ; preds = %54
  %63 = load i32*, i32** %3, align 8
  %64 = call i32* @wcschr(i32* %63, i32 40)
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 40, i32* %71, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32* @wcsistr(i32* %72, i32* %73)
  store i32* %74, i32** %5, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 32, i32* %79, align 4
  br label %80

80:                                               ; preds = %66, %62, %54, %51
  %81 = load i32*, i32** %5, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %103, label %83

83:                                               ; preds = %80
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %103

91:                                               ; preds = %83
  %92 = load i32*, i32** %3, align 8
  %93 = call i32* @wcschr(i32* %92, i32 95)
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 95, i32* %97, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call i32* @wcsistr(i32* %98, i32* %99)
  store i32* %100, i32** %5, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 32, i32* %102, align 4
  br label %103

103:                                              ; preds = %95, %91, %83, %80
  %104 = load i32*, i32** %5, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %152, label %106

106:                                              ; preds = %103
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 32
  br i1 %110, label %111, label %152

111:                                              ; preds = %106
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 32
  br i1 %118, label %119, label %152

119:                                              ; preds = %111
  %120 = load i32*, i32** %3, align 8
  %121 = call i32* @wcschr(i32* %120, i32 41)
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %152

123:                                              ; preds = %119
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 41, i32* %125, align 4
  %126 = load i32*, i32** %3, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = call i32* @wcsistr(i32* %126, i32* %127)
  store i32* %128, i32** %5, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %149, label %131

131:                                              ; preds = %123
  %132 = load i32*, i32** %3, align 8
  %133 = call i32* @wcschr(i32* %132, i32 46)
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 46, i32* %140, align 4
  %141 = load i32*, i32** %3, align 8
  %142 = load i32*, i32** %4, align 8
  %143 = call i32* @wcsistr(i32* %141, i32* %142)
  store i32* %143, i32** %5, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 32, i32* %148, align 4
  br label %149

149:                                              ; preds = %135, %131, %123
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 32, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %119, %111, %106, %103
  %153 = load i32*, i32** %5, align 8
  ret i32* %153
}

declare dso_local i32* @wcsistr(i32*, i32*) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32* @wcschr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
