; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_external_files.c_filter_subidx.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_external_files.c_filter_subidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subfn = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".sub\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subfn**, i32*)* @filter_subidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_subidx(%struct.subfn** %0, i32* %1) #0 {
  %3 = alloca %struct.subfn**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.subfn** %0, %struct.subfn*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %52, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %9
  %15 = load %struct.subfn**, %struct.subfn*** %3, align 8
  %16 = load %struct.subfn*, %struct.subfn** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.subfn, %struct.subfn* %16, i64 %18
  %20 = getelementptr inbounds %struct.subfn, %struct.subfn* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @case_endswith(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %5, align 8
  br label %51

27:                                               ; preds = %14
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @case_endswith(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = sub nsw i64 %38, 4
  %40 = call i64 @strncmp(i8* %35, i8* %36, i64 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.subfn**, %struct.subfn*** %3, align 8
  %44 = load %struct.subfn*, %struct.subfn** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.subfn, %struct.subfn* %44, i64 %46
  %48 = getelementptr inbounds %struct.subfn, %struct.subfn* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %34, %31
  br label %50

50:                                               ; preds = %49, %27
  br label %51

51:                                               ; preds = %50, %25
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %9

55:                                               ; preds = %9
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %79, %55
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load %struct.subfn**, %struct.subfn*** %3, align 8
  %64 = load %struct.subfn*, %struct.subfn** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.subfn, %struct.subfn* %64, i64 %66
  %68 = getelementptr inbounds %struct.subfn, %struct.subfn* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.subfn**, %struct.subfn*** %3, align 8
  %73 = load %struct.subfn*, %struct.subfn** %72, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @MP_TARRAY_REMOVE_AT(%struct.subfn* %73, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %62
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %8, align 4
  br label %59

82:                                               ; preds = %59
  ret void
}

declare dso_local i64 @case_endswith(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.subfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
