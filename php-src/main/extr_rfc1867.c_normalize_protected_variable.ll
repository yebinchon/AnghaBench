; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_rfc1867.c_normalize_protected_variable.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_rfc1867.c_normalize_protected_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @normalize_protected_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normalize_protected_variable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  br label %8

16:                                               ; preds = %8
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = icmp ne i8* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  %26 = call i32 @memmove(i8* %21, i8* %22, i32 %25)
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i8*, i8** %2, align 8
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %48, %27
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 91
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %51

41:                                               ; preds = %39
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %47 [
    i32 32, label %45
    i32 46, label %45
  ]

45:                                               ; preds = %41, %41
  %46 = load i8*, i8** %6, align 8
  store i8 95, i8* %46, align 1
  br label %47

47:                                               ; preds = %41, %45
  br label %48

48:                                               ; preds = %47
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  br label %29

51:                                               ; preds = %39
  %52 = load i8*, i8** %2, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 91)
  store i8* %53, i8** %4, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  store i8* %59, i8** %3, align 8
  br label %61

60:                                               ; preds = %51
  br label %139

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %136, %61
  %63 = load i8*, i8** %4, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %137

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %88, %65
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %86, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 13
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 10
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 9
  br label %86

86:                                               ; preds = %81, %76, %71, %66
  %87 = phi i1 [ true, %76 ], [ true, %71 ], [ true, %66 ], [ %85, %81 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  br label %66

91:                                               ; preds = %86
  %92 = load i8*, i8** %4, align 8
  %93 = call i8* @strchr(i8* %92, i8 signext 93)
  store i8* %93, i8** %5, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  br label %105

99:                                               ; preds = %91
  %100 = load i8*, i8** %4, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  br label %105

105:                                              ; preds = %99, %96
  %106 = phi i8* [ %98, %96 ], [ %104, %99 ]
  store i8* %106, i8** %5, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = icmp ne i8* %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load i8*, i8** %3, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = add nsw i32 %114, 1
  %116 = call i32 @memmove(i8* %111, i8* %112, i32 %115)
  %117 = load i8*, i8** %5, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = load i8*, i8** %3, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 %121
  store i8* %123, i8** %3, align 8
  br label %126

124:                                              ; preds = %105
  %125 = load i8*, i8** %5, align 8
  store i8* %125, i8** %3, align 8
  br label %126

126:                                              ; preds = %124, %110
  %127 = load i8*, i8** %3, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 91
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %3, align 8
  %134 = load i8*, i8** %3, align 8
  store i8* %134, i8** %4, align 8
  br label %136

135:                                              ; preds = %126
  store i8* null, i8** %4, align 8
  br label %136

136:                                              ; preds = %135, %131
  br label %62

137:                                              ; preds = %62
  %138 = load i8*, i8** %3, align 8
  store i8 0, i8* %138, align 1
  br label %139

139:                                              ; preds = %137, %60
  ret void
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
