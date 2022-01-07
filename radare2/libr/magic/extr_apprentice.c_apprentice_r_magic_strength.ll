; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_apprentice_r_magic_strength.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_apprentice_r_magic_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_magic = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Bad type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Bad relation %c\0A\00", align 1
@MULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.r_magic*)* @apprentice_r_magic_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @apprentice_r_magic_strength(%struct.r_magic* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.r_magic*, align 8
  %4 = alloca i64, align 8
  store %struct.r_magic* %0, %struct.r_magic** %3, align 8
  store i64 20, i64* %4, align 8
  %5 = load %struct.r_magic*, %struct.r_magic** %3, align 8
  %6 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %54 [
    i32 153, label %8
    i32 155, label %9
    i32 129, label %12
    i32 141, label %12
    i32 157, label %12
    i32 139, label %15
    i32 145, label %15
    i32 161, label %15
    i32 136, label %15
    i32 135, label %18
    i32 128, label %18
    i32 156, label %26
    i32 140, label %26
    i32 130, label %35
    i32 131, label %35
    i32 154, label %48
    i32 149, label %48
    i32 165, label %48
    i32 138, label %48
    i32 150, label %48
    i32 146, label %48
    i32 162, label %48
    i32 137, label %48
    i32 151, label %48
    i32 163, label %48
    i32 147, label %48
    i32 132, label %51
    i32 158, label %51
    i32 142, label %51
    i32 134, label %51
    i32 144, label %51
    i32 160, label %51
    i32 133, label %51
    i32 143, label %51
    i32 159, label %51
    i32 152, label %51
    i32 164, label %51
    i32 148, label %51
  ]

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %88

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %10, 10
  store i64 %11, i64* %4, align 8
  br label %60

12:                                               ; preds = %1, %1, %1
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 20
  store i64 %14, i64* %4, align 8
  br label %60

15:                                               ; preds = %1, %1, %1, %1
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %16, 40
  store i64 %17, i64* %4, align 8
  br label %60

18:                                               ; preds = %1, %1
  %19 = load %struct.r_magic*, %struct.r_magic** %3, align 8
  %20 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 10
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %4, align 8
  br label %60

26:                                               ; preds = %1, %1
  %27 = load %struct.r_magic*, %struct.r_magic** %3, align 8
  %28 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 10
  %31 = sdiv i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %60

35:                                               ; preds = %1, %1
  %36 = load %struct.r_magic*, %struct.r_magic** %3, align 8
  %37 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.r_magic*, %struct.r_magic** %3, align 8
  %41 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 10, %42
  %44 = call i64 @R_MAX(i32 %43, i32 1)
  %45 = mul i64 %39, %44
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %4, align 8
  br label %60

48:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 40
  store i64 %50, i64* %4, align 8
  br label %60

51:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %52 = load i64, i64* %4, align 8
  %53 = add i64 %52, 80
  store i64 %53, i64* %4, align 8
  br label %60

54:                                               ; preds = %1
  %55 = load %struct.r_magic*, %struct.r_magic** %3, align 8
  %56 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @eprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = call i32 (...) @abort() #3
  unreachable

60:                                               ; preds = %51, %48, %35, %26, %18, %15, %12, %9
  %61 = load %struct.r_magic*, %struct.r_magic** %3, align 8
  %62 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %74 [
    i32 120, label %64
    i32 33, label %64
    i32 61, label %65
    i32 62, label %68
    i32 60, label %68
    i32 94, label %71
    i32 38, label %71
  ]

64:                                               ; preds = %60, %60
  store i64 0, i64* %4, align 8
  br label %80

65:                                               ; preds = %60
  %66 = load i64, i64* %4, align 8
  %67 = add i64 %66, 10
  store i64 %67, i64* %4, align 8
  br label %80

68:                                               ; preds = %60, %60
  %69 = load i64, i64* %4, align 8
  %70 = sub i64 %69, 20
  store i64 %70, i64* %4, align 8
  br label %80

71:                                               ; preds = %60, %60
  %72 = load i64, i64* %4, align 8
  %73 = sub i64 %72, 10
  store i64 %73, i64* %4, align 8
  br label %80

74:                                               ; preds = %60
  %75 = load %struct.r_magic*, %struct.r_magic** %3, align 8
  %76 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @eprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = call i32 (...) @abort() #3
  unreachable

80:                                               ; preds = %71, %68, %65, %64
  %81 = load i64, i64* %4, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i64, i64* %4, align 8
  br label %86

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i64 [ %84, %83 ], [ 1, %85 ]
  store i64 %87, i64* %2, align 8
  br label %88

88:                                               ; preds = %86, %8
  %89 = load i64, i64* %2, align 8
  ret i64 %89
}

declare dso_local i64 @R_MAX(i32, i32) #1

declare dso_local i32 @eprintf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
