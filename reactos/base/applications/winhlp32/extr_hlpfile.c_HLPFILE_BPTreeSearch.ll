; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_BPTreeSearch.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_BPTreeSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Invalid magic in B+ tree: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32 (i8*, i8*, i32, i8**)*)* @HLPFILE_BPTreeSearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @HLPFILE_BPTreeSearch(i8* %0, i8* %1, i32 (i8*, i8*, i32, i8**)* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*, i32, i8**)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*, i32, i8**)* %2, i32 (i8*, i8*, i32, i8**)** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @GET_USHORT(i8* %18, i32 9)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 10555
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @WINE_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i8* null, i8** %4, align 8
  br label %104

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @GET_USHORT(i8* %26, i32 13)
  store i32 %27, i32* %9, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @GET_USHORT(i8* %28, i32 35)
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @GET_USHORT(i8* %30, i32 41)
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr i8, i8* %32, i64 9
  %34 = getelementptr i8, i8* %33, i64 38
  store i8* %34, i8** %12, align 8
  br label %35

35:                                               ; preds = %66, %25
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %11, align 4
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %35
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = mul i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr i8, i8* %40, i64 %44
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @GET_SHORT(i8* %46, i32 2)
  store i32 %47, i32* %16, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr i8, i8* %48, i64 6
  store i8* %49, i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %63, %39
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32 (i8*, i8*, i32, i8**)*, i32 (i8*, i8*, i32, i8**)** %7, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 %55(i8* %56, i8* %57, i32 0, i8** %14)
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %66

61:                                               ; preds = %54
  %62 = load i8*, i8** %14, align 8
  store i8* %62, i8** %13, align 8
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %50

66:                                               ; preds = %60, %50
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr i8, i8* %67, i64 -2
  %69 = call i32 @GET_USHORT(i8* %68, i32 0)
  store i32 %69, i32* %10, align 4
  br label %35

70:                                               ; preds = %35
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = mul i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = getelementptr i8, i8* %71, i64 %75
  store i8* %76, i8** %13, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @GET_SHORT(i8* %77, i32 2)
  store i32 %78, i32* %16, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr i8, i8* %79, i64 8
  store i8* %80, i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %100, %70
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load i32 (i8*, i8*, i32, i8**)*, i32 (i8*, i8*, i32, i8**)** %7, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 %86(i8* %87, i8* %88, i32 1, i8** %14)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i8*, i8** %13, align 8
  store i8* %93, i8** %4, align 8
  br label %104

94:                                               ; preds = %85
  %95 = load i32, i32* %17, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i8* null, i8** %4, align 8
  br label %104

98:                                               ; preds = %94
  %99 = load i8*, i8** %14, align 8
  store i8* %99, i8** %13, align 8
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %81

103:                                              ; preds = %81
  store i8* null, i8** %4, align 8
  br label %104

104:                                              ; preds = %103, %97, %92, %22
  %105 = load i8*, i8** %4, align 8
  ret i8* %105
}

declare dso_local i32 @GET_USHORT(i8*, i32) #1

declare dso_local i32 @WINE_ERR(i8*, i32) #1

declare dso_local i32 @GET_SHORT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
