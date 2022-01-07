; ModuleID = '/home/carl/AnghaBench/php-src/win32/extr_fnmatch.c_rangematch.c'
source_filename = "/home/carl/AnghaBench/php-src/win32/extr_fnmatch.c_rangematch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FNM_CASEFOLD = common dso_local global i32 0, align 4
@FNM_NOESCAPE = common dso_local global i32 0, align 4
@EOS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i32)* @rangematch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rangematch(i8* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 33
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 94
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ true, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  br i1 %22, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @FNM_CASEFOLD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8, i8* %6, align 1
  %34 = call signext i8 @tolower(i8 zeroext %33)
  store i8 %34, i8* %6, align 1
  br label %35

35:                                               ; preds = %32, %27
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %139, %35
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  %39 = load i8, i8* %37, align 1
  store i8 %39, i8* %10, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 93
  br i1 %41, label %42, label %140

42:                                               ; preds = %36
  %43 = load i8, i8* %10, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @FNM_NOESCAPE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i8, i8* %52, align 1
  store i8 %54, i8* %10, align 1
  br label %55

55:                                               ; preds = %51, %46, %42
  %56 = load i8, i8* %10, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* @EOS, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i8* null, i8** %4, align 8
  br label %149

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @FNM_CASEFOLD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8, i8* %10, align 1
  %69 = call signext i8 @tolower(i8 zeroext %68)
  store i8 %69, i8* %10, align 1
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 45
  br i1 %74, label %75, label %131

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %11, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* @EOS, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %131

83:                                               ; preds = %75
  %84 = load i8, i8* %11, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 93
  br i1 %86, label %87, label %131

87:                                               ; preds = %83
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %5, align 8
  %90 = load i8, i8* %11, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 92
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @FNM_NOESCAPE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  %101 = load i8, i8* %99, align 1
  store i8 %101, i8* %11, align 1
  br label %102

102:                                              ; preds = %98, %93, %87
  %103 = load i8, i8* %11, align 1
  %104 = sext i8 %103 to i32
  %105 = load i8, i8* @EOS, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i8* null, i8** %4, align 8
  br label %149

109:                                              ; preds = %102
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @FNM_CASEFOLD, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8, i8* %11, align 1
  %116 = call signext i8 @tolower(i8 zeroext %115)
  store i8 %116, i8* %11, align 1
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i8, i8* %10, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8, i8* %6, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp sle i32 %119, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i8, i8* %6, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* %11, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp sle i32 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 1, i32* %9, align 4
  br label %130

130:                                              ; preds = %129, %123, %117
  br label %139

131:                                              ; preds = %83, %75, %70
  %132 = load i8, i8* %10, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8, i8* %6, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 1, i32* %9, align 4
  br label %138

138:                                              ; preds = %137, %131
  br label %139

139:                                              ; preds = %138, %130
  br label %36

140:                                              ; preds = %36
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %147

145:                                              ; preds = %140
  %146 = load i8*, i8** %5, align 8
  br label %147

147:                                              ; preds = %145, %144
  %148 = phi i8* [ null, %144 ], [ %146, %145 ]
  store i8* %148, i8** %4, align 8
  br label %149

149:                                              ; preds = %147, %108, %61
  %150 = load i8*, i8** %4, align 8
  ret i8* %150
}

declare dso_local signext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
