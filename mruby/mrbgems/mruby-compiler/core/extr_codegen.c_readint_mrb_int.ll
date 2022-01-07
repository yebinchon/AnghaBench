; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_readint_mrb_int.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_readint_mrb_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mrb_digitmap = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"malformed readint input\00", align 1
@MRB_INT_MIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MRB_INT_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i64, i64*)* @readint_mrb_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readint_mrb_int(i32* %0, i8* %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %24, 36
  br label %26

26:                                               ; preds = %23, %5
  %27 = phi i1 [ false, %5 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @mrb_assert(i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %112, %37
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %115

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %15, align 1
  %45 = load i8, i8* %15, align 1
  %46 = call signext i8 @tolower(i8 zeroext %45)
  store i8 %46, i8* %15, align 1
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %63, %42
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i8*, i8** @mrb_digitmap, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* %15, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %47

66:                                               ; preds = %61, %47
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @codegen_error(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load i32, i32* @MRB_INT_MIN, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32, i32* %13, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i64, i64* @TRUE, align 8
  %86 = load i64*, i64** %11, align 8
  store i64 %85, i64* %86, align 8
  store i32 0, i32* %6, align 4
  br label %119

87:                                               ; preds = %76
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %13, align 4
  %90 = mul nsw i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %13, align 4
  br label %112

94:                                               ; preds = %73
  %95 = load i32, i32* @MRB_INT_MAX, align 4
  %96 = load i32, i32* %14, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = sdiv i32 %97, %98
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i64, i64* @TRUE, align 8
  %104 = load i64*, i64** %11, align 8
  store i64 %103, i64* %104, align 8
  store i32 0, i32* %6, align 4
  br label %119

105:                                              ; preds = %94
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %13, align 4
  %108 = mul nsw i32 %107, %106
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %105, %87
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %8, align 8
  br label %38

115:                                              ; preds = %38
  %116 = load i64, i64* @FALSE, align 8
  %117 = load i64*, i64** %11, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %102, %84
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

declare dso_local i32 @codegen_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
