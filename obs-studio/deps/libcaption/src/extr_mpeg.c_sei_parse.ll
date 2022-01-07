; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_parse.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIBCAPTION_ERROR = common dso_local global i32 0, align 4
@LIBCAPTION_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sei_parse(i32* %0, i32* %1, i64 %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store double %3, double* %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load double, double* %9, align 8
  %18 = call i32 @sei_init(i32* %16, double %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %116, %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 1, %20
  br i1 %21, label %22, label %117

22:                                               ; preds = %19
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %23

23:                                               ; preds = %32, %22
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 0, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 255, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, 255
  store i64 %34, i64* %11, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %8, align 8
  br label %23

39:                                               ; preds = %30
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 0, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @LIBCAPTION_ERROR, align 4
  store i32 %43, i32* %5, align 4
  br label %119

44:                                               ; preds = %39
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %11, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %63, %44
  %55 = load i64, i64* %8, align 8
  %56 = icmp ult i64 0, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 255, %59
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  br i1 %62, label %63, label %70

63:                                               ; preds = %61
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 255
  store i64 %65, i64* %12, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %8, align 8
  br label %54

70:                                               ; preds = %61
  %71 = load i64, i64* %8, align 8
  %72 = icmp eq i64 0, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @LIBCAPTION_ERROR, align 4
  store i32 %74, i32* %5, align 4
  br label %119

75:                                               ; preds = %70
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %12, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %116

87:                                               ; preds = %75
  %88 = load i64, i64* %11, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i64, i64* %12, align 8
  %91 = call i32* @sei_message_new(i32 %89, i32 0, i64 %90)
  store i32* %91, i32** %13, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32* @sei_message_data(i32* %92)
  store i32* %93, i32** %14, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @_copy_to_rbsp(i32* %94, i64 %95, i32* %96, i64 %97)
  store i64 %98, i64* %15, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @sei_message_append(i32* %99, i32* %100)
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %87
  %106 = load i32, i32* @LIBCAPTION_ERROR, align 4
  store i32 %106, i32* %5, align 4
  br label %119

107:                                              ; preds = %87
  %108 = load i64, i64* %15, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 %108
  store i32* %110, i32** %7, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %8, align 8
  %113 = sub i64 %112, %111
  store i64 %113, i64* %8, align 8
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %107, %75
  br label %19

117:                                              ; preds = %19
  %118 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %105, %73, %42
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @sei_init(i32*, double) #1

declare dso_local i32* @sei_message_new(i32, i32, i64) #1

declare dso_local i32* @sei_message_data(i32*) #1

declare dso_local i64 @_copy_to_rbsp(i32*, i64, i32*, i64) #1

declare dso_local i32 @sei_message_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
