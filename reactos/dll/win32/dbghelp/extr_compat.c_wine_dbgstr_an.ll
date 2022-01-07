; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c_wine_dbgstr_an.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c_wine_dbgstr_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wine_dbgstr_an.hex = internal constant [16 x i8] c"0123456789abcdef", align 16
@wine_dbgstr_an.buffer = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"#%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wine_dbgstr_an(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = ashr i32 %11, 16
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %138

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wine_dbgstr_an.buffer, i64 0, i64 0), i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @LOWORD(i8* %20)
  %22 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %3, align 8
  br label %138

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 4
  %37 = call i32 @min(i32 300, i32 %36)
  %38 = add nsw i32 10, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %8, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wine_dbgstr_an.buffer, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wine_dbgstr_an.buffer, i64 0, i64 0), i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  store i8 34, i8* %40, align 1
  br label %42

42:                                               ; preds = %121, %34
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  %45 = icmp sgt i32 %43, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 -9
  %52 = icmp ule i8* %47, %51
  br label %53

53:                                               ; preds = %46, %42
  %54 = phi i1 [ false, %42 ], [ %52, %46 ]
  br i1 %54, label %55, label %122

55:                                               ; preds = %53
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  %58 = load i8, i8* %56, align 1
  store i8 %58, i8* %9, align 1
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  switch i32 %60, label %86 [
    i32 10, label %61
    i32 13, label %66
    i32 9, label %71
    i32 34, label %76
    i32 92, label %81
  ]

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  store i8 92, i8* %62, align 1
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  store i8 110, i8* %64, align 1
  br label %121

66:                                               ; preds = %55
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  store i8 92, i8* %67, align 1
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  store i8 114, i8* %69, align 1
  br label %121

71:                                               ; preds = %55
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  store i8 92, i8* %72, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  store i8 116, i8* %74, align 1
  br label %121

76:                                               ; preds = %55
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  store i8 92, i8* %77, align 1
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  store i8 34, i8* %79, align 1
  br label %121

81:                                               ; preds = %55
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  store i8 92, i8* %82, align 1
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  store i8 92, i8* %84, align 1
  br label %121

86:                                               ; preds = %55
  %87 = load i8, i8* %9, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sge i32 %88, 32
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i8, i8* %9, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp sle i32 %92, 126
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i8, i8* %9, align 1
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  store i8 %95, i8* %96, align 1
  br label %120

98:                                               ; preds = %90, %86
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  store i8 92, i8* %99, align 1
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  store i8 120, i8* %101, align 1
  %103 = load i8, i8* %9, align 1
  %104 = zext i8 %103 to i32
  %105 = ashr i32 %104, 4
  %106 = and i32 %105, 15
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* @wine_dbgstr_an.hex, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  store i8 %109, i8* %110, align 1
  %112 = load i8, i8* %9, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, 15
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* @wine_dbgstr_an.hex, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %6, align 8
  store i8 %117, i8* %118, align 1
  br label %120

120:                                              ; preds = %98, %94
  br label %121

121:                                              ; preds = %120, %81, %76, %71, %66, %61
  br label %42

122:                                              ; preds = %53
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  store i8 34, i8* %123, align 1
  %125 = load i32, i32* %5, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %6, align 8
  store i8 46, i8* %128, align 1
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %6, align 8
  store i8 46, i8* %130, align 1
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %6, align 8
  store i8 46, i8* %132, align 1
  br label %134

134:                                              ; preds = %127, %122
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %6, align 8
  store i8 0, i8* %135, align 1
  %137 = load i8*, i8** %7, align 8
  store i8* %137, i8** %3, align 8
  br label %138

138:                                              ; preds = %134, %18, %17
  %139 = load i8*, i8** %3, align 8
  ret i8* %139
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @LOWORD(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
