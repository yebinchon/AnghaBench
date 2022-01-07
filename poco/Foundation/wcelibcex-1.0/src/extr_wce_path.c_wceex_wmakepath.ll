; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_path.c_wceex_wmakepath.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_path.c_wceex_wmakepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wceex_wmakepath(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* @_MAX_PATH, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %13, align 8
  %19 = load i8*, i8** %6, align 8
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @wcsncat(i8* %28, i8* %29, i64 %30)
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @wcslen(i8* %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %34
  store i8* %36, i8** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %27, %22, %5
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %105

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %43
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %105

51:                                               ; preds = %48
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @wcsncat(i8* %52, i8* %53, i64 %54)
  %56 = load i8*, i8** %11, align 8
  %57 = call i64 @wcslen(i8* %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = sub i64 %58, 1
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %51
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 92
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 47
  br i1 %76, label %77, label %102

77:                                               ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @wcschr(i8* %78, i8 signext 47)
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = call i8* @wcschr(i8* %83, i8 signext 92)
  store i8* %84, i8** %14, align 8
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i8*, i8** %14, align 8
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %11, align 8
  store i8 %92, i8* %93, align 1
  br label %96

94:                                               ; preds = %85
  %95 = load i8*, i8** %11, align 8
  store i8 92, i8* %95, align 1
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %11, align 8
  %99 = load i8*, i8** %11, align 8
  store i8 0, i8* %99, align 1
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, -1
  store i64 %101, i64* %13, align 8
  br label %102

102:                                              ; preds = %96, %72, %67, %51
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %11, align 8
  br label %105

105:                                              ; preds = %102, %48, %43, %40
  %106 = load i8*, i8** %9, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %129

108:                                              ; preds = %105
  %109 = load i8*, i8** %9, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %108
  %114 = load i64, i64* %13, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @wcsncat(i8* %117, i8* %118, i64 %119)
  %121 = load i8*, i8** %11, align 8
  %122 = call i64 @wcslen(i8* %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 %123
  store i8* %125, i8** %11, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %13, align 8
  %128 = sub i64 %127, %126
  store i64 %128, i64* %13, align 8
  br label %129

129:                                              ; preds = %116, %113, %108, %105
  %130 = load i8*, i8** %10, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %161

132:                                              ; preds = %129
  %133 = load i8*, i8** %10, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %132
  %138 = load i64, i64* %13, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %137
  %141 = load i8*, i8** %10, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 46
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load i8*, i8** %11, align 8
  store i8 46, i8* %146, align 1
  %147 = load i8*, i8** %11, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %11, align 8
  %149 = load i8*, i8** %11, align 8
  store i8 0, i8* %149, align 1
  %150 = load i64, i64* %13, align 8
  %151 = add i64 %150, -1
  store i64 %151, i64* %13, align 8
  br label %152

152:                                              ; preds = %145, %140
  %153 = load i64, i64* %13, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i8*, i8** %11, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = load i64, i64* %13, align 8
  %159 = call i32 @wcsncat(i8* %156, i8* %157, i64 %158)
  br label %160

160:                                              ; preds = %155, %152
  br label %161

161:                                              ; preds = %160, %137, %132, %129
  ret void
}

declare dso_local i32 @wcsncat(i8*, i8*, i64) #1

declare dso_local i64 @wcslen(i8*) #1

declare dso_local i8* @wcschr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
