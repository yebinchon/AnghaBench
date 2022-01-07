; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_lexer.c_strref_cmp.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_lexer.c_strref_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strref = type { i64, i8* }

@astrblank = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strref_cmp(%struct.strref* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strref*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.strref* %0, %struct.strref** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.strref*, %struct.strref** %4, align 8
  %10 = call i64 @strref_is_empty(%struct.strref* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ true, %12 ], [ %19, %15 ]
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 -1
  store i32 %23, i32* %3, align 4
  br label %81

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @astrblank, align 8
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %78, %29
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.strref*, %struct.strref** %4, align 8
  %33 = getelementptr inbounds %struct.strref, %struct.strref* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.strref*, %struct.strref** %4, align 8
  %38 = getelementptr inbounds %struct.strref, %struct.strref* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  br label %45

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %36
  %46 = phi i32 [ %43, %36 ], [ 0, %44 ]
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %7, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %8, align 1
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* %8, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %81

56:                                               ; preds = %45
  %57 = load i8, i8* %7, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* %8, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %81

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  %68 = load %struct.strref*, %struct.strref** %4, align 8
  %69 = getelementptr inbounds %struct.strref, %struct.strref* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %5, align 8
  %75 = load i8, i8* %73, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %72, %65
  %79 = phi i1 [ false, %65 ], [ %77, %72 ]
  br i1 %79, label %30, label %80

80:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %62, %55, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @strref_is_empty(%struct.strref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
