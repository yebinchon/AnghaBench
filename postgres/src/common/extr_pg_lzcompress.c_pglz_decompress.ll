; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_pg_lzcompress.c_pglz_decompress.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_pg_lzcompress.c_pglz_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pglz_decompress(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %9, align 8
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8* %29, i8** %15, align 8
  br label %30

30:                                               ; preds = %129, %5
  %31 = load i8*, i8** %12, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %14, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = icmp ult i8* %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %130

40:                                               ; preds = %38
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %12, align 8
  %43 = load i8, i8* %41, align 1
  store i8 %43, i8* %16, align 1
  store i32 0, i32* %17, align 4
  br label %44

44:                                               ; preds = %126, %40
  %45 = load i32, i32* %17, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %14, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = icmp ult i8* %52, %53
  br label %55

55:                                               ; preds = %51, %47, %44
  %56 = phi i1 [ false, %47 ], [ false, %44 ], [ %54, %51 ]
  br i1 %56, label %57, label %129

57:                                               ; preds = %55
  %58 = load i8, i8* %16, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %57
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 15
  %68 = add nsw i32 %67, 3
  store i32 %68, i32* %18, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 240
  %74 = shl i32 %73, 4
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %74, %78
  store i32 %79, i32* %19, align 4
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %12, align 8
  %82 = load i32, i32* %18, align 4
  %83 = icmp eq i32 %82, 18
  br i1 %83, label %84, label %91

84:                                               ; preds = %62
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %12, align 8
  %87 = load i8, i8* %85, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %84, %62
  %92 = load i32, i32* %18, align 4
  %93 = load i8*, i8** %15, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @Min(i32 %92, i32 %98)
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %104, %91
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %18, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load i8*, i8** %14, align 8
  %106 = load i32, i32* %19, align 4
  %107 = sub nsw i32 0, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %14, align 8
  store i8 %110, i8* %111, align 1
  %112 = load i8*, i8** %14, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %14, align 8
  br label %100

114:                                              ; preds = %100
  br label %121

115:                                              ; preds = %57
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %12, align 8
  %118 = load i8, i8* %116, align 1
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %14, align 8
  store i8 %118, i8* %119, align 1
  br label %121

121:                                              ; preds = %115, %114
  %122 = load i8, i8* %16, align 1
  %123 = zext i8 %122 to i32
  %124 = ashr i32 %123, 1
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %16, align 1
  br label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %44

129:                                              ; preds = %55
  br label %30

130:                                              ; preds = %38
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i8*, i8** %14, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = icmp ne i8* %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = icmp ne i8* %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137, %133
  store i32 -1, i32* %6, align 4
  br label %149

142:                                              ; preds = %137, %130
  %143 = load i8*, i8** %14, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %142, %141
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @Min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
