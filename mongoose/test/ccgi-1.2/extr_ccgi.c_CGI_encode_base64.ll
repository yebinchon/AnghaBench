; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_CGI_encode_base64.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_CGI_encode_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b64encode = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CGI_encode_base64(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  store i8* null, i8** %3, align 8
  br label %139

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 4, %20
  %22 = sdiv i32 %21, 3
  %23 = add nsw i32 4, %22
  %24 = call i8* @mymalloc(i32 %23)
  store i8* %24, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %93, %19
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %96

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 16, %36
  %38 = shl i32 %35, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 8
  store i32 %42, i32* %9, align 4
  %43 = icmp eq i32 %42, 24
  br i1 %43, label %44, label %92

44:                                               ; preds = %29
  %45 = load i8*, i8** @b64encode, align 8
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 18
  %48 = and i32 %47, 63
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8 %51, i8* %56, align 1
  %57 = load i8*, i8** @b64encode, align 8
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %58, 12
  %60 = and i32 %59, 63
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 %63, i8* %68, align 1
  %69 = load i8*, i8** @b64encode, align 8
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, 6
  %72 = and i32 %71, 63
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 %75, i8* %80, align 1
  %81 = load i8*, i8** @b64encode, align 8
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, 63
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 %86, i8* %91, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %44, %29
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %25

96:                                               ; preds = %25
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %96
  store i32 18, i32* %10, align 4
  br label %100

100:                                              ; preds = %129, %99
  %101 = load i32, i32* %10, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = load i8*, i8** @b64encode, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %10, align 4
  %110 = ashr i32 %108, %109
  %111 = and i32 %110, 63
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %107, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  store i8 %114, i8* %119, align 1
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %120, 6
  store i32 %121, i32* %9, align 4
  br label %128

122:                                              ; preds = %103
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 61, i8* %127, align 1
  br label %128

128:                                              ; preds = %122, %106
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %130, 6
  store i32 %131, i32* %10, align 4
  br label %100

132:                                              ; preds = %100
  br label %133

133:                                              ; preds = %132, %96
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i8*, i8** %7, align 8
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %133, %18
  %140 = load i8*, i8** %3, align 8
  ret i8* %140
}

declare dso_local i8* @mymalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
