; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_add_term_osd_bar.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_add_term_osd_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.MPOpts* }
%struct.MPOpts = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"\0D%.*s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, i8**, i32)* @add_term_osd_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_term_osd_bar(%struct.MPContext* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MPOpts*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = load %struct.MPOpts*, %struct.MPOpts** %15, align 8
  store %struct.MPOpts* %16, %struct.MPOpts** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %93

20:                                               ; preds = %3
  %21 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %22 = call i32 @get_current_pos_ratio(%struct.MPContext* %21, i32 0)
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 3
  %25 = mul nsw i32 %22, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 3
  %29 = call i32 @MPCLAMP(i32 %26, i32 0, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.MPOpts*, %struct.MPOpts** %7, align 8
  %31 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bstr0(i32 %32)
  store i32 %33, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %43, %20
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 5
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @bstr_split_utf8(i32 %38, i32* %9)
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %34

46:                                               ; preds = %34
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = call i32 @BSTR_P(i32 %49)
  %51 = call i32 @saddf(i8** %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %62, %46
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @BSTR_P(i32 %59)
  %61 = call i32 @saddf(i8** %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @BSTR_P(i32 %68)
  %70 = call i32 @saddf(i8** %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %84, %65
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 3
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %74, %75
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @BSTR_P(i32 %81)
  %83 = call i32 @saddf(i8** %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %71

87:                                               ; preds = %71
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  %90 = load i32, i32* %89, align 16
  %91 = call i32 @BSTR_P(i32 %90)
  %92 = call i32 @saddf(i8** %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %19
  ret void
}

declare dso_local i32 @get_current_pos_ratio(%struct.MPContext*, i32) #1

declare dso_local i32 @MPCLAMP(i32, i32, i32) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i32 @bstr_split_utf8(i32, i32*) #1

declare dso_local i32 @saddf(i8**, i8*, i32) #1

declare dso_local i32 @BSTR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
