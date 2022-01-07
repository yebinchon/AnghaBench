; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_getToken.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_getToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TT_EOF = common dso_local global i32 0, align 4
@TT_WORD = common dso_local global i32 0, align 4
@TT_NUMBER = common dso_local global i32 0, align 4
@TT_SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*)* @getToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getToken(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64*, i64** %6, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp ugt i64 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @TT_EOF, align 4
  store i32 %14, i32* %4, align 4
  br label %134

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i64*, i64** %6, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i64 @isspace(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %27, %19, %16
  %37 = phi i1 [ false, %19 ], [ false, %16 ], [ %35, %27 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  br label %16

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* @TT_EOF, align 4
  store i32 %53, i32* %4, align 4
  br label %134

54:                                               ; preds = %42
  %55 = load i8*, i8** %5, align 8
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = call i64 @isalpha(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %54
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %7, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %89, %63
  %68 = load i64*, i64** %7, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i8*, i8** %5, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load i8*, i8** %5, align 8
  %80 = load i64*, i64** %7, align 8
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = call i64 @isalnum(i32 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %78, %70, %67
  %88 = phi i1 [ false, %70 ], [ false, %67 ], [ %86, %78 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %67

93:                                               ; preds = %87
  %94 = load i32, i32* @TT_WORD, align 4
  store i32 %94, i32* %4, align 4
  br label %134

95:                                               ; preds = %54
  %96 = load i8*, i8** %5, align 8
  %97 = load i64*, i64** %6, align 8
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = call i64 @isdigit(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %95
  %105 = load i64*, i64** %6, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %7, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %122, %104
  %109 = load i64*, i64** %7, align 8
  %110 = icmp ne i64* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i8*, i8** %5, align 8
  %113 = load i64*, i64** %7, align 8
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = call i64 @isalnum(i32 %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %111, %108
  %121 = phi i1 [ false, %108 ], [ %119, %111 ]
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = load i64*, i64** %7, align 8
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %108

126:                                              ; preds = %120
  %127 = load i32, i32* @TT_NUMBER, align 4
  store i32 %127, i32* %4, align 4
  br label %134

128:                                              ; preds = %95
  %129 = load i64*, i64** %6, align 8
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  %132 = load i64*, i64** %7, align 8
  store i64 %131, i64* %132, align 8
  %133 = load i32, i32* @TT_SPECIAL, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %128, %126, %93, %49, %13
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i64 @isalnum(i32) #1

declare dso_local i64 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
