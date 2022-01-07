; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_base64.c_pg_b64_encode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_base64.c_pg_b64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_base64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_b64_encode(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %12, align 8
  store i32 2, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %93, %4
  %22 = load i8*, i8** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %21
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %13, align 4
  %30 = shl i32 %29, 3
  %31 = shl i32 %28, %30
  %32 = load i8, i8* %14, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %14, align 1
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %13, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %25
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = add nsw i64 %47, 4
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %166

53:                                               ; preds = %42
  %54 = load i8*, i8** @_base64, align 8
  %55 = load i8, i8* %14, align 1
  %56 = zext i8 %55 to i32
  %57 = ashr i32 %56, 18
  %58 = and i32 %57, 63
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i8*, i8** @_base64, align 8
  %65 = load i8, i8* %14, align 1
  %66 = zext i8 %65 to i32
  %67 = ashr i32 %66, 12
  %68 = and i32 %67, 63
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %10, align 8
  store i8 %71, i8* %72, align 1
  %74 = load i8*, i8** @_base64, align 8
  %75 = load i8, i8* %14, align 1
  %76 = zext i8 %75 to i32
  %77 = ashr i32 %76, 6
  %78 = and i32 %77, 63
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %10, align 8
  store i8 %81, i8* %82, align 1
  %84 = load i8*, i8** @_base64, align 8
  %85 = load i8, i8* %14, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 63
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %10, align 8
  store i8 %90, i8* %91, align 1
  store i32 2, i32* %13, align 4
  store i8 0, i8* %14, align 1
  br label %93

93:                                               ; preds = %53, %25
  br label %21

94:                                               ; preds = %21
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 2
  br i1 %96, label %97, label %149

97:                                               ; preds = %94
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = add nsw i64 %102, 4
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp sgt i64 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %166

108:                                              ; preds = %97
  %109 = load i8*, i8** @_base64, align 8
  %110 = load i8, i8* %14, align 1
  %111 = zext i8 %110 to i32
  %112 = ashr i32 %111, 18
  %113 = and i32 %112, 63
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %109, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %10, align 8
  store i8 %116, i8* %117, align 1
  %119 = load i8*, i8** @_base64, align 8
  %120 = load i8, i8* %14, align 1
  %121 = zext i8 %120 to i32
  %122 = ashr i32 %121, 12
  %123 = and i32 %122, 63
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %119, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %10, align 8
  store i8 %126, i8* %127, align 1
  %129 = load i32, i32* %13, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %108
  %132 = load i8*, i8** @_base64, align 8
  %133 = load i8, i8* %14, align 1
  %134 = zext i8 %133 to i32
  %135 = ashr i32 %134, 6
  %136 = and i32 %135, 63
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %132, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  br label %142

141:                                              ; preds = %108
  br label %142

142:                                              ; preds = %141, %131
  %143 = phi i32 [ %140, %131 ], [ 61, %141 ]
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %10, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %10, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %10, align 8
  store i8 61, i8* %147, align 1
  br label %149

149:                                              ; preds = %142, %94
  %150 = load i8*, i8** %10, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp sle i64 %154, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @Assert(i32 %158)
  %160 = load i8*, i8** %10, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %5, align 4
  br label %170

166:                                              ; preds = %107, %52
  %167 = load i8*, i8** %8, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @memset(i8* %167, i32 0, i32 %168)
  store i32 -1, i32* %5, align 4
  br label %170

170:                                              ; preds = %166, %149
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
