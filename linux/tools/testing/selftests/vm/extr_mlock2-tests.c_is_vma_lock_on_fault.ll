; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_is_vma_lock_on_fault.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_is_vma_lock_on_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to parse /proc/self/smaps\0A\00", align 1
@SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%lu kB\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to parse smaps entry for Size\0A\00", align 1
@RSS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to parse smaps entry for Rss\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @is_vma_lock_on_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_vma_lock_on_fault(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i32, i32* @LOCKED, align 4
  %13 = call i32 @is_vmflag_set(i64 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %84

17:                                               ; preds = %1
  %18 = load i64, i64* %2, align 8
  %19 = call i32* @seek_to_smaps_entry(i64 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %84

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %34, %24
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @getline(i8** %8, i64* %10, i32* %26)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @SIZE, align 4
  %32 = call i32 @strstr(i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @free(i8* %35)
  store i8* null, i8** %8, align 8
  store i64 0, i64* %10, align 8
  br label %25

37:                                               ; preds = %29
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @SIZE, align 4
  %40 = call i32 @strlen(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @sscanf(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %6)
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %84

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %25
  br label %50

50:                                               ; preds = %59, %49
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @getline(i8** %8, i64* %10, i32* %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* @RSS, align 4
  %57 = call i32 @strstr(i8* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @free(i8* %60)
  store i8* null, i8** %8, align 8
  store i64 0, i64* %10, align 8
  br label %50

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* @RSS, align 4
  %65 = call i32 @strlen(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @sscanf(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %7)
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %84

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp ult i64 %78, %79
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i1 [ false, %74 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %71, %46, %22, %16
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @fclose(i32* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @is_vmflag_set(i64, i32) #1

declare dso_local i32* @seek_to_smaps_entry(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strstr(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
