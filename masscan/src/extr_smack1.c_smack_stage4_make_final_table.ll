; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_stage4_make_final_table.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_stage4_make_final_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { i32, i8*, i32, i64*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: out of memory error\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"smack\00", align 1
@ALPHABET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SMACK*)* @smack_stage4_make_final_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_stage4_make_final_table(%struct.SMACK* %0) #0 {
  %2 = alloca %struct.SMACK*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.SMACK* %0, %struct.SMACK** %2, align 8
  %11 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %12 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %15 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %18 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @row_shift_from_symbol_count(i32 %19)
  %21 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %22 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %24 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 %29, %31
  %33 = trunc i64 %32 to i32
  %34 = call i64* @malloc(i32 %33)
  store i64* %34, i64** %6, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = icmp eq i64* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %1
  %42 = load i64*, i64** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = mul i64 8, %44
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = mul i64 %45, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memset(i64* %42, i32 0, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %85, %41
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %81, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @ALPHABET_SIZE, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @GOTO(i32 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64*, i64** %6, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %5, align 4
  %75 = mul i32 %73, %74
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %71, i64* %80, align 8
  br label %81

81:                                               ; preds = %60
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %56

84:                                               ; preds = %56
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %3, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %51

88:                                               ; preds = %51
  %89 = load i64*, i64** %6, align 8
  %90 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %91 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %90, i32 0, i32 3
  store i64* %89, i64** %91, align 8
  ret void
}

declare dso_local i32 @row_shift_from_symbol_count(i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @GOTO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
