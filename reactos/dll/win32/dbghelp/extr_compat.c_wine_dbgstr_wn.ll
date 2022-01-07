; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c_wine_dbgstr_wn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c_wine_dbgstr_wn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wine_dbgstr_wn.buffer = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"#%04x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wine_dbgstr_wn(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = ptrtoint i32* %11 to i32
  %13 = ashr i32 %12, 16
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %139

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wine_dbgstr_wn.buffer, i64 0, i64 0), i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @LOWORD(i32* %21)
  %23 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %3, align 8
  br label %139

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %34, %28
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %9, align 8
  br label %30

37:                                               ; preds = %30
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %37, %25
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 5
  %52 = call i32 @min(i32 300, i32 %51)
  %53 = add nsw i32 12, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %8, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wine_dbgstr_wn.buffer, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @wine_dbgstr_wn.buffer, i64 0, i64 0), i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 76, i8* %55, align 1
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  store i8 34, i8* %57, align 1
  br label %59

59:                                               ; preds = %122, %49
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %5, align 4
  %62 = icmp sgt i32 %60, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 -10
  %69 = icmp ule i8* %64, %68
  br label %70

70:                                               ; preds = %63, %59
  %71 = phi i1 [ false, %59 ], [ %69, %63 ]
  br i1 %71, label %72, label %123

72:                                               ; preds = %70
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %4, align 8
  %75 = load i32, i32* %73, align 4
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  switch i32 %76, label %102 [
    i32 10, label %77
    i32 13, label %82
    i32 9, label %87
    i32 34, label %92
    i32 92, label %97
  ]

77:                                               ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  store i8 92, i8* %78, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  store i8 110, i8* %80, align 1
  br label %122

82:                                               ; preds = %72
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  store i8 92, i8* %83, align 1
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  store i8 114, i8* %85, align 1
  br label %122

87:                                               ; preds = %72
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  store i8 92, i8* %88, align 1
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %6, align 8
  store i8 116, i8* %90, align 1
  br label %122

92:                                               ; preds = %72
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %6, align 8
  store i8 92, i8* %93, align 1
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  store i8 34, i8* %95, align 1
  br label %122

97:                                               ; preds = %72
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  store i8 92, i8* %98, align 1
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %6, align 8
  store i8 92, i8* %100, align 1
  br label %122

102:                                              ; preds = %72
  %103 = load i32, i32* %10, align 4
  %104 = icmp sge i32 %103, 32
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = icmp sle i32 %106, 126
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 8
  store i8 %110, i8* %111, align 1
  br label %121

113:                                              ; preds = %105, %102
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %6, align 8
  store i8 92, i8* %114, align 1
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @sprintf(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  store i8* %120, i8** %6, align 8
  br label %121

121:                                              ; preds = %113, %108
  br label %122

122:                                              ; preds = %121, %97, %92, %87, %82, %77
  br label %59

123:                                              ; preds = %70
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %6, align 8
  store i8 34, i8* %124, align 1
  %126 = load i32, i32* %5, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  store i8 46, i8* %129, align 1
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %6, align 8
  store i8 46, i8* %131, align 1
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %6, align 8
  store i8 46, i8* %133, align 1
  br label %135

135:                                              ; preds = %128, %123
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %6, align 8
  store i8 0, i8* %136, align 1
  %138 = load i8*, i8** %7, align 8
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %135, %19, %18
  %140 = load i8*, i8** %3, align 8
  ret i8* %140
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @LOWORD(i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
