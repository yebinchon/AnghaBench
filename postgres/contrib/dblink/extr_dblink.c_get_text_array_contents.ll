; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_text_array_contents.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_get_text_array_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXTOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i32*, i32*)* @get_text_array_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @get_text_array_contents(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @ARR_NDIM(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @ARR_DIMS(i32* %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @ARR_ELEMTYPE(i32* %20)
  %22 = load i64, i64* @TEXTOID, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @ArrayGetNItems(i32 %26, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @ARR_ELEMTYPE(i32* %30)
  %32 = call i32 @get_typlenbyvalalign(i64 %31, i32* %8, i32* %9, i8* %10)
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @palloc(i32 %36)
  %38 = inttoptr i64 %37 to i8**
  store i8** %38, i8*** %11, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i8* @ARR_DATA_PTR(i32* %39)
  store i8* %40, i8** %12, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32* @ARR_NULLBITMAP(i32* %41)
  store i32* %42, i32** %13, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %90, %2
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %93

47:                                               ; preds = %43
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %14, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i8**, i8*** %11, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* null, i8** %60, align 8
  br label %77

61:                                               ; preds = %50, %47
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @PointerGetDatum(i8* %62)
  %64 = call i8* @TextDatumGetCString(i32 %63)
  %65 = load i8**, i8*** %11, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %64, i8** %68, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = call i8* @att_addlength_pointer(i8* %69, i32 %70, i8* %71)
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i8, i8* %10, align 1
  %75 = call i64 @att_align_nominal(i8* %73, i8 signext %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %12, align 8
  br label %77

77:                                               ; preds = %61, %56
  %78 = load i32*, i32** %13, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = shl i32 %81, 1
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %83, 256
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %13, align 8
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %85, %80
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %43

93:                                               ; preds = %43
  %94 = load i8**, i8*** %11, align 8
  ret i8** %94
}

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32*) #1

declare dso_local i32 @get_typlenbyvalalign(i64, i32*, i32*, i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @ARR_DATA_PTR(i32*) #1

declare dso_local i32* @ARR_NULLBITMAP(i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i8* @att_addlength_pointer(i8*, i32, i8*) #1

declare dso_local i64 @att_align_nominal(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
