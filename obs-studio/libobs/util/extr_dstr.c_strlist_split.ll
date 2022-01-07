; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_strlist_split.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_strlist_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @strlist_split(i8* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %144

21:                                               ; preds = %3
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %5, align 1
  %24 = call i8* @strchr(i8* %22, i8 signext %23)
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %46, %21
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %16, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36, %28
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %16, align 8
  %43 = add i64 %42, 1
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %5, align 1
  %51 = call i8* @strchr(i8* %49, i8 signext %50)
  store i8* %51, i8** %8, align 8
  br label %25

52:                                               ; preds = %25
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57, %52
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add nsw i64 %64, 1
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %60, %57
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  %71 = mul i64 %70, 8
  store i64 %71, i64* %15, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i8* @bmalloc(i64 %75)
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %15, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = bitcast i8* %80 to i8**
  store i8** %81, i8*** %12, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %5, align 1
  %84 = call i8* @strchr(i8* %82, i8 signext %83)
  store i8* %84, i8** %8, align 8
  %85 = load i8*, i8** %4, align 8
  store i8* %85, i8** %7, align 8
  br label %86

86:                                               ; preds = %117, %68
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %123

89:                                               ; preds = %86
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  store i64 %94, i64* %17, align 8
  %95 = load i64, i64* %17, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %97, %89
  %101 = load i8*, i8** %13, align 8
  %102 = load i8**, i8*** %12, align 8
  %103 = load i64, i64* %14, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %14, align 8
  %105 = getelementptr inbounds i8*, i8** %102, i64 %103
  store i8* %101, i8** %105, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i64, i64* %17, align 8
  %109 = call i32 @strncpy(i8* %106, i8* %107, i64 %108)
  %110 = load i8*, i8** %13, align 8
  %111 = load i64, i64* %17, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load i64, i64* %17, align 8
  %114 = add i64 %113, 1
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %13, align 8
  br label %117

117:                                              ; preds = %100, %97
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %119, i8** %7, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %5, align 1
  %122 = call i8* @strchr(i8* %120, i8 signext %121)
  store i8* %122, i8** %8, align 8
  br label %86

123:                                              ; preds = %86
  %124 = load i8*, i8** %7, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128, %123
  %132 = load i8*, i8** %13, align 8
  %133 = load i8**, i8*** %12, align 8
  %134 = load i64, i64* %14, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %14, align 8
  %136 = getelementptr inbounds i8*, i8** %133, i64 %134
  store i8* %132, i8** %136, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = call i32 @strcpy(i8* %137, i8* %138)
  br label %140

140:                                              ; preds = %131, %128
  %141 = load i8**, i8*** %12, align 8
  %142 = load i64, i64* %14, align 8
  %143 = getelementptr inbounds i8*, i8** %141, i64 %142
  store i8* null, i8** %143, align 8
  br label %144

144:                                              ; preds = %140, %3
  %145 = load i8*, i8** %9, align 8
  %146 = bitcast i8* %145 to i8**
  ret i8** %146
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @bmalloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
