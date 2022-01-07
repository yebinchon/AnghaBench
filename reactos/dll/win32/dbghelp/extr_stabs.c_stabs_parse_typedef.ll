; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_parse_typedef.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_parse_typedef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.ParseTypedefData = type { i32, i8*, %struct.TYPE_2__*, i64, %struct.module* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.symt = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s => %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Failure on %s at %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i8*, i8*)* @stabs_parse_typedef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stabs_parse_typedef(%struct.module* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ParseTypedefData, align 8
  %9 = alloca %struct.symt*, align 8
  %10 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 -1, i32* %10, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @debugstr_a(i8* %12)
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %13)
  %15 = load %struct.module*, %struct.module** %5, align 8
  %16 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 4
  store %struct.module* %15, %struct.module** %16, align 8
  %17 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  %20 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  br label %21

21:                                               ; preds = %38, %3
  %22 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = call i8* @strchr(i8* %24, i8 signext 58)
  %26 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %31, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 58
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %21
  br label %39

38:                                               ; preds = %30
  br label %21

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 40
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 40
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %60, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %8, i8* %64, %struct.symt** %9)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %39
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69, %66
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @debugstr_a(i8* %76)
  %78 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @debugstr_a(i8* %79)
  %81 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %69
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %75
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @stabs_pts_read_type_def(%struct.ParseTypedefData*, i8*, %struct.symt**) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
