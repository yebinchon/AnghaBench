; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_array_dim_to_json.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_array_dim_to_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c",\0A \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32)* @array_dim_to_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_dim_to_json(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* %20, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  store i8* %31, i8** %22, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @appendStringInfoChar(i32 %32, i8 signext 91)
  store i32 1, i32* %21, align 4
  br label %34

34:                                               ; preds = %86, %10
  %35 = load i32, i32* %21, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %35, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %34
  %43 = load i32, i32* %21, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = load i8*, i8** %22, align 8
  %48 = call i32 @appendStringInfoString(i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load i32*, i32** %15, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %16, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @datum_to_json(i32 %60, i32 %66, i32 %67, i32 %68, i32 %69, i32 0)
  %71 = load i32*, i32** %17, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %85

74:                                               ; preds = %49
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  call void @array_dim_to_json(i32 %75, i32 %77, i32 %78, i32* %79, i32* %80, i32* %81, i32* %82, i32 %83, i32 %84, i32 0)
  br label %85

85:                                               ; preds = %74, %54
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %21, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %21, align 4
  br label %34

89:                                               ; preds = %34
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @appendStringInfoChar(i32 %90, i8 signext 93)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @datum_to_json(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
