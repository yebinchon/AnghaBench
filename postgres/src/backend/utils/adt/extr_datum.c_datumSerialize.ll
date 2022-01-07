; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datum.c_datumSerialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datum.c_datumSerialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @datumSerialize(i8 signext %0, i32 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8 %0, i8* %6, align 1
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  store i32* null, i32** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 -2, i32* %12, align 4
  br label %41

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %12, align 4
  br label %40

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i8, i8* %6, align 1
  %26 = call i8* @DatumGetPointer(i8 signext %25)
  %27 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8, i8* %6, align 1
  %31 = call i32* @DatumGetEOHP(i8 signext %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @EOH_get_flat_size(i32* %32)
  store i32 %33, i32* %12, align 4
  br label %39

34:                                               ; preds = %24, %21
  %35 = load i8, i8* %6, align 1
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @datumGetSize(i8 signext %35, i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %20
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i8**, i8*** %10, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, ...) @memcpy(i8* %43, i32* %12, i64 4)
  %45 = load i8**, i8*** %10, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  store i8* %47, i8** %45, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %97, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i8**, i8*** %10, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, ...) @memcpy(i8* %55, i8* %6, i64 1)
  %57 = load i8**, i8*** %10, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %59, i8** %57, align 8
  br label %96

60:                                               ; preds = %50
  %61 = load i32*, i32** %11, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @palloc(i32 %64)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %13, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @EOH_flatten_into(i32* %67, i8* %68, i32 %69)
  %71 = load i8**, i8*** %10, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (i8*, ...) @memcpy(i8* %72, i8* %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = load i8**, i8*** %10, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = sext i32 %76 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %77, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @pfree(i8* %81)
  br label %95

83:                                               ; preds = %60
  %84 = load i8**, i8*** %10, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i8, i8* %6, align 1
  %87 = call i8* @DatumGetPointer(i8 signext %86)
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (i8*, ...) @memcpy(i8* %85, i8* %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = load i8**, i8*** %10, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = sext i32 %90 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %91, align 8
  br label %95

95:                                               ; preds = %83, %63
  br label %96

96:                                               ; preds = %95, %53
  br label %97

97:                                               ; preds = %96, %41
  ret void
}

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(i8*) #1

declare dso_local i8* @DatumGetPointer(i8 signext) #1

declare dso_local i32* @DatumGetEOHP(i8 signext) #1

declare dso_local i32 @EOH_get_flat_size(i32*) #1

declare dso_local i32 @datumGetSize(i8 signext, i32, i32) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @EOH_flatten_into(i32*, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
