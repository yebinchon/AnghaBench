; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_ReadReqBody_r.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_ReadReqBody_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LSAPI_ReadReqBody_r(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %12, %3
  store i64 -1, i64* %4, align 8
  br label %122

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i64 0, i64* %4, align 8
  br label %122

35:                                               ; preds = %24
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %39, %35
  store i64 0, i64* %9, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %41
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @memmove(i8* %58, i64 %65, i64 %66)
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %57, %41
  br label %83

83:                                               ; preds = %114, %82
  %84 = load i64, i64* %7, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %83
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i64 @lsapi_read(i32 %89, i8* %90, i64 %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %86
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 %99
  store i8* %101, i8** %6, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %7, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %7, align 8
  br label %114

105:                                              ; preds = %86
  %106 = load i64, i64* %8, align 8
  %107 = icmp sle i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i64, i64* %9, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store i64 -1, i64* %4, align 8
  br label %122

112:                                              ; preds = %108
  br label %115

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %95
  br label %83

115:                                              ; preds = %112, %83
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load i64, i64* %9, align 8
  store i64 %121, i64* %4, align 8
  br label %122

122:                                              ; preds = %115, %111, %34, %23
  %123 = load i64, i64* %4, align 8
  ret i64 %123
}

declare dso_local i32 @memmove(i8*, i64, i64) #1

declare dso_local i64 @lsapi_read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
