; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_cs_base64_decode.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_cs_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs_base64_decode(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %93, %4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = call zeroext i8 @from_b64(i8 zeroext %23)
  store i8 %24, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 255
  br i1 %26, label %27, label %48

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = call zeroext i8 @from_b64(i8 zeroext %30)
  store i8 %31, i8* %10, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 255
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = call zeroext i8 @from_b64(i8 zeroext %37)
  store i8 %38, i8* %11, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 255
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 3
  %44 = load i8, i8* %43, align 1
  %45 = call zeroext i8 @from_b64(i8 zeroext %44)
  store i8 %45, i8* %12, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 255
  br label %48

48:                                               ; preds = %41, %34, %27, %20, %17
  %49 = phi i1 [ false, %34 ], [ false, %27 ], [ false, %20 ], [ false, %17 ], [ %47, %41 ]
  br i1 %49, label %50, label %103

50:                                               ; preds = %48
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %52, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 4
  store i32 %54, i32* %6, align 4
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 200
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 200
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %50
  br label %103

63:                                               ; preds = %58
  %64 = load i8, i8* %9, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 2
  %67 = load i8, i8* %10, align 1
  %68 = zext i8 %67 to i32
  %69 = ashr i32 %68, 4
  %70 = or i32 %66, %69
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  store i8 %71, i8* %72, align 1
  %74 = load i8, i8* %11, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 200
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %103

78:                                               ; preds = %63
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 4
  %82 = load i8, i8* %11, align 1
  %83 = zext i8 %82 to i32
  %84 = ashr i32 %83, 2
  %85 = or i32 %81, %84
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %7, align 8
  store i8 %86, i8* %87, align 1
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 200
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %103

93:                                               ; preds = %78
  %94 = load i8, i8* %11, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 6
  %97 = load i8, i8* %12, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %96, %98
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %7, align 8
  store i8 %100, i8* %101, align 1
  br label %17

103:                                              ; preds = %92, %77, %62, %48
  %104 = load i8*, i8** %7, align 8
  store i8 0, i8* %104, align 1
  %105 = load i32*, i32** %8, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %8, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %107, %103
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %116, %117
  ret i32 %118
}

declare dso_local zeroext i8 @from_b64(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
