; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_copy_matches.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_copy_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SmackMatches = type { i64*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: out of memory error\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"smack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SmackMatches*, i64*, i32)* @smack_copy_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_copy_matches(%struct.SmackMatches* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.SmackMatches*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.SmackMatches* %0, %struct.SmackMatches** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.SmackMatches*, %struct.SmackMatches** %4, align 8
  %13 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %9, align 8
  %15 = load %struct.SmackMatches*, %struct.SmackMatches** %4, align 8
  %16 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @malloc(i32 %23)
  %25 = inttoptr i64 %24 to i64*
  store i64* %25, i64** %7, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64*, i64** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %42, i64* %46, align 8
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %78, %50
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load i64*, i64** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i64*, i64** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @id_already_exists(i64* %57, i32 %58, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %56
  %67 = load i64*, i64** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 %71, i64* %76, align 8
  br label %77

77:                                               ; preds = %66, %56
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %52

81:                                               ; preds = %52
  %82 = load %struct.SmackMatches*, %struct.SmackMatches** %4, align 8
  %83 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.SmackMatches*, %struct.SmackMatches** %4, align 8
  %88 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = call i32 @free(i64* %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i64*, i64** %7, align 8
  %93 = load %struct.SmackMatches*, %struct.SmackMatches** %4, align 8
  %94 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %93, i32 0, i32 0
  store i64* %92, i64** %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.SmackMatches*, %struct.SmackMatches** %4, align 8
  %97 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @id_already_exists(i64*, i32, i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
