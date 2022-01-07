; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_extract_slice.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_extract_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXDIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, i8*, i32*, i32*, i32*, i32, i32, i8)* @array_extract_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_extract_slice(i32* %0, i32 %1, i32* %2, i32* %3, i8* %4, i32* %5, i32* %6, i32* %7, i32 %8, i32 %9, i8 signext %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i8 %10, i8* %22, align 1
  %36 = load i32*, i32** %12, align 8
  %37 = call i8* @ARR_DATA_PTR(i32* %36)
  store i8* %37, i8** %23, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32* @ARR_NULLBITMAP(i32* %38)
  store i32* %39, i32** %24, align 8
  %40 = load i32, i32* @MAXDIM, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %28, align 8
  %43 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %29, align 8
  %44 = load i32, i32* @MAXDIM, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %30, align 8
  %47 = load i32, i32* @MAXDIM, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %31, align 8
  %50 = load i32, i32* @MAXDIM, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %32, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = call i32 @ArrayGetOffset(i32 %53, i32* %54, i32* %55, i32* %56)
  store i32 %57, i32* %26, align 4
  %58 = load i8*, i8** %16, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load i32, i32* %26, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i8, i8* %22, align 1
  %64 = call i8* @array_seek(i8* %58, i32 0, i32* %59, i32 %60, i32 %61, i32 %62, i8 signext %63)
  store i8* %64, i8** %25, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @mda_get_prod(i32 %65, i32* %66, i32* %43)
  %68 = load i32, i32* %13, align 4
  %69 = load i32*, i32** %18, align 8
  %70 = load i32*, i32** %19, align 8
  %71 = call i32 @mda_get_range(i32 %68, i32* %46, i32* %69, i32* %70)
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @mda_get_offset_values(i32 %72, i32* %49, i32* %43, i32* %46)
  store i32 0, i32* %33, align 4
  br label %74

74:                                               ; preds = %82, %11
  %75 = load i32, i32* %33, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %33, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %52, i64 %80
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %33, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %33, align 4
  br label %74

85:                                               ; preds = %74
  store i32 0, i32* %27, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %34, align 4
  br label %88

88:                                               ; preds = %142, %85
  %89 = load i32, i32* %34, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %49, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load i8*, i8** %25, align 8
  %96 = load i32, i32* %26, align 4
  %97 = load i32*, i32** %17, align 8
  %98 = load i32, i32* %34, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %49, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %21, align 4
  %104 = load i8, i8* %22, align 1
  %105 = call i8* @array_seek(i8* %95, i32 %96, i32* %97, i32 %101, i32 %102, i32 %103, i8 signext %104)
  store i8* %105, i8** %25, align 8
  %106 = load i32, i32* %34, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %49, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %26, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %26, align 4
  br label %112

112:                                              ; preds = %94, %88
  %113 = load i8*, i8** %23, align 8
  %114 = load i8*, i8** %25, align 8
  %115 = load i32, i32* %26, align 4
  %116 = load i32*, i32** %17, align 8
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i8, i8* %22, align 1
  %120 = call i32 @array_copy(i8* %113, i32 1, i8* %114, i32 %115, i32* %116, i32 %117, i32 %118, i8 signext %119)
  store i32 %120, i32* %35, align 4
  %121 = load i32*, i32** %24, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %112
  %124 = load i32*, i32** %24, align 8
  %125 = load i32, i32* %27, align 4
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* %26, align 4
  %128 = call i32 @array_bitmap_copy(i32* %124, i32 %125, i32* %126, i32 %127, i32 1)
  br label %129

129:                                              ; preds = %123, %112
  %130 = load i32, i32* %35, align 4
  %131 = load i8*, i8** %23, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %23, align 8
  %134 = load i32, i32* %35, align 4
  %135 = load i8*, i8** %25, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %25, align 8
  %138 = load i32, i32* %26, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %26, align 4
  %140 = load i32, i32* %27, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %27, align 4
  br label %142

142:                                              ; preds = %129
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @mda_next_tuple(i32 %143, i32* %52, i32* %46)
  store i32 %144, i32* %34, align 4
  %145 = icmp ne i32 %144, -1
  br i1 %145, label %88, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %147)
  ret void
}

declare dso_local i8* @ARR_DATA_PTR(i32*) #1

declare dso_local i32* @ARR_NULLBITMAP(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ArrayGetOffset(i32, i32*, i32*, i32*) #1

declare dso_local i8* @array_seek(i8*, i32, i32*, i32, i32, i32, i8 signext) #1

declare dso_local i32 @mda_get_prod(i32, i32*, i32*) #1

declare dso_local i32 @mda_get_range(i32, i32*, i32*, i32*) #1

declare dso_local i32 @mda_get_offset_values(i32, i32*, i32*, i32*) #1

declare dso_local i32 @array_copy(i8*, i32, i8*, i32, i32*, i32, i32, i8 signext) #1

declare dso_local i32 @array_bitmap_copy(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @mda_next_tuple(i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
