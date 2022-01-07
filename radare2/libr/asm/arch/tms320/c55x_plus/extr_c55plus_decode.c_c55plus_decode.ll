; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_c55plus_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_c55plus_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ins_buff_len = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c" || \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @c55plus_decode(i64 %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @ins_buff_len, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %114

20:                                               ; preds = %2
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @get_ins_part(i64 %21, i32 1)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 240
  %25 = icmp eq i32 %24, 48
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 15
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 15
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %26
  br label %36

35:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %100

39:                                               ; preds = %36
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i8* @do_decode(i64 1, i64 %40, i32 %41, i64* %8, i32* %10, i32* %15)
  store i8* %42, i8** %11, align 8
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @free(i8* %46)
  store i8* null, i8** %3, align 8
  br label %114

48:                                               ; preds = %39
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, 1
  %51 = load i64, i64* %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @do_decode(i64 %50, i64 %51, i32 %52, i64* %9, i32* null, i32* %15)
  store i8* %53, i8** %12, align 8
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @free(i8* %59)
  store i8* null, i8** %3, align 8
  br label %114

61:                                               ; preds = %48
  %62 = load i64, i64* %9, align 8
  %63 = load i64*, i64** %5, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 240
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 241
  br i1 %68, label %69, label %77

69:                                               ; preds = %66, %61
  %70 = load i8*, i8** %12, align 8
  %71 = call i8* @strcat_dup(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i8* @strcat_dup(i8* %72, i8* %73, i32 1)
  store i8* %74, i8** %14, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @free(i8* %75)
  br label %85

77:                                               ; preds = %66
  %78 = load i8*, i8** %11, align 8
  %79 = call i8* @strcat_dup(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i8* @strcat_dup(i8* %80, i8* %81, i32 1)
  store i8* %82, i8** %14, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %77, %69
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %86, %87
  %89 = add nsw i64 %88, 1
  %90 = load i64*, i64** %5, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64*, i64** %5, align 8
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %92, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  store i32 -1, i32* %15, align 4
  %97 = load i8*, i8** %14, align 8
  %98 = call i32 @free(i8* %97)
  store i8* null, i8** %3, align 8
  br label %114

99:                                               ; preds = %85
  br label %112

100:                                              ; preds = %36
  %101 = load i64, i64* %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i8* @do_decode(i64 0, i64 %101, i32 %102, i64* %8, i32* %10, i32* %15)
  store i8* %103, i8** %14, align 8
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @free(i8* %107)
  store i8* null, i8** %3, align 8
  br label %114

109:                                              ; preds = %100
  %110 = load i64, i64* %8, align 8
  %111 = load i64*, i64** %5, align 8
  store i64 %110, i64* %111, align 8
  br label %112

112:                                              ; preds = %109, %99
  %113 = load i8*, i8** %14, align 8
  store i8* %113, i8** %3, align 8
  br label %114

114:                                              ; preds = %112, %106, %96, %56, %45, %19
  %115 = load i8*, i8** %3, align 8
  ret i8* %115
}

declare dso_local i32 @get_ins_part(i64, i32) #1

declare dso_local i8* @do_decode(i64, i64, i32, i64*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strcat_dup(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
