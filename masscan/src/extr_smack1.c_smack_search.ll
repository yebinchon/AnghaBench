; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_search.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { i8*, i64*, i32, %struct.SmackMatches* }
%struct.SmackMatches = type { i8*, i64 }

@print_transitions = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smack_search(%struct.SMACK* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.SMACK*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.SmackMatches*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store %struct.SMACK* %0, %struct.SMACK** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %13, align 8
  %24 = load %struct.SMACK*, %struct.SMACK** %7, align 8
  %25 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %16, align 8
  %27 = load %struct.SMACK*, %struct.SMACK** %7, align 8
  %28 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %17, align 8
  %30 = load %struct.SMACK*, %struct.SMACK** %7, align 8
  %31 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %33 = load %struct.SMACK*, %struct.SMACK** %7, align 8
  %34 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %33, i32 0, i32 3
  %35 = load %struct.SmackMatches*, %struct.SmackMatches** %34, align 8
  store %struct.SmackMatches* %35, %struct.SmackMatches** %20, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 16777215
  store i32 %38, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %81, %6
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %39
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %22, align 1
  %49 = load i8*, i8** %16, align 8
  %50 = load i8, i8* %22, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %21, align 1
  %54 = load i64*, i64** %17, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %18, align 4
  %57 = shl i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %54, i64 %58
  %60 = load i8, i8* %21, align 1
  %61 = zext i8 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %14, align 4
  %66 = load %struct.SmackMatches*, %struct.SmackMatches** %20, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %66, i64 %68
  %70 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %43
  %74 = load %struct.SMACK*, %struct.SMACK** %7, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @handle_match(%struct.SMACK* %74, i32 %75, i32 %76, i8* %77, i32 %78)
  store i32 %79, i32* %19, align 4
  br label %80

80:                                               ; preds = %73, %43
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %15, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %39

84:                                               ; preds = %39
  %85 = load i32, i32* %14, align 4
  %86 = load i32*, i32** %12, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %19, align 4
  ret i32 %87
}

declare dso_local i32 @handle_match(%struct.SMACK*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
