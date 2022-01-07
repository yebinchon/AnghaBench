; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c_outDatum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c_outDatum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%u [ \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0 [ ]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outDatum(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @datumGetSize(i32 %12, i32 %13, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = bitcast i32* %6 to i8*
  store i8* %19, i8** %11, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @appendStringInfo(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %35, %18
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @appendStringInfo(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @appendStringInfoChar(i32 %39, i8 signext 93)
  br label %75

41:                                               ; preds = %4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @DatumGetPointer(i32 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @PointerIsValid(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @appendStringInfoString(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %74

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @appendStringInfo(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i64 0, i64* %10, align 8
  br label %56

56:                                               ; preds = %68, %51
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 @appendStringInfo(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %60
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %56

71:                                               ; preds = %56
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @appendStringInfoChar(i32 %72, i8 signext 93)
  br label %74

74:                                               ; preds = %71, %48
  br label %75

75:                                               ; preds = %74, %38
  ret void
}

declare dso_local i64 @datumGetSize(i32, i32, i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @PointerIsValid(i8*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
