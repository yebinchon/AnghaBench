; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_lexer.c_strref_cmp_strref.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_lexer.c_strref_cmp_strref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strref = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strref_cmp_strref(%struct.strref* %0, %struct.strref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strref*, align 8
  %5 = alloca %struct.strref*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.strref* %0, %struct.strref** %4, align 8
  store %struct.strref* %1, %struct.strref** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.strref*, %struct.strref** %4, align 8
  %10 = call i64 @strref_is_empty(%struct.strref* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.strref*, %struct.strref** %5, align 8
  %14 = call i64 @strref_is_empty(%struct.strref* %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 -1
  store i32 %17, i32* %3, align 4
  br label %91

18:                                               ; preds = %2
  %19 = load %struct.strref*, %struct.strref** %5, align 8
  %20 = call i64 @strref_is_empty(%struct.strref* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %91

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %88, %23
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.strref*, %struct.strref** %4, align 8
  %27 = getelementptr inbounds %struct.strref, %struct.strref* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.strref*, %struct.strref** %4, align 8
  %32 = getelementptr inbounds %struct.strref, %struct.strref* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  br label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %30
  %40 = phi i32 [ %37, %30 ], [ 0, %38 ]
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %7, align 1
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.strref*, %struct.strref** %5, align 8
  %44 = getelementptr inbounds %struct.strref, %struct.strref* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.strref*, %struct.strref** %5, align 8
  %49 = getelementptr inbounds %struct.strref, %struct.strref* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  br label %56

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %47
  %57 = phi i32 [ %54, %47 ], [ 0, %55 ]
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %8, align 1
  %59 = load i8, i8* %7, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* %8, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %91

65:                                               ; preds = %56
  %66 = load i8, i8* %7, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* %8, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %91

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.strref*, %struct.strref** %4, align 8
  %79 = getelementptr inbounds %struct.strref, %struct.strref* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ule i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.strref*, %struct.strref** %5, align 8
  %85 = getelementptr inbounds %struct.strref, %struct.strref* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ule i64 %83, %86
  br label %88

88:                                               ; preds = %82, %76
  %89 = phi i1 [ false, %76 ], [ %87, %82 ]
  br i1 %89, label %24, label %90

90:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %71, %64, %22, %12
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @strref_is_empty(%struct.strref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
