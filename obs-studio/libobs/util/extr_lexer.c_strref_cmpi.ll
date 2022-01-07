; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_lexer.c_strref_cmpi.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_lexer.c_strref_cmpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strref = type { i64, i8* }

@astrblank = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strref_cmpi(%struct.strref* %0, i8* %1) #0 {
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
  br label %85

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

30:                                               ; preds = %82, %29
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.strref*, %struct.strref** %4, align 8
  %33 = getelementptr inbounds %struct.strref, %struct.strref* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.strref*, %struct.strref** %4, align 8
  %38 = getelementptr inbounds %struct.strref, %struct.strref* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @toupper(i8 signext %42)
  %44 = trunc i64 %43 to i8
  %45 = sext i8 %44 to i32
  br label %47

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %36
  %48 = phi i32 [ %45, %36 ], [ 0, %46 ]
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %7, align 1
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @toupper(i8 signext %51)
  %53 = trunc i64 %52 to i8
  store i8 %53, i8* %8, align 1
  %54 = load i8, i8* %7, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %85

60:                                               ; preds = %47
  %61 = load i8, i8* %7, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* %8, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %85

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %6, align 8
  %72 = load %struct.strref*, %struct.strref** %4, align 8
  %73 = getelementptr inbounds %struct.strref, %struct.strref* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %5, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %76, %69
  %83 = phi i1 [ false, %69 ], [ %81, %76 ]
  br i1 %83, label %30, label %84

84:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %66, %59, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @strref_is_empty(%struct.strref*) #1

declare dso_local i64 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
