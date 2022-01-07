; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_scan_is_potential_name.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_scan_is_potential_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_pattern = type { i8*, i64, %struct.simple_pattern* }

@SIMPLE_PATTERN_EXACT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.simple_pattern*, i32*, i32*, i32*)* @scan_is_potential_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_is_potential_name(%struct.simple_pattern* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.simple_pattern*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.simple_pattern* %0, %struct.simple_pattern** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  br label %10

10:                                               ; preds = %87, %30, %4
  %11 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %12 = icmp ne %struct.simple_pattern* %11, null
  br i1 %12, label %13, label %88

13:                                               ; preds = %10
  %14 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %15 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %87

18:                                               ; preds = %13
  %19 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %20 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SIMPLE_PATTERN_EXACT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %26 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %32 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %31, i32 0, i32 2
  %33 = load %struct.simple_pattern*, %struct.simple_pattern** %32, align 8
  store %struct.simple_pattern* %33, %struct.simple_pattern** %5, align 8
  br label %10

34:                                               ; preds = %24, %18
  %35 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %36 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %72, %34
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 97
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 122
  br i1 %52, label %63, label %53

53:                                               ; preds = %48, %43
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 65
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 90
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %48
  %64 = load i32*, i32** %6, align 8
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %58, %53
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 58
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32*, i32** %7, align 8
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  br label %38

75:                                               ; preds = %38
  %76 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %77 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SIMPLE_PATTERN_EXACT, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32*, i32** %8, align 8
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %75
  %84 = load %struct.simple_pattern*, %struct.simple_pattern** %5, align 8
  %85 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %84, i32 0, i32 2
  %86 = load %struct.simple_pattern*, %struct.simple_pattern** %85, align 8
  store %struct.simple_pattern* %86, %struct.simple_pattern** %5, align 8
  br label %87

87:                                               ; preds = %83, %13
  br label %10

88:                                               ; preds = %10
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
