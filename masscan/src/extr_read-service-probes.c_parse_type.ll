; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_type.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i64, i32 }

@parse_type.name_to_types = internal constant [11 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 7, i32 138 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i64 5, i32 134 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 5, i32 136 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 9, i32 132 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 5, i32 135 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i64 8, i32 131 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 11, i32 129 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i64 12, i32 130 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i64 6, i32 133 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i64 8, i32 137 }, %struct.anon { i8* null, i64 128, i32 0 }], align 16
@.str = private unnamed_addr constant [8 x i8] c"exclude\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"softmatch\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sslports\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"totalwaitms\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"tcpwrappedms\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rarity\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"fallback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64)* @parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_type(i8* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %10, align 8
  br label %15

15:                                               ; preds = %29, %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @isspace(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %19, %15
  %28 = phi i1 [ false, %15 ], [ %26, %19 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %15

32:                                               ; preds = %27
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %49, %32
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %40, %36
  %48 = phi i1 [ false, %36 ], [ %46, %40 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %36

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = load i64*, i64** %5, align 8
  store i64 %53, i64* %54, align 8
  store i64 0, i64* %7, align 8
  br label %55

55:                                               ; preds = %82, %52
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @parse_type.name_to_types, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %85

61:                                               ; preds = %55
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @parse_type.name_to_types, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %82

69:                                               ; preds = %61
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @parse_type.name_to_types, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @strncasecmp(i8* %72, i8* %76, i64 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %85

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %68
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %55

85:                                               ; preds = %80, %55
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @parse_type.name_to_types, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
