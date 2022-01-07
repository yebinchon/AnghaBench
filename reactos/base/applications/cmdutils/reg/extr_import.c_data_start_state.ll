; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_data_start_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_data_start_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }

@DELETE_VALUE = common dso_local global i32 0, align 4
@DATA_TYPE = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8*)* @data_start_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @data_start_state(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %6, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 9
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ true, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  br label %9

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 61
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %98

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %45, %30
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 9
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ true, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  br label %33

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strlenW(i8* %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %76, %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp ugt i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sub i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 9
  br label %72

72:                                               ; preds = %63, %54
  %73 = phi i1 [ true, %54 ], [ %71, %63 ]
  br label %74

74:                                               ; preds = %72, %51
  %75 = phi i1 [ false, %51 ], [ %73, %72 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %7, align 4
  br label %51

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 0, i8* %83, align 1
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.parser*, %struct.parser** %4, align 8
  %90 = load i32, i32* @DELETE_VALUE, align 4
  %91 = call i32 @set_state(%struct.parser* %89, i32 %90)
  br label %96

92:                                               ; preds = %79
  %93 = load %struct.parser*, %struct.parser** %4, align 8
  %94 = load i32, i32* @DATA_TYPE, align 4
  %95 = call i32 @set_state(%struct.parser* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i8*, i8** %6, align 8
  store i8* %97, i8** %3, align 8
  br label %103

98:                                               ; preds = %29
  %99 = load %struct.parser*, %struct.parser** %4, align 8
  %100 = load i32, i32* @LINE_START, align 4
  %101 = call i32 @set_state(%struct.parser* %99, i32 %100)
  %102 = load i8*, i8** %6, align 8
  store i8* %102, i8** %3, align 8
  br label %103

103:                                              ; preds = %98, %96
  %104 = load i8*, i8** %3, align 8
  ret i8* %104
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
