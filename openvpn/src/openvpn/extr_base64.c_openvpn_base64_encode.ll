; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_base64.c_openvpn_base64_encode.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_base64.c_openvpn_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_chars = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openvpn_base64_encode(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %133

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sdiv i32 %18, 3
  %20 = add nsw i32 %19, 4
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %8, align 8
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %133

26:                                               ; preds = %16
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %12, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %124, %26
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %127

32:                                               ; preds = %28
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 %40, 256
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %45, %32
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %57, 256
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %62, %54
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load i8*, i8** @base64_chars, align 8
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 16515072
  %77 = ashr i32 %76, 18
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 %80, i8* %82, align 1
  %83 = load i8*, i8** @base64_chars, align 8
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 258048
  %86 = ashr i32 %85, 12
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 %89, i8* %91, align 1
  %92 = load i8*, i8** @base64_chars, align 8
  %93 = load i32, i32* %11, align 4
  %94 = and i32 %93, 4032
  %95 = ashr i32 %94, 6
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  store i8 %98, i8* %100, align 1
  %101 = load i8*, i8** @base64_chars, align 8
  %102 = load i32, i32* %11, align 4
  %103 = and i32 %102, 63
  %104 = ashr i32 %103, 0
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 3
  store i8 %107, i8* %109, align 1
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %71
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  store i8 61, i8* %115, align 1
  br label %116

116:                                              ; preds = %113, %71
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = icmp sgt i32 %117, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  store i8 61, i8* %123, align 1
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 4
  store i8* %126, i8** %9, align 8
  br label %28

127:                                              ; preds = %28
  %128 = load i8*, i8** %9, align 8
  store i8 0, i8* %128, align 1
  %129 = load i8*, i8** %8, align 8
  %130 = load i8**, i8*** %7, align 8
  store i8* %129, i8** %130, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @strlen(i8* %131)
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %127, %25, %15
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
