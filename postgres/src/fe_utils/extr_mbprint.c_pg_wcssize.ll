; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_mbprint.c_pg_wcssize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_mbprint.c_pg_wcssize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_wcssize(i8* %0, i64 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %125, %6
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %25, 0
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %29, label %130

29:                                               ; preds = %27
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @PQmblen(i8* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %130

38:                                               ; preds = %29
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @PQdsplen(i8* %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %104

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %53, %49
  store i32 0, i32* %15, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %18, align 4
  br label %103

60:                                               ; preds = %44
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 13
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %18, align 4
  br label %102

70:                                               ; preds = %60
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 9
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %81, %75
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %15, align 4
  %83 = srem i32 %82, 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %76, label %85

85:                                               ; preds = %81
  br label %101

86:                                               ; preds = %70
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 4
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, 4
  store i32 %93, i32* %18, align 4
  br label %100

94:                                               ; preds = %86
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %55
  br label %120

104:                                              ; preds = %38
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 6
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, 6
  store i32 %111, i32* %18, align 4
  br label %119

112:                                              ; preds = %104
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %18, align 4
  br label %119

119:                                              ; preds = %112, %107
  br label %120

120:                                              ; preds = %119, %103
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %8, align 8
  %124 = sub i64 %123, %122
  store i64 %124, i64* %8, align 8
  br label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %14, align 4
  %127 = load i8*, i8** %7, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %7, align 8
  br label %19

130:                                              ; preds = %37, %27
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %134, %130
  %137 = load i32, i32* %18, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %18, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %16, align 4
  %143 = load i32*, i32** %10, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32*, i32** %11, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %17, align 4
  %149 = load i32*, i32** %11, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32*, i32** %12, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %18, align 4
  %155 = load i32*, i32** %12, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %150
  ret void
}

declare dso_local i32 @PQmblen(i8*, i32) #1

declare dso_local i32 @PQdsplen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
