; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_slice_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_slice_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXDIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32*, i32*, i32*, i32*, i32, i32, i8)* @array_slice_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_slice_size(i8* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7, i32 %8, i8 signext %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8 %9, i8* %21, align 1
  %34 = load i32, i32* @MAXDIM, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %23, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %24, align 8
  %38 = load i32, i32* @MAXDIM, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %25, align 8
  %41 = load i32, i32* @MAXDIM, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %26, align 8
  %44 = load i32, i32* @MAXDIM, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %27, align 8
  store i32 0, i32* %32, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32*, i32** %17, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = call i32 @mda_get_range(i32 %47, i32* %37, i32* %48, i32* %49)
  %51 = load i32, i32* %19, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %10
  %54 = load i32*, i32** %13, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @ArrayGetNItems(i32 %57, i32* %37)
  %59 = load i32, i32* %19, align 4
  %60 = load i8, i8* %21, align 1
  %61 = call i32 @att_align_nominal(i32 %59, i8 signext %60)
  %62 = mul nsw i32 %58, %61
  store i32 %62, i32* %11, align 4
  store i32 1, i32* %33, align 4
  br label %147

63:                                               ; preds = %53, %10
  %64 = load i32, i32* %14, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = call i32 @ArrayGetOffset(i32 %64, i32* %65, i32* %66, i32* %67)
  store i32 %68, i32* %22, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i8, i8* %21, align 1
  %75 = call i8* @array_seek(i8* %69, i32 0, i32* %70, i32 %71, i32 %72, i32 %73, i8 signext %74)
  store i8* %75, i8** %28, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @mda_get_prod(i32 %76, i32* %77, i32* %40)
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @mda_get_offset_values(i32 %79, i32* %43, i32* %40, i32* %37)
  store i32 0, i32* %29, align 4
  br label %81

81:                                               ; preds = %89, %63
  %82 = load i32, i32* %29, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* %29, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %46, i64 %87
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %29, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %29, align 4
  br label %81

92:                                               ; preds = %81
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %30, align 4
  br label %95

95:                                               ; preds = %141, %92
  %96 = load i32, i32* %30, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %43, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load i8*, i8** %28, align 8
  %103 = load i32, i32* %22, align 4
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %30, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %43, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i8, i8* %21, align 1
  %112 = call i8* @array_seek(i8* %102, i32 %103, i32* %104, i32 %108, i32 %109, i32 %110, i8 signext %111)
  store i8* %112, i8** %28, align 8
  %113 = load i32, i32* %30, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %43, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %22, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %22, align 4
  br label %119

119:                                              ; preds = %101, %95
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @array_get_isnull(i32* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %19, align 4
  %126 = load i8*, i8** %28, align 8
  %127 = call i32 @att_addlength_pointer(i32 0, i32 %125, i8* %126)
  store i32 %127, i32* %31, align 4
  %128 = load i32, i32* %31, align 4
  %129 = load i8, i8* %21, align 1
  %130 = call i32 @att_align_nominal(i32 %128, i8 signext %129)
  store i32 %130, i32* %31, align 4
  %131 = load i32, i32* %31, align 4
  %132 = load i8*, i8** %28, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %28, align 8
  %135 = load i32, i32* %31, align 4
  %136 = load i32, i32* %32, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %32, align 4
  br label %138

138:                                              ; preds = %124, %119
  %139 = load i32, i32* %22, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %22, align 4
  br label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @mda_next_tuple(i32 %142, i32* %46, i32* %37)
  store i32 %143, i32* %30, align 4
  %144 = icmp ne i32 %143, -1
  br i1 %144, label %95, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %32, align 4
  store i32 %146, i32* %11, align 4
  store i32 1, i32* %33, align 4
  br label %147

147:                                              ; preds = %145, %56
  %148 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mda_get_range(i32, i32*, i32*, i32*) #2

declare dso_local i32 @ArrayGetNItems(i32, i32*) #2

declare dso_local i32 @att_align_nominal(i32, i8 signext) #2

declare dso_local i32 @ArrayGetOffset(i32, i32*, i32*, i32*) #2

declare dso_local i8* @array_seek(i8*, i32, i32*, i32, i32, i32, i8 signext) #2

declare dso_local i32 @mda_get_prod(i32, i32*, i32*) #2

declare dso_local i32 @mda_get_offset_values(i32, i32*, i32*, i32*) #2

declare dso_local i32 @array_get_isnull(i32*, i32) #2

declare dso_local i32 @att_addlength_pointer(i32, i32, i8*) #2

declare dso_local i32 @mda_next_tuple(i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
