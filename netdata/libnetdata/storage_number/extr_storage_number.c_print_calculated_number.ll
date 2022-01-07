; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/storage_number/extr_storage_number.c_print_calculated_number.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/storage_number/extr_storage_number.c_print_calculated_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_calculated_number(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca [50 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  store i8 45, i8* %24, align 1
  %26 = load i64, i64* %4, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %23, %2
  %29 = load i64, i64* %4, align 8
  %30 = mul i64 %29, 10000000
  %31 = urem i64 %30, 10000000
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @calculated_number_llrint(i64 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp uge i64 %35, 10000000
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = sub i64 %43, 10000000
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %40, %28
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  store i8 48, i8* %52, align 16
  %53 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 1
  store i8* %53, i8** %12, align 8
  br label %58

54:                                               ; preds = %45
  %55 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %56 = load i64, i64* %10, align 8
  %57 = call i8* @print_number_llu_r_smart(i8* %55, i64 %56)
  store i8* %57, i8** %12, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %12, align 8
  br label %61

61:                                               ; preds = %65, %58
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %64 = icmp uge i8* %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %12, align 8
  %68 = load i8, i8* %66, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  store i8 %68, i8* %69, align 1
  br label %61

71:                                               ; preds = %61
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @likely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %128

77:                                               ; preds = %71
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  store i8 46, i8* %78, align 1
  %80 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %81 = load i64, i64* %11, align 8
  %82 = call i8* @print_number_llu_r_smart(i8* %80, i64 %81)
  store i8* %82, i8** %13, align 8
  store i32 7, i32* %14, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %93, %77
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %7, align 8
  store i8 48, i8* %94, align 1
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %89

98:                                               ; preds = %89
  %99 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  store i8* %99, i8** %16, align 8
  br label %100

100:                                              ; preds = %111, %98
  %101 = load i8*, i8** %16, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = icmp ult i8* %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i8*, i8** %16, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 48
  br label %109

109:                                              ; preds = %104, %100
  %110 = phi i1 [ false, %100 ], [ %108, %104 ]
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = load i8*, i8** %16, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %16, align 8
  br label %100

114:                                              ; preds = %109
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 -1
  store i8* %116, i8** %13, align 8
  br label %117

117:                                              ; preds = %121, %114
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = icmp uge i8* %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 -1
  store i8* %123, i8** %13, align 8
  %124 = load i8, i8* %122, align 1
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  store i8 %124, i8* %125, align 1
  br label %117

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %71
  %129 = load i8*, i8** %7, align 8
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %7, align 8
  %131 = load i8*, i8** %3, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  ret i32 %135
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @calculated_number_llrint(i64) #1

declare dso_local i8* @print_number_llu_r_smart(i8*, i64) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
