; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-readrange.c_main_readrange.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-readrange.c_main_readrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.RangeList }
%struct.RangeList = type { i32, %struct.Range* }
%struct.Range = type { i32, i32 }

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"-%u.%u.%u.%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_readrange(%struct.Masscan* %0) #0 {
  %2 = alloca %struct.Masscan*, align 8
  %3 = alloca %struct.RangeList*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Range, align 4
  %7 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %2, align 8
  %8 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %9 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %8, i32 0, i32 0
  store %struct.RangeList* %9, %struct.RangeList** %3, align 8
  %10 = load i32*, i32** @stdout, align 8
  store i32* %10, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %82, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %14 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %85

17:                                               ; preds = %11
  %18 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %19 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %18, i32 0, i32 1
  %20 = load %struct.Range*, %struct.Range** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.Range, %struct.Range* %20, i64 %22
  %24 = bitcast %struct.Range* %6 to i8*
  %25 = bitcast %struct.Range* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 8, i1 false)
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 24
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 0
  %42 = and i32 %41, 255
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34, i32 %38, i32 %42)
  %44 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %17
  %50 = bitcast %struct.Range* %6 to i64*
  %51 = load i64, i64* %50, align 4
  %52 = call i32 @count_cidr_bits(i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %78

59:                                               ; preds = %49
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 24
  %64 = and i32 %63, 255
  %65 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 0
  %76 = and i32 %75, 255
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %68, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %59, %55
  br label %79

79:                                               ; preds = %78, %17
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %11

85:                                               ; preds = %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @count_cidr_bits(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
